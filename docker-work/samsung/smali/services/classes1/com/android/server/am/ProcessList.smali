.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStartHandler;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field public static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field public static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field public static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field public static final ARCHIVED_ADJ:I = 0x33e

.field public static final BACKUP_APP_ADJ:I = 0x12c

.field public static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field public static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field public static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field public static final CACHED_APP_MIN_ADJ:I = 0x384

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final HOME_APP_ADJ:I = 0x258

.field public static final INVALID_ADJ:I = -0x2710

.field public static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field public static final LMKD_REPLY_WAIT_DELAY_MS:J = 0x3e8L

.field public static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field public static final LMK_ASYNC_EVENT_STAT:I = 0x1

.field public static final LMK_CAMERAKILLBOOST:B = 0xdt

.field public static final LMK_GETKILLCNT:B = 0x4t

.field public static final LMK_KILL_OCCURRED:B = 0x8t

.field public static final LMK_LAUNCHPID:B = 0xct

.field public static final LMK_PROCKILL:B = 0x6t

.field public static final LMK_PROCPRIO:B = 0x1t

.field public static final LMK_PROCPRIOSTT:B = 0xbt

.field public static final LMK_PROCPURGE:B = 0x3t

.field public static final LMK_PROCREMOVE:B = 0x2t

.field public static final LMK_REENTRYMODE:B = 0xet

.field public static final LMK_SETPARAMETER:B = 0xat

.field public static final LMK_STATE_CHANGED:B = 0x9t

.field public static final LMK_SUBSCRIBE:B = 0x5t

.field public static final LMK_TARGET:B = 0x0t

.field public static final LMK_UPDATE_PROPS:B = 0x7t

.field public static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field public static final MIN_CACHED_APPS:I = 0x2

.field public static final NATIVE_ADJ:I = -0x3e8

.field public static final NETWORK_STATE_BLOCK:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_STATE_NO_CHANGE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_STATE_UNBLOCK:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PAGE_SIZE:I = 0x1000

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field public static final PERCEPTIBLE_MEDIUM_APP_ADJ:I = 0xe1

.field public static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final PICKED_ADJ:I = 0x352

.field public static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field public static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field public static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field public static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field public static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field public static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field public static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field public static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field public static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field public static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field public static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field public static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field public static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field public static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field public static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field public static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field public static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field public static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field public static final SCHED_FOREGROUND_BOOST:I = 0x6

.field public static final SCHED_GROUP_ABNORMAL:I = -0x2

.field public static final SCHED_GROUP_BACKGROUND:I = 0x0

.field public static final SCHED_GROUP_DEFAULT:I = 0x2

.field public static final SCHED_GROUP_MODERATE:I = 0x5

.field public static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field public static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field public static final SEEDBED_ADJ:I = 0x35c

.field public static final SERVICE_ADJ:I = 0x1f4

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_ADJ:I = -0x384

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_PROCESS_OBSERVERS:Ljava/lang/String; = "ActivityManager"

.field public static TRIM_CRITICAL_THRESHOLD:I = 0x3

.field public static TRIM_LOW_THRESHOLD:I = 0x5

.field public static final UNKNOWN_ADJ:I = 0x3e9

.field public static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field public static final VISIBLE_APP_ADJ:I = 0x64

.field public static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field public static final sFirstAsleepPssTimes:[J

.field public static final sFirstAwakePssTimes:[J

.field public static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public static sKillThread:Lcom/android/server/ServiceThread;

.field public static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field public static final sProcStateToProcMem:[I

.field public static final sSameAsleepPssTimes:[J

.field public static final sSameAwakePssTimes:[J

.field public static final sTestFirstPssTimes:[J

.field public static final sTestSamePssTimes:[J


# instance fields
.field public mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppDataIsolationEnabled:Z

.field public final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppExitInfoTracker"
        }
    .end annotation
.end field

.field public mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppsInBackgroundRestricted:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mAvailProcessChanges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcessChangeLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCachedRestoreLevel:J

.field public mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public final mDyingProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mHaveDisplaySize:Z

.field public mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field public mIsDisplayChanged:Z

.field public final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLruProcessActivityStart:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLruProcessServiceStart:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mLruProcesses:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLruSeq:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mOomAdj:[I

.field public mOomLevelsSet:Z

.field public final mOomMinFree:[I

.field public final mOomMinFreeHigh:[I

.field public final mOomMinFreeLow:[I

.field public final mPendingProcessChanges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcessChangeLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStartSeqCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mProcStateSeqCounter:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mProcessChangeLock:Ljava/lang/Object;

.field public final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mProcessObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStringBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public final mTotalMemMb:J

.field public mVoldAppDataIsolationEnabled:Z

.field public final mZygoteSigChldMessage:[I

.field public final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$HTKYW1oYWbA5nRBREe58yytwlAQ(Lcom/android/server/am/ProcessList;JLcom/android/server/am/ProcessRecord;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->lambda$killAppIfBgRestrictedAndCachedIdleLocked$4(JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NhPjD016KPllRJkIof0o79yYLVc(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ProcessList;->lambda$updateBackgroundRestrictedForUidPackageLocked$3(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yx7qOPOwpHNPdaQI_3F9XOqeTBg(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessList;->lambda$updateApplicationInfoLOSP$2(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEVoHjWPClUsVDRm3xBMVJVcgcw(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oBmDYaH718rbQmtZhkdQqDR_vGQ(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$yAUAM7lp-U4rR1kIWsGK9Z-eFWc(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;
    .registers 1

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 1447
    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 1470
    fill-array-data v1, :array_62

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v1, v0, [J

    .line 1478
    fill-array-data v1, :array_7a

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v1, v0, [J

    .line 1486
    fill-array-data v1, :array_92

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    new-array v1, v0, [J

    .line 1494
    fill-array-data v1, :array_aa

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    new-array v1, v0, [J

    .line 1502
    fill-array-data v1, :array_c2

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    new-array v0, v0, [J

    .line 1510
    fill-array-data v0, :array_da

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_36
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_62
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_7a
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_92
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_aa
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_c2
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_da
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 486
    fill-array-data v2, :array_ee

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v3, v1, [I

    .line 492
    fill-array-data v3, :array_fe

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v1, v1, [I

    .line 498
    fill-array-data v1, :array_10e

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 503
    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v1, 0x0

    .line 508
    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 510
    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 512
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 514
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 527
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 529
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 531
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    .line 548
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 554
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 562
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 581
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 588
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 594
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 603
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 609
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 615
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 621
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 628
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 631
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 648
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 653
    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 658
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 768
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 776
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 791
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 795
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 799
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 810
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 818
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 895
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 896
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 897
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 898
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_ee
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_fe
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_10e
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7

    const/16 v0, 0xa

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    const/16 v2, 0x20

    .line 1367
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 1370
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 6

    sub-int/2addr p3, p4

    if-nez p3, :cond_19

    if-eqz p5, :cond_6

    return-object p1

    :cond_6
    if-nez p2, :cond_9

    return-object p0

    .line 1238
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 p1, 0xa

    const-string p2, "+"

    if-ge p3, p1, :cond_3b

    .line 1241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2a

    goto :goto_2c

    :cond_2a
    const-string p2, "+ "

    :goto_2c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1243
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 1

    .line 1227
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .registers 10

    .line 1581
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_28

    .line 1583
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge p0, v2, :cond_e

    move v2, p0

    .line 1585
    :cond_e
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, p0

    if-ge v2, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1586
    :goto_16
    iput p0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1587
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v1, :cond_1f

    .line 1589
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_28

    .line 1591
    :cond_1f
    iget-object v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v0, v0, p0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    .line 1592
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :cond_28
    :goto_28
    if-eqz p2, :cond_32

    if-eqz v1, :cond_2f

    .line 1600
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_43

    .line 1601
    :cond_2f
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_43

    :cond_32
    if-eqz v1, :cond_3c

    if-eqz p3, :cond_39

    .line 1603
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_43

    :cond_39
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_43

    :cond_3c
    if-eqz p3, :cond_41

    .line 1604
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_43

    :cond_41
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1605
    :goto_43
    aget-wide p0, p1, p0

    long-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-long p0, p0

    const-wide/32 p2, 0x36ee80

    cmp-long v0, p0, p2

    if-lez v0, :cond_50

    move-wide p0, p2

    :cond_50
    add-long/2addr p4, p0

    return-wide p4
.end method

.method public static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    .line 5143
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5144
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    return v5

    .line 5146
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v4, p1

    .line 5147
    iget-wide v8, v4, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long/2addr v6, v8

    .line 5149
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    :goto_23
    if-ltz v4, :cond_29e

    .line 5150
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 5151
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5152
    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5153
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    invoke-static {v12, v5}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    .line 5155
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v13

    const/16 v14, 0x3f

    packed-switch v13, :pswitch_data_2a0

    :pswitch_44
    goto :goto_53

    :pswitch_45
    const/16 v14, 0x42

    goto :goto_53

    :pswitch_48
    const/16 v14, 0x54

    goto :goto_53

    :pswitch_4b
    const/16 v14, 0x46

    goto :goto_53

    :pswitch_4e
    const/16 v14, 0x52

    goto :goto_53

    :pswitch_51
    const/16 v14, 0x62

    .line 5189
    :goto_53
    :pswitch_53
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v13

    if-eqz v13, :cond_5c

    const/16 v13, 0x41

    goto :goto_67

    .line 5191
    :cond_5c
    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v13

    if-eqz v13, :cond_65

    const/16 v13, 0x53

    goto :goto_67

    :cond_65
    const/16 v13, 0x20

    .line 5196
    :goto_67
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    .line 5197
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    if-eqz v16, :cond_7b

    move-object/from16 v15, p5

    goto :goto_7d

    :cond_7b
    move-object/from16 v15, p4

    :goto_7d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, " #"

    .line 5199
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5200
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v15, v8

    const/16 v8, 0xa

    if-ge v15, v8, :cond_a5

    const/16 v8, 0x20

    .line 5201
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_a7

    :cond_a5
    const/16 v8, 0x20

    .line 5202
    :goto_a7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, ": "

    .line 5203
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5204
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5205
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5206
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    const/16 v12, 0x2f

    .line 5207
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 5208
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 5209
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 5210
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5211
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5212
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v5

    invoke-static {v0, v5}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 5213
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    const-string v5, " t:"

    .line 5214
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5215
    iget-object v5, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v5

    const/16 v12, 0xa

    if-ge v5, v12, :cond_e5

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5216
    :cond_e5
    iget-object v5, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 5217
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5218
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " ("

    .line 5219
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5220
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v8, 0x29

    .line 5221
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 5222
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    const-string v12, "    "

    if-nez v8, :cond_117

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_186

    .line 5223
    :cond_117
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5224
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5225
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/content/ComponentName;

    const-string/jumbo v13, "{null}"

    if-eqz v8, :cond_136

    .line 5226
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14b

    .line 5227
    :cond_136
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_148

    .line 5228
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14b

    .line 5230
    :cond_148
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_14b
    const-string v8, "<="

    .line 5232
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5233
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_171

    const-string v8, "Proc{"

    .line 5234
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5235
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "}"

    .line 5236
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_186

    .line 5237
    :cond_171
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_183

    .line 5238
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_186

    .line 5240
    :cond_183
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_186
    :goto_186
    if-eqz p6, :cond_298

    .line 5244
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5245
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "oom: max="

    .line 5246
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " curRaw="

    .line 5247
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " setRaw="

    .line 5248
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " cur="

    .line 5249
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " set="

    .line 5250
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 5251
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5252
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "state: cur="

    .line 5253
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5254
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " lastPss="

    .line 5255
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5256
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v13

    const-wide/16 v17, 0x400

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v8, " lastSwapPss="

    .line 5257
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5258
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v13

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v8, " lastCachedPss="

    .line 5259
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5260
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v13

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 5261
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 5262
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5263
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "cached="

    .line 5264
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " empty="

    .line 5265
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " hasAboveClient="

    .line 5266
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 5268
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    const/16 v10, 0xa

    if-lt v8, v10, :cond_298

    .line 5269
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    if-eqz v8, :cond_298

    cmp-long v8, v6, v13

    if-lez v8, :cond_298

    .line 5271
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 5272
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5273
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, "run cpu over "

    .line 5274
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5275
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v10, " used "

    .line 5276
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5277
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5278
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    .line 5279
    div-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, "%)"

    .line 5280
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_298
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_23

    :cond_29e
    move v4, v8

    return v4

    :pswitch_data_2a0
    .packed-switch -0x2
        :pswitch_53
        :pswitch_44
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_53
        :pswitch_4b
    .end packed-switch
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .registers 5

    const/16 v0, 0xc

    .line 1768
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 1769
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    .line 1770
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1771
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1772
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1774
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1775
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1776
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ne p0, v2, :cond_32

    .line 1777
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public static killProcessGroup(II)V
    .registers 4

    .line 1851
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_e

    const/16 v1, 0xfa0

    .line 1853
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1852
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_18

    :cond_e
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    .line 1855
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    :goto_18
    return-void
.end method

.method private synthetic lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 30

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    .line 2491
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    .line 2492
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    .line 2493
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v10

    .line 2494
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v16
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_16} :catch_5b

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    .line 2491
    :try_start_2c
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_30} :catch_53

    .line 2496
    :try_start_30
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_33} :catch_51

    :try_start_33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_45

    move-object/from16 v3, p1

    move-wide/from16 v4, p10

    .line 2497
    :try_start_3a
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2498
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_43

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_41} :catch_4f

    goto/16 :goto_b7

    :catchall_43
    move-exception v0

    goto :goto_4a

    :catchall_45
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p10

    :goto_4a
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_43

    :try_start_4b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v0

    goto :goto_5f

    :catch_51
    move-exception v0

    goto :goto_56

    :catch_53
    move-exception v0

    move-object/from16 v1, p0

    :goto_56
    move-object/from16 v3, p1

    move-wide/from16 v4, p10

    goto :goto_5f

    :catch_5b
    move-exception v0

    move-wide v4, v12

    move-object v1, v14

    move-object v3, v15

    .line 2500
    :goto_5f
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v6, "ActivityManager"

    .line 2501
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2503
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v0, 0x0

    .line 2504
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2505
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2506
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v10, "start failure"

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v3

    move-object/from16 p9, v10

    .line 2505
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2508
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_62 .. :try_end_b4} :catchall_b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_b7
    return-void

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private synthetic lambda$killAppIfBgRestrictedAndCachedIdleLocked$4(JLcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 5946
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    return-void
.end method

.method private synthetic lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .line 2457
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic lambda$updateApplicationInfoLOSP$2(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 7

    if-nez p0, :cond_8

    .line 5555
    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 5557
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x400

    iget p1, p2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 5558
    invoke-interface {p0, p4, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 5560
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 5561
    iput-object p0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 5562
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p1

    .line 5563
    invoke-virtual {p1, p0}, Lcom/android/server/am/PlatformCompatCache;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5565
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5566
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_39} :catch_3a

    goto :goto_4e

    :catch_3a
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object p4, p0, p1

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "Failed to update %s ApplicationInfo for %s"

    .line 5569
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    return-void
.end method

.method private synthetic lambda$updateBackgroundRestrictedForUidPackageLocked$3(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .registers 8

    .line 5887
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 5888
    iget-object p1, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    if-eqz p2, :cond_35

    .line 5890
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5891
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3a

    .line 5893
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 5894
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sub-long/2addr p1, p3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3a

    .line 5898
    :cond_35
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5900
    :cond_3a
    :goto_3a
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result p1

    if-nez p1, :cond_45

    .line 5901
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_45
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x384

    if-lt p0, v0, :cond_13

    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    .line 1248
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/16 v0, 0x35c

    if-lt p0, v0, :cond_27

    const/4 v3, 0x0

    const/16 v5, 0x35c

    const-string/jumbo v1, "seed  "

    const-string/jumbo v2, "seed"

    move v4, p0

    move v6, p1

    .line 1251
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const/16 v0, 0x352

    if-lt p0, v0, :cond_3b

    const/4 v3, 0x0

    const/16 v5, 0x352

    const-string/jumbo v1, "picked "

    const-string/jumbo v2, "picked"

    move v4, p0

    move v6, p1

    .line 1254
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    const/16 v0, 0x33e

    if-lt p0, v0, :cond_4d

    const/4 v3, 0x0

    const/16 v5, 0x33e

    const-string v1, "archvd "

    const-string v2, "archvd"

    move v4, p0

    move v6, p1

    .line 1257
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    const/16 v0, 0x320

    if-lt p0, v0, :cond_61

    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    .line 1260
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_61
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_75

    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    .line 1263
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_75
    const/16 v0, 0x258

    if-lt p0, v0, :cond_89

    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string/jumbo v1, "home  "

    const-string/jumbo v2, "home"

    move v4, p0

    move v6, p1

    .line 1266
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_89
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_9d

    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    .line 1269
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    const/16 v0, 0x190

    if-lt p0, v0, :cond_b1

    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string/jumbo v1, "hvy   "

    const-string/jumbo v2, "hvy"

    move v4, p0

    move v6, p1

    .line 1272
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b1
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_c3

    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    .line 1275
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c3
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_d7

    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    .line 1278
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d7
    const/16 v0, 0xe1

    if-lt p0, v0, :cond_eb

    const/4 v3, 0x0

    const/16 v5, 0xe1

    const-string/jumbo v1, "prcm  "

    const-string/jumbo v2, "prcm"

    move v4, p0

    move v6, p1

    .line 1281
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_eb
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_ff

    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    .line 1284
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ff
    const/16 v0, 0x64

    if-lt p0, v0, :cond_114

    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    .line 1287
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_114
    if-ltz p0, :cond_124

    const/4 v4, 0x0

    const-string v0, "fg "

    const-string v1, "fg "

    const-string v2, "   "

    move v3, p0

    move v5, p1

    .line 1290
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_124
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_138

    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    .line 1293
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_138
    const/16 v0, -0x320

    if-lt p0, v0, :cond_14c

    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    .line 1296
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14c
    const/16 v0, -0x384

    if-lt p0, v0, :cond_160

    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    .line 1299
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_160
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_174

    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    .line 1302
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1305
    :cond_174
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .registers 1

    packed-switch p0, :pswitch_data_48

    const/16 p0, 0x3e6

    return p0

    :pswitch_6
    const/16 p0, 0x3fb

    return p0

    :pswitch_9
    const/16 p0, 0x3fa

    return p0

    :pswitch_c
    const/16 p0, 0x3f9

    return p0

    :pswitch_f
    const/16 p0, 0x3f8

    return p0

    :pswitch_12
    const/16 p0, 0x3f7

    return p0

    :pswitch_15
    const/16 p0, 0x3f6

    return p0

    :pswitch_18
    const/16 p0, 0x3f5

    return p0

    :pswitch_1b
    const/16 p0, 0x3f4

    return p0

    :pswitch_1e
    const/16 p0, 0x3f3

    return p0

    :pswitch_21
    const/16 p0, 0x3f2

    return p0

    :pswitch_24
    const/16 p0, 0x3f1

    return p0

    :pswitch_27
    const/16 p0, 0x3f0

    return p0

    :pswitch_2a
    const/16 p0, 0x3ef

    return p0

    :pswitch_2d
    const/16 p0, 0x3ee

    return p0

    :pswitch_30
    const/16 p0, 0x3ed

    return p0

    :pswitch_33
    const/16 p0, 0x3ec

    return p0

    :pswitch_36
    const/16 p0, 0x3eb

    return p0

    :pswitch_39
    const/16 p0, 0x3fc

    return p0

    :pswitch_3c
    const/16 p0, 0x3ea

    return p0

    :pswitch_3f
    const/16 p0, 0x3e9

    return p0

    :pswitch_42
    const/16 p0, 0x3e8

    return p0

    :pswitch_45
    const/16 p0, 0x3e7

    return p0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 1

    .line 1310
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3

    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x3a98

    :goto_7
    return-wide v0
.end method

.method public static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .registers 4

    .line 4521
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p0

    const/16 p3, 0x190

    if-ne p0, p3, :cond_b

    .line 4524
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_e

    :cond_b
    const/4 p1, 0x0

    .line 4526
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    :goto_e
    return p0
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 3

    .line 1570
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    aget p1, v0, p1

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static final remove(I)V
    .registers 3

    if-gtz p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x8

    .line 1758
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    .line 1759
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1760
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 1761
    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static final setLmkdCameraKillBoost(III)V
    .registers 7

    .line 1723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    .line 1725
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xd

    .line 1726
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1727
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1728
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1729
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 1730
    invoke-static {v2, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xfa

    cmp-long p2, p0, v0

    if-lez p2, :cond_3d

    .line 1734
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SLOW setLmkdCameraKillBoost: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method public static final setLmkdLaunchPid(I)V
    .registers 5

    if-gtz p0, :cond_3

    return-void

    .line 1709
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x8

    .line 1711
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xc

    .line 1712
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1713
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 1714
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long v0, v2, v0

    if-lez v0, :cond_43

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLOW LMKD LAUNCH PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method public static final setLmkdParameter(II)V
    .registers 4

    const/16 v0, 0xc

    .line 1630
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0xa

    .line 1631
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1632
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1633
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 1634
    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static final setLmkdReentryMode()V
    .registers 4

    .line 1739
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x4

    .line 1741
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xe

    .line 1742
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 1743
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long v0, v2, v0

    if-lez v0, :cond_33

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLOW setLmkdReentryMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public static setOomAdj(III)V
    .registers 7

    if-gtz p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    return-void

    .line 1656
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    .line 1657
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 1658
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1659
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1660
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1661
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 1662
    invoke-static {v2, p1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_55

    .line 1665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SLOW OOM ADJ: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms for pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method

.method public static setOomAdj(IIII)V
    .registers 9

    if-gtz p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    return-void

    .line 1678
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1680
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v2, :cond_30

    const/16 v2, 0x14

    .line 1681
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v4, 0xb

    .line 1682
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1683
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1684
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1685
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1686
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1687
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    goto :goto_46

    :cond_30
    const/16 p3, 0x10

    .line 1689
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v2, 0x1

    .line 1690
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1691
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1692
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1693
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1694
    invoke-static {p3, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1697
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_78

    .line 1699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SLOW OOM ADJ: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ms for pid "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void
.end method

.method public static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 5001
    new-instance v0, Ljava/util/ArrayList;

    .line 5002
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5003
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_38

    .line 5004
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_23

    .line 5005
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_35

    .line 5008
    :cond_23
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5011
    :cond_38
    new-instance p0, Lcom/android/server/am/ProcessList$2;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList$2;-><init>()V

    .line 5033
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1816
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1818
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1819
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1818
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1822
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 1829
    :cond_1f
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)Z

    move-result p0

    return p0
.end method

.method public static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 5040
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5041
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    return v4

    .line 5043
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 5045
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_1c
    if-ltz v3, :cond_28e

    .line 5046
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 5047
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5048
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5049
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 5050
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x10800000001L

    .line 5051
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    invoke-virtual {v0, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5052
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v4, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10900000003L

    .line 5053
    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5055
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, -0x1

    if-eqz v4, :cond_7e

    if-eq v4, v14, :cond_7c

    if-eq v4, v13, :cond_7a

    const/4 v14, 0x4

    if-eq v4, v14, :cond_7f

    move v13, v15

    goto :goto_7f

    :cond_7a
    move v13, v14

    goto :goto_7f

    :cond_7c
    move v13, v7

    goto :goto_7f

    :cond_7e
    const/4 v13, 0x0

    :cond_7f
    :goto_7f
    if-eq v13, v15, :cond_89

    const-wide v14, 0x10e00000004L

    .line 5070
    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5072
    :cond_89
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v4

    if-eqz v4, :cond_98

    const-wide v13, 0x10800000005L

    .line 5073
    invoke-virtual {v0, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_a6

    .line 5074
    :cond_98
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_a6

    const-wide v13, 0x10800000006L

    .line 5075
    invoke-virtual {v0, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5078
    :cond_a6
    :goto_a6
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v4

    const-wide v13, 0x10e00000007L

    .line 5077
    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000008L

    .line 5079
    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10b00000009L

    .line 5080
    invoke-virtual {v8, v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5081
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    const-wide v13, 0x1090000000aL

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5082
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e4

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13e

    .line 5083
    :cond_e4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_fb

    .line 5084
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-wide v13, 0x10b0000000bL

    .line 5085
    invoke-virtual {v4, v0, v13, v14}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_111

    .line 5086
    :cond_fb
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_111

    const-wide v13, 0x1090000000cL

    .line 5087
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5089
    :cond_111
    :goto_111
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_128

    .line 5090
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const-wide v13, 0x10b0000000dL

    .line 5091
    invoke-virtual {v4, v0, v13, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_13e

    .line 5092
    :cond_128
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13e

    const-wide v13, 0x1090000000eL

    .line 5093
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_13e
    :goto_13e
    if-eqz p5, :cond_27b

    const-wide v13, 0x10b0000000fL

    move-object v15, v8

    .line 5097
    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v13, 0x10500000001L

    .line 5098
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5099
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    const-wide v13, 0x10500000002L

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000003L

    .line 5100
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000004L

    .line 5101
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000005L

    .line 5102
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5104
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v4

    const-wide v13, 0x10e00000007L

    .line 5103
    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10e00000008L

    .line 5106
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v4

    .line 5105
    invoke-virtual {v0, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object v4, v15

    .line 5107
    iget-object v15, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 5108
    invoke-virtual {v15}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v15

    const-wide/16 v17, 0x400

    mul-long v13, v15, v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5107
    invoke-static {v13, v14, v15}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x10900000009L

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5109
    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 5110
    invoke-virtual {v13}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v13

    mul-long v13, v13, v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5109
    invoke-static {v13, v14, v15}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5111
    iget-object v15, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 5112
    invoke-virtual {v15}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v15

    mul-long v13, v15, v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5111
    invoke-static {v13, v14, v15}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x1090000000bL

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v13, 0x1080000000cL

    .line 5113
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v15

    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v13, 0x1080000000dL

    .line 5114
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v15

    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v13, 0x1080000000eL

    .line 5115
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v10

    invoke-virtual {v0, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5117
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v9

    const/16 v10, 0xa

    if-lt v9, v10, :cond_272

    .line 5118
    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    move-object/from16 v13, p3

    .line 5119
    iget-wide v14, v13, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v14, v5, v14

    const-wide/16 v16, 0x0

    cmp-long v18, v9, v16

    if-eqz v18, :cond_274

    cmp-long v16, v14, v16

    if-lez v16, :cond_274

    .line 5121
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    sub-long v9, v16, v9

    move-object v4, v2

    const-wide v1, 0x10b0000000fL

    .line 5122
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v16, v5

    move-object v6, v4

    const-wide v4, 0x10300000001L

    .line 5123
    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000002L

    .line 5124
    invoke-virtual {v0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10200000003L

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    long-to-double v9, v9

    mul-double v9, v9, v18

    long-to-double v14, v14

    div-double/2addr v9, v14

    .line 5125
    invoke-virtual {v0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 5127
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_277

    :cond_272
    move-object/from16 v13, p3

    :cond_274
    move-wide/from16 v16, v5

    move-object v6, v2

    .line 5130
    :goto_277
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_280

    :cond_27b
    move-object/from16 v13, p3

    move-wide/from16 v16, v5

    move-object v6, v2

    .line 5132
    :goto_280
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, p4

    move-object v2, v6

    move-wide/from16 v5, v16

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1c

    :cond_28e
    move v1, v7

    return v1
.end method


# virtual methods
.method public addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3649
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3650
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_2e

    .line 3651
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v1, "ActivityManager"

    .line 3653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b0

    :cond_2e
    if-eqz v1, :cond_b0

    .line 3656
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "ActivityManager"

    .line 3657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Make "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " persistent because it was :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->setPersistent(Lcom/android/server/am/ProcessRecord;)V

    .line 3661
    :cond_5b
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_92

    const-string v2, "ActivityManager"

    .line 3664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms ago when adding "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3664
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_92
    const-string v2, "ActivityManager"

    .line 3668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when adding "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_b0
    :goto_b0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-nez v1, :cond_122

    .line 3673
    new-instance v1, Lcom/android/server/am/UidRecord;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 3675
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_dd

    const-string v2, "ActivityManager"

    .line 3676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new process uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    :cond_dd
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3679
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 3678
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_f9

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3680
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_100

    :cond_f9
    const/4 v2, 0x1

    .line 3681
    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3682
    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 3684
    :cond_100
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3685
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3686
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3687
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    .line 3688
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    .line 3687
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3690
    :cond_122
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3691
    invoke-virtual {v1, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 v1, 0x0

    .line 3694
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setRenderThreadTid(I)V

    .line 3695
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3698
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    if-eqz v1, :cond_14a

    const-string v1, "com.att.iqi"

    .line 3699
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 3700
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v2, -0x320

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3704
    :cond_14a
    monitor-exit v0
    :try_end_14b
    .catchall {:try_start_3 .. :try_end_14b} :catchall_15a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3705
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_159

    .line 3706
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_159
    return-void

    :catchall_15a
    move-exception p0

    .line 3704
    :try_start_15b
    monitor-exit v0
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 1009
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    if-eqz v0, :cond_54

    .line 1010
    :cond_8
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 1012
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1013
    iget p1, v0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_54

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_54

    .line 1016
    iput p1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 1017
    iput v2, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v3, 0x1

    .line 1020
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1021
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 1024
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez p1, :cond_2d

    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1025
    :cond_2d
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->setTaskSnapshot(II)V

    .line 1026
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->setBGSlotByRes(II)V

    .line 1027
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 1032
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isPmmEnabled()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    if-eqz p0, :cond_54

    .line 1033
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/KillPolicyManager;->updateDisplaySize(II)V

    :cond_54
    return-void
.end method

.method public final checkFreezerExempt(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 2378
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    .line 2382
    :cond_a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsExemptionManager;->getInstance()Lcom/android/server/am/mars/database/MARsExemptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsExemptionManager;->getExemptionList()Ljava/util/ArrayList;

    move-result-object p0

    .line 2384
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2385
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    return v3

    .line 2388
    :cond_2e
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_40
    return v3

    :cond_41
    return v0
.end method

.method public final checkSlow(JLjava/lang/String;)V
    .registers 6

    .line 1916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_2a

    .line 1919
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Slow operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public clearAllDnsCacheLOSP()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3979
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 3980
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3981
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3984
    :try_start_18
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 3986
    :catch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear dns cache for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_6f

    .line 5512
    array-length v0, p3

    if-le v0, p1, :cond_6f

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 5513
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6f

    .line 5514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5517
    :try_start_15
    aget-object v1, p3, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 v1, -0x1

    .line 5520
    :goto_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_25
    if-ltz v2, :cond_67

    .line 5521
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5522
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_3f

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_3f

    .line 5523
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_3f
    if-eqz p2, :cond_57

    .line 5524
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 5525
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 5526
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 5527
    :cond_57
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 5528
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 5531
    :cond_67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_76

    const/4 p0, 0x0

    return-object p0

    .line 5535
    :cond_6f
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_76
    return-object v0
.end method

.method public final computeGidsForProcess(II[IZ)[I
    .registers 12

    .line 1925
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1927
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 1928
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v1

    .line 1929
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    .line 1933
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_31

    aget v6, p3, v5

    .line 1934
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_31
    const/4 p3, -0x1

    if-eq v0, p3, :cond_3b

    .line 1937
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-eq v1, p3, :cond_44

    .line 1940
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    if-eq v2, p3, :cond_4d

    .line 1943
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    const/4 p3, 0x4

    const/4 v0, 0x3

    const/16 v1, 0x437

    if-eq p1, p3, :cond_55

    if-ne p1, v0, :cond_76

    .line 1952
    :cond_55
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const/16 v2, 0x3f7

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p3, 0x436

    .line 1957
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    const/4 p3, 0x2

    if-ne p1, p3, :cond_80

    .line 1962
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    if-ne p1, v0, :cond_109

    const/16 p1, 0x3ff

    .line 1968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-nez p2, :cond_109

    const/16 p2, 0x5f

    .line 1973
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1972
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    invoke-static {p2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x60

    .line 1975
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    invoke-static {p2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x61

    .line 1978
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    invoke-static {p2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x62

    .line 1981
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-static {p2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x63

    .line 1984
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    invoke-static {p2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    if-eqz p4, :cond_114

    const/16 p1, 0x435

    .line 1993
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    :cond_114
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_11a
    if-ge v4, p1, :cond_12b

    .line 1998
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11a

    :cond_12b
    return-object p2
.end method

.method public final createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .registers 11

    .line 2626
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2629
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 2630
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    if-nez v2, :cond_7a

    .line 2633
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_27

    const-string v2, "ActivityManager"

    const-string v3, "Creating new app zygote."

    .line 2634
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2638
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v4

    .line 2637
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v2

    .line 2639
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2642
    iget v4, v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2643
    iget v2, v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2644
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2651
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2652
    iput v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2653
    new-instance v8, Landroid/os/AppZygote;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    move-object v2, v8

    move v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    .line 2654
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2656
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v8

    goto :goto_97

    .line 2658
    :cond_7a
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_85

    const-string v1, "ActivityManager"

    const-string v3, "Reusing existing app zygote."

    .line 2659
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :cond_85
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x47

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2662
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    .line 2668
    :goto_97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_9f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_9f
    move-exception p0

    .line 2671
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .registers 5

    .line 5782
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/unsolzygotesocket"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5783
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5784
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_10
    const/4 p0, 0x0

    .line 5789
    :try_start_11
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_27

    .line 5790
    :try_start_17
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v0, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    const/16 v2, 0x1b6

    .line 5792
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_28

    goto :goto_2e

    :catch_27
    move-object v1, p0

    :catch_28
    if-eqz v1, :cond_2e

    .line 5796
    :try_start_2a
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    goto :goto_2f

    :cond_2e
    :goto_2e
    move-object p0, v1

    :catch_2f
    :goto_2f
    return-object p0
.end method

.method public dispatchProcessDied(II)V
    .registers 5

    .line 5495
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :cond_6
    :goto_6
    if-lez v0, :cond_18

    add-int/lit8 v0, v0, -0x1

    .line 5498
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IProcessObserver;

    if-eqz v1, :cond_6

    .line 5501
    :try_start_14
    invoke-interface {v1, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_6

    goto :goto_6

    .line 5506
    :cond_18
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchProcessesChanged()V
    .registers 9

    .line 5363
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5365
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_12

    .line 5366
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5368
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5369
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5370
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_3d

    const-string v2, "ActivityManager"

    .line 5371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Delivering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " process changes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5374
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_f6

    .line 5376
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_44
    :cond_44
    const/4 v2, 0x0

    if-lez v0, :cond_db

    add-int/lit8 v0, v0, -0x1

    .line 5379
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IProcessObserver;

    if-eqz v3, :cond_44

    :goto_53
    if-ge v2, v1, :cond_44

    .line 5383
    :try_start_55
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v2

    .line 5384
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_98

    .line 5385
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v5, :cond_8f

    const-string v5, "ActivityManager"

    .line 5386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTIVITIES CHANGED pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    :cond_8f
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v3, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 5393
    :cond_98
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_d7

    .line 5394
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v5, :cond_ce

    const-string v5, "ActivityManager"

    .line 5395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FOREGROUND SERVICES CHANGED pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    :cond_ce
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v4, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v3, v5, v6, v4}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_d7} :catch_44

    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_53

    .line 5407
    :cond_db
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5409
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v3

    :goto_e3
    if-ge v2, v1, :cond_f1

    .line 5411
    :try_start_e5
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    .line 5413
    :cond_f1
    monitor-exit v3

    return-void

    :catchall_f3
    move-exception p0

    monitor-exit v3
    :try_end_f5
    .catchall {:try_start_e5 .. :try_end_f5} :catchall_f3

    throw p0

    :catchall_f6
    move-exception p0

    .line 5374
    :try_start_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw p0
.end method

.method public doStopUidForIdleUidsLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5638
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2f

    .line 5640
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 5641
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_2c

    .line 5644
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5645
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_2c

    .line 5648
    :cond_23
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2f
    return-void
.end method

.method public final dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 4744
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x23

    .line 4745
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    const/16 p0, 0x20

    const/16 p4, 0xa

    if-ge p2, p4, :cond_11

    .line 4747
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 4749
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ": "

    .line 4750
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4751
    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p2

    const/4 p4, 0x0

    invoke-static {p2, p4}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4752
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 4753
    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4754
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 4755
    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p2

    invoke-static {p1, p2}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4756
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 4757
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4758
    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4759
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p2

    if-nez p2, :cond_61

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p2

    if-nez p2, :cond_61

    .line 4760
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p2

    if-eqz p2, :cond_ab

    :cond_61
    const-string p2, " act:"

    .line 4761
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4763
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_73

    const-string p2, "activities"

    .line 4764
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p4, v0

    .line 4767
    :cond_73
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result p2

    const-string/jumbo p3, "|"

    if-eqz p2, :cond_88

    if-eqz p4, :cond_81

    .line 4769
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_81
    const-string/jumbo p2, "recents"

    .line 4771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p4, v0

    .line 4774
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p2

    if-eqz p2, :cond_99

    if-eqz p4, :cond_93

    .line 4776
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_93
    const-string p2, "client"

    .line 4778
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9a

    :cond_99
    move v0, p4

    .line 4781
    :goto_9a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p0

    if-eqz p0, :cond_ab

    if-eqz v0, :cond_a5

    .line 4783
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a5
    const-string/jumbo p0, "treated"

    .line 4785
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4788
    :cond_ab
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const-string v0, "  Process LRU list (sorted by oom_adj, "

    .line 4734
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " total, non-act at "

    .line 4735
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4736
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", non-svc at "

    .line 4737
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4738
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, "):"

    .line 4739
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 4793
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "  "

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_12

    const-string p3, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    .line 4796
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    :cond_12
    add-int/lit8 v4, v0, -0x1

    :goto_14
    if-ltz v4, :cond_2f

    .line 4801
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_2d

    .line 4802
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    :cond_2d
    move v4, v3

    goto :goto_30

    :cond_2f
    move v4, v2

    :goto_30
    if-nez v4, :cond_33

    return v2

    .line 4811
    :cond_33
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Raw LRU list (dumpsys activity lru):"

    .line 4812
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4a
    sub-int/2addr v0, v3

    move p3, v3

    .line 4817
    :goto_4c
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v4, :cond_76

    .line 4818
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_65

    .line 4819
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_73

    :cond_65
    if-eqz p3, :cond_70

    .line 4823
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Activities:"

    .line 4824
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v2

    .line 4827
    :cond_70
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_73
    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_76
    move p3, v3

    .line 4830
    :goto_77
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v0, v4, :cond_a1

    .line 4831
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_90

    .line 4832
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    goto :goto_9e

    :cond_90
    if-eqz p3, :cond_9b

    .line 4836
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Services:"

    .line 4837
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v2

    .line 4840
    :cond_9b
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_9e
    add-int/lit8 v0, v0, -0x1

    goto :goto_77

    :cond_a1
    move p3, v3

    :goto_a2
    if-ltz v0, :cond_ca

    .line 4844
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_b9

    .line 4845
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    goto :goto_c7

    :cond_b9
    if-eqz p3, :cond_c4

    .line 4849
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Other:"

    .line 4850
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v2

    .line 4853
    :cond_c4
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_c7
    add-int/lit8 v0, v0, -0x1

    goto :goto_a2

    :cond_ca
    return v3
.end method

.method public dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object v0, p0

    move-object v9, p2

    .line 5307
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    const/4 v10, 0x1

    if-lez v1, :cond_dc

    if-eqz p3, :cond_e

    .line 5308
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_e
    const-string v1, "  OOM levels:"

    .line 5310
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "SYSTEM_ADJ"

    const/16 v2, -0x384

    .line 5311
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PERSISTENT_PROC_ADJ"

    const/16 v2, -0x320

    .line 5312
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PERSISTENT_SERVICE_ADJ"

    const/16 v2, -0x2bc

    .line 5313
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "FOREGROUND_APP_ADJ"

    const/4 v2, 0x0

    .line 5314
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "VISIBLE_APP_ADJ"

    const/16 v2, 0x64

    .line 5315
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PERCEPTIBLE_APP_ADJ"

    const/16 v2, 0xc8

    .line 5316
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v2, 0xe1

    .line 5317
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v2, 0xfa

    .line 5318
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "BACKUP_APP_ADJ"

    const/16 v2, 0x12c

    .line 5319
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v2, 0x190

    .line 5320
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "SERVICE_ADJ"

    const/16 v2, 0x1f4

    .line 5321
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "HOME_APP_ADJ"

    const/16 v2, 0x258

    .line 5322
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PREVIOUS_APP_ADJ"

    const/16 v2, 0x2bc

    .line 5323
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "SERVICE_B_ADJ"

    const/16 v2, 0x320

    .line 5324
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "ARCHIVED_ADJ"

    const/16 v2, 0x33e

    .line 5325
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "PICKED_ADJ"

    const/16 v2, 0x352

    .line 5326
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "SEEDBED_ADJ"

    const/16 v2, 0x35c

    .line 5327
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "CACHED_APP_MIN_ADJ"

    const/16 v2, 0x384

    .line 5328
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "CACHED_APP_MAX_ADJ"

    const/16 v2, 0x3e7

    .line 5329
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 5331
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Process OOM control ("

    .line 5332
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " total, non-act at "

    .line 5333
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5334
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", non-svc at "

    .line 5335
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5336
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "):"

    .line 5337
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5338
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Proc"

    const-string v6, "PERS"

    const/4 v7, 0x1

    move-object v1, p2

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move v1, v10

    goto :goto_dd

    :cond_dc
    move v1, p3

    .line 5343
    :goto_dd
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5344
    :try_start_e4
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-object/from16 v4, p7

    invoke-virtual {v3, p2, v1, v4}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    .line 5345
    monitor-exit v2
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_f9

    .line 5347
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5348
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    return v10

    :catchall_f9
    move-exception v0

    .line 5345
    :try_start_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v0
.end method

.method public dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    const-string v0, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    .line 4864
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v12, 0x1

    if-nez p5, :cond_15

    if-eqz v11, :cond_11

    goto :goto_15

    :cond_11
    move v3, v0

    move v13, v3

    goto/16 :goto_88

    .line 4867
    :cond_15
    :goto_15
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_22
    if-ge v2, v1, :cond_87

    .line 4869
    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4870
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v0

    :goto_35
    if-ge v7, v6, :cond_84

    .line 4871
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_4a

    .line 4872
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4a

    goto :goto_81

    :cond_4a
    if-nez v3, :cond_52

    const-string v3, "  All known processes:"

    .line 4876
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v12

    .line 4879
    :cond_52
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v13

    if-eqz v13, :cond_5b

    const-string v13, "  *PERS*"

    goto :goto_5d

    :cond_5b
    const-string v13, "  *APP*"

    :goto_5d
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, " UID "

    .line 4880
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " "

    .line 4881
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v13, "    "

    .line 4882
    invoke-virtual {v8, v10, v13}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4883
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_81

    add-int/lit8 v4, v4, 0x1

    :cond_81
    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_87
    move v13, v4

    .line 4890
    :goto_88
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_cf

    .line 4892
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_97
    if-ge v0, v1, :cond_cf

    .line 4893
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_ae

    .line 4894
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ae

    goto :goto_cc

    :cond_ae
    if-nez v2, :cond_bc

    if-eqz v3, :cond_b5

    .line 4899
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_b5
    const-string v2, "  Isolated process list (sorted by uid):"

    .line 4901
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v12

    move v3, v2

    :cond_bc
    const-string v5, "    Isolated #"

    .line 4905
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_cc
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 4910
    :cond_cf
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v10, v11, v3}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v14

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 4912
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_eb

    move v14, v12

    .line 4916
    :cond_eb
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_103

    .line 4917
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v14, v0

    :cond_103
    if-eqz p5, :cond_117

    .line 4922
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v14, v0

    :cond_117
    if-eqz v14, :cond_11c

    .line 4927
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_11c
    const-string v0, "  "

    .line 4929
    invoke-virtual {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    move v14, v12

    .line 4933
    :cond_125
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_147

    if-eqz v14, :cond_130

    .line 4935
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4937
    :cond_130
    invoke-virtual {p0, v10}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    .line 4938
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    const-string v5, "PERS"

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move v7, v12

    goto :goto_148

    :cond_147
    move v7, v14

    .line 4943
    :goto_148
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    return-void
.end method

.method public enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 5419
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(IIIZI)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object p0

    return-object p0
.end method

.method public enqueueProcessChangeItemLocked(IIIZI)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5426
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_c
    if-ltz v1, :cond_38

    .line 5430
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5431
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_35

    .line 5432
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_38

    const-string v3, "ActivityManager"

    .line 5433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-using existing item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_38
    :goto_38
    if-gez v1, :cond_b6

    .line 5442
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_67

    .line 5444
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5445
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_86

    const-string v2, "ActivityManager"

    .line 5446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving available item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 5449
    :cond_67
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    .line 5450
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_86

    const-string v2, "ActivityManager"

    .line 5451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocating new item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    move-object v2, v1

    .line 5456
    iput p3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5457
    iput-boolean p4, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 5458
    iput p5, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    .line 5463
    iput p1, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 5464
    iput p2, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 5465
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_b1

    .line 5466
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz p1, :cond_a4

    const-string p1, "ActivityManager"

    const-string p2, "*** Enqueueing dispatch processes changed!"

    .line 5467
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    :cond_a4
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5470
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5472
    :cond_b1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5475
    :cond_b6
    monitor-exit v0

    return-object v2

    :catchall_b8
    move-exception p0

    .line 5476
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_3 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 4535
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4536
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4537
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 4538
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4540
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_28

    .line 4541
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4543
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4544
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4546
    :cond_34
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4547
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4548
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    .line 4549
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    .line 4550
    invoke-static {v4, v3, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4552
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjTypeCode()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4553
    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4554
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p3

    const/4 v0, 0x0

    if-ne p1, p3, :cond_5f

    move p3, v1

    goto :goto_60

    :cond_5f
    move p3, v0

    :goto_60
    iput-boolean p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4555
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4558
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    .line 4559
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastSwapPss:J

    .line 4560
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->initialIdlePss:J

    .line 4562
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p3

    if-eqz p3, :cond_a7

    .line 4563
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningPss()[J

    move-result-object p3

    .line 4564
    aget-wide v3, p3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_a7

    .line 4565
    aget-wide v2, p3, v2

    iput-wide v2, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    .line 4566
    aget-wide v0, p3, v1

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->minPss:J

    const/4 v0, 0x3

    .line 4567
    aget-wide v0, p3, v0

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->maxPss:J

    .line 4571
    :cond_a7
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez p3, :cond_b1

    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 4572
    :cond_b1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->isProtectedInChimera(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    iput-boolean p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 4574
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p0

    if-lez p0, :cond_c7

    .line 4575
    iget p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_c7
    return-void
.end method

.method public findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1896
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_3a

    .line 1898
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1899
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_1f
    if-ge v5, v4, :cond_37

    .line 1901
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1902
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_34

    .line 1903
    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_34

    return-object v6

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1909
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find mystery application for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    .line 1909
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 4675
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-ge p1, v0, :cond_31

    .line 4676
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 4679
    :cond_19
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_21
    if-ltz p1, :cond_31

    .line 4680
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method public getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5666
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    .line 5667
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v0

    .line 5666
    invoke-static {p0, v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1d

    .line 5668
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    move p0, v0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move p0, v1

    .line 5671
    :goto_1e
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v2

    .line 5672
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v3

    .line 5671
    invoke-static {v2, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v2

    if-nez v2, :cond_39

    .line 5673
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result p1

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_39

    :cond_37
    move p1, v0

    goto :goto_3a

    :cond_39
    :goto_39
    move p1, v1

    :goto_3a
    if-nez p1, :cond_3f

    if-eqz p0, :cond_3f

    return v1

    :cond_3f
    if-eqz p1, :cond_45

    if-nez p0, :cond_45

    const/4 p0, 0x2

    return p0

    :cond_45
    return v0
.end method

.method public getCachedRestoreThresholdKb()J
    .registers 3

    .line 1626
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method public getIsolatedProcessesLocked(I)Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3726
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2d

    .line 3727
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3728
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_2a

    if-nez v1, :cond_1f

    .line 3730
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3732
    :cond_1f
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2d
    return-object v1
.end method

.method public getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4494
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 4496
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_2a

    .line 4497
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4498
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 4499
    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_2a
    return-object v0
.end method

.method public getLruProcessServiceStartLOSP()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .line 4660
    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return p0
.end method

.method public getLruProcessesLOSP()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4638
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLruProcessesLSP()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4646
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLruSeqLOSP()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .line 4724
    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return p0
.end method

.method public getLruSizeLOSP()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .line 4630
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getMemLevel(I)J
    .registers 5

    const/4 v0, 0x0

    .line 1613
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 1614
    aget v1, v1, v0

    if-gt p1, v1, :cond_12

    .line 1615
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p0, p0, v0

    :goto_e
    mul-int/lit16 p0, p0, 0x400

    int-to-long p0, p0

    return-wide p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1618
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    goto :goto_e
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 12

    const/16 v0, 0x258

    .line 1882
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x384

    .line 1883
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1884
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1885
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1886
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1887
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    if-gez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    iput-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1888
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    const/16 v0, 0x1f4

    .line 1889
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    const/16 v0, 0x64

    .line 1890
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1891
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    return-void
.end method

.method public getNextProcStateSeq()J
    .registers 5

    .line 5771
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    return-wide v0
.end method

.method public final getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    if-eqz p2, :cond_16

    .line 3713
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 3717
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3718
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result p2

    .line 3717
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object p0

    return-object p0

    .line 3715
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object p0
.end method

.method public final getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2676
    new-instance p0, Landroid/util/ArrayMap;

    array-length v0, p2

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2677
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2678
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_63

    aget-object v2, p2, v1

    .line 2679
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const-string v4, "ActivityManager"

    if-nez v3, :cond_2d

    .line 2681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 2684
    :cond_2d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    .line 2685
    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_55

    .line 2687
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inode == 0 (b/152760674)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2690
    :cond_55
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_63
    return-object p0
.end method

.method public getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .line 4729
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object p0
.end method

.method public getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 1866
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 1868
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 1870
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1871
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_33

    .line 1875
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1878
    :cond_36
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1058
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1059
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1060
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_45

    .line 1061
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1062
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_42

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_42

    .line 1065
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1072
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 1069
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pending process is not started yet,retry later"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1074
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :catchall_4a
    move-exception p0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4586
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_9d

    .line 4587
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4588
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4589
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    if-nez p1, :cond_1d

    .line 4590
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p2, :cond_99

    :cond_1d
    if-nez p3, :cond_25

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p4, :cond_25

    goto/16 :goto_99

    .line 4594
    :cond_25
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 4595
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v5

    if-nez v5, :cond_99

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v4

    if-nez v4, :cond_99

    .line 4597
    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4599
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 4600
    invoke-virtual {p0, v2, v4, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 4601
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_68

    .line 4602
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4605
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSourceProcState()I

    move-result v2

    .line 4604
    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_7f

    .line 4606
    :cond_68
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v2, :cond_7f

    .line 4608
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4609
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7f

    .line 4611
    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4614
    :cond_7f
    :goto_7f
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_8f

    .line 4615
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    :cond_8f
    if-nez v1, :cond_96

    .line 4620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4622
    :cond_96
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    :goto_99
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    :cond_9d
    return-object v1
.end method

.method public getUidProcStateLOSP(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 5612
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_b

    const/16 p0, 0x14

    goto :goto_f

    .line 5613
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    :goto_f
    return p0
.end method

.method public getUidProcessCapabilityLOSP(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 5622
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 5623
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p0

    :goto_e
    return p0
.end method

.method public getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 5629
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public getmIsDisplayChanged()Z
    .registers 1

    .line 1050
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    return p0
.end method

.method public getmLruProcesses()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleAllTrustStorageUpdateLOSP()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3994
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 3995
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3996
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3999
    :try_start_18
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 4001
    :catch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle trust storage update for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5836
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5837
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4d

    .line 5839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 5842
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, v0, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5843
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5844
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    const/4 p0, 0x1

    return p0

    :cond_4d
    return v1
.end method

.method public handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5857
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_42

    .line 5861
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 5862
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_26

    .line 5863
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5867
    :cond_26
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 5868
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 5870
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5873
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5874
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return p0

    :cond_42
    return v1
.end method

.method public final handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 2570
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p0, :cond_1e

    .line 2571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is really gone now"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_1e
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_28

    const/4 v0, 0x0

    .line 2577
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2578
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_28
    return-void
.end method

.method public final handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 26

    .line 2489
    new-instance v13, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, p1

    .line 2512
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2a

    .line 2513
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v1

    if-lez v1, :cond_2a

    move-object v1, p0

    .line 2514
    invoke-virtual {p0, v0, v13}, Lcom/android/server/am/ProcessList;->handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V

    goto :goto_2d

    .line 2517
    :cond_2a
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    :goto_2d
    return-void
.end method

.method public final handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V
    .registers 5

    .line 2528
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    .line 2530
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We\'ve been watching for the death of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2533
    :cond_1b
    iput-object p2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2534
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v9, p2

    move/from16 v10, p3

    move-wide/from16 v2, p4

    .line 3261
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3262
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_96

    const-string v3, "ActivityManager"

    .line 3264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " start not valid, killing pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    invoke-virtual {p1, v11}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 3268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B|killProcessQuiet comm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 3270
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_5d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3271
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v4

    .line 3272
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_90

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3273
    invoke-static {p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 3274
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-static {v3, v6}, Landroid/os/Process;->killProcessGroup(II)I

    .line 3275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E|killProcessQuiet pss="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    const/16 v3, 0xd

    .line 3276
    invoke-virtual {p0, p1, v3, v3, v2}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return v11

    :catchall_90
    move-exception v0

    .line 3272
    :try_start_91
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 3280
    :cond_96
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 3281
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v4, "startProcess: done updating battery stats"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    const/16 v2, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 3284
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v3, v12

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 3285
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 3286
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f6

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_f8

    :cond_f6
    const-string v5, ""

    :goto_f8
    aput-object v5, v3, v4

    .line 3283
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3290
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v12, v2, p2}, Lcom/android/server/am/Pageboost;->onProcStatusChange(ILjava/lang/String;I)V

    .line 3295
    :try_start_104
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3296
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move v8, p2

    .line 3295
    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_11c} :catch_11c

    .line 3301
    :catch_11c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v2, :cond_12d

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 3302
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Ljava/lang/String;I)V

    .line 3306
    :cond_12d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 3308
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v4, "startProcess: building log message"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3309
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 3310
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "Start proc "

    .line 3311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 3313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3314
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 3315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3316
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 3317
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17a

    const-string v3, " ["

    .line 3318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    .line 3320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17a
    const-string v3, " for "

    .line 3322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a4

    const-string v3, " "

    .line 3325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3326
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3328
    :cond_1a4
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3329
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_1b6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3330
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 3331
    invoke-virtual {p1, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 3332
    invoke-virtual {p1, v11}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 3334
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-eqz v3, :cond_1c8

    .line 3335
    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 3338
    :cond_1c8
    monitor-exit v2
    :try_end_1c9
    .catchall {:try_start_1b6 .. :try_end_1c9} :catchall_292

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3341
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v2, :cond_1d6

    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 3342
    :cond_1d6
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2, p1}, Lcom/android/server/am/DynamicHiddenApp;->setLmkdProtectFlagAndCameraProc(Lcom/android/server/am/ProcessRecord;)V

    .line 3345
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v4, "startProcess: starting to update pids map"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3347
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 3348
    :try_start_1ea
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 3349
    monitor-exit v3
    :try_end_1f3
    .catchall {:try_start_1ea .. :try_end_1f3} :catchall_28f

    if-eqz v4, :cond_249

    .line 3351
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_249

    const-string v2, "ActivityManager"

    .line 3353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleProcessStartedLocked process:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startSeq:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3354
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " belongs to another existing app:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startSeq:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3353
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v3, v4

    move v4, p2

    move v9, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    .line 3361
    :cond_249
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3362
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2

    if-nez p6, :cond_271

    .line 3364
    :try_start_255
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3365
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3366
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_26b

    const-wide/32 v5, 0x124f80

    goto :goto_26e

    .line 3367
    :cond_26b
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    .line 3366
    :goto_26e
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3369
    :cond_271
    monitor-exit v2
    :try_end_272
    .catchall {:try_start_255 .. :try_end_272} :catchall_28c

    .line 3370
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v4, "startProcess: done updating pids map"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3372
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    if-lez v2, :cond_28b

    .line 3373
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->promoteAsLongLivePackageIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_28b
    return v12

    :catchall_28c
    move-exception v0

    .line 3369
    :try_start_28d
    monitor-exit v2
    :try_end_28e
    .catchall {:try_start_28d .. :try_end_28e} :catchall_28c

    throw v0

    :catchall_28f
    move-exception v0

    .line 3349
    :try_start_290
    monitor-exit v3
    :try_end_291
    .catchall {:try_start_290 .. :try_end_291} :catchall_28f

    throw v0

    :catchall_292
    move-exception v0

    .line 3338
    :try_start_293
    monitor-exit v2
    :try_end_294
    .catchall {:try_start_293 .. :try_end_294} :catchall_292

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3247
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 3248
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    iget p3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne p0, p3, :cond_15

    .line 3249
    iget-boolean p0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    :cond_15
    const/4 p0, 0x0

    return p0

    .line 3254
    :cond_17
    iget v2, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v3, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result p0

    return p0
.end method

.method public final handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .registers 7

    .line 5809
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_42

    .line 5813
    :try_start_7
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_42

    .line 5815
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v1, p2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result p1

    if-ne v1, p1, :cond_42

    .line 5817
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget p2, p0, v2

    aget v1, p0, v0

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_42

    :catch_2b
    move-exception p0

    .line 5823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in reading unsolicited zygote message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return v0
.end method

.method public final hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .registers 4

    .line 2895
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1e

    .line 2897
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 2901
    :cond_1e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string p2, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    if-eqz p0, :cond_32

    .line 2902
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-nez p0, :cond_33

    :cond_32
    const/4 p1, 0x1

    :cond_33
    return p1
.end method

.method public haveBackgroundProcessLOSP()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 4508
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_26

    .line 4509
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4510
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4511
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5696
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_15

    .line 5697
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5698
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 5700
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_22

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 5705
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_28
    if-ltz v2, :cond_b0

    .line 5706
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 5708
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v6

    if-nez v6, :cond_3e

    goto/16 :goto_ac

    .line 5711
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_ac

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v6, :cond_4d

    goto :goto_ac

    .line 5715
    :cond_4d
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v6, v7, :cond_62

    .line 5716
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    if-ne v6, v7, :cond_62

    goto :goto_ac

    .line 5719
    :cond_62
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v6

    if-nez v6, :cond_69

    goto :goto_ac

    .line 5725
    :cond_69
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v7

    if-ne v6, v1, :cond_81

    if-nez v0, :cond_75

    .line 5728
    :try_start_70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5730
    :cond_75
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 5732
    :cond_81
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v6, :cond_9c

    const-string v6, "ActivityManager_Network"

    .line 5733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uid going to background, notifying all blocking threads for uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    :cond_9c
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_a7

    .line 5737
    iget-object v3, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5740
    :cond_a7
    :goto_a7
    monitor-exit v7

    goto :goto_ac

    :catchall_a9
    move-exception p0

    monitor-exit v7
    :try_end_ab
    .catchall {:try_start_70 .. :try_end_ab} :catchall_a9

    throw p0

    :cond_ac
    :goto_ac
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_28

    :cond_b0
    if-nez v0, :cond_b3

    return-void

    .line 5748
    :cond_b3
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_ba
    if-ltz p1, :cond_107

    .line 5749
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 5750
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d1

    goto :goto_104

    .line 5753
    :cond_d1
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 5754
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_104

    if-eqz v2, :cond_104

    .line 5755
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 5757
    :try_start_e3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v3, :cond_fd

    const-string v3, "ActivityManager_Network"

    .line 5758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Informing app thread that it needs to block: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    if-eqz v1, :cond_104

    .line 5762
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_104} :catch_104

    :catch_104
    :cond_104
    :goto_104
    add-int/lit8 p1, p1, -0x1

    goto :goto_ba

    :cond_107
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .registers 5

    .line 903
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 904
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 905
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 906
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    const-string/jumbo p1, "persist.zygote.app_data_isolation"

    const/4 p2, 0x1

    .line 910
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const-string/jumbo p1, "persist.sys.vold_app_data_isolation_enabled"

    const/4 p3, 0x0

    .line 911
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 913
    new-instance p1, Ljava/util/ArrayList;

    .line 914
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 916
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez p1, :cond_96

    .line 917
    new-instance p1, Lcom/android/server/ServiceThread;

    const/16 p3, 0xa

    const-string v0, "ActivityManager:kill"

    invoke-direct {p1, v0, p3, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 919
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 920
    new-instance p1, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 921
    new-instance p1, Lcom/android/server/am/LmkdConnection;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p3

    new-instance v0, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3, v0}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 993
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    if-eqz p1, :cond_82

    .line 995
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 996
    invoke-virtual {p3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 995
    invoke-virtual {p1, p3, p2, v0}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 999
    :cond_82
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1000
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object p2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    :cond_96
    return-void
.end method

.method public isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .line 4719
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isMobileDoctorInMaintenanceMode(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    .line 2366
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_c

    return v1

    .line 2369
    :cond_c
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.mobiledoctor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 2372
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3197
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 3198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "killedByAm=true;"

    .line 3199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 3201
    :goto_14
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2c

    if-nez v0, :cond_27

    .line 3202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_27
    const-string v2, "No entry in mProcessNames;"

    .line 3203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_69

    .line 3207
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-eqz v2, :cond_5c

    .line 3208
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    cmp-long v2, v4, p2

    if-nez v2, :cond_5c

    .line 3209
    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    const/4 v2, 0x0

    .line 3210
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 3211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t abort Starting process. It\'s Target Seq. App="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_5c
    if-nez v0, :cond_63

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_63
    const-string/jumbo v2, "pendingStart=false;"

    .line 3215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    :cond_69
    :goto_69
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    cmp-long v2, v4, p2

    if-lez v2, :cond_a4

    if-nez v0, :cond_78

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3220
    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",expected="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    iget-boolean p2, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-nez p2, :cond_a4

    .line 3223
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 3228
    :cond_a4
    :try_start_a4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {p2, p3, p1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_b1} :catch_ca
    .catch Ljava/lang/SecurityException; {:try_start_a4 .. :try_end_b1} :catch_b2

    goto :goto_ca

    :catch_b2
    move-exception p1

    .line 3232
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz p0, :cond_c9

    if-nez v0, :cond_c3

    .line 3233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    :cond_c3
    const-string p0, "Package is frozen;"

    .line 3234
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    .line 3237
    :cond_c9
    throw p1

    :catch_ca
    :goto_ca
    if-nez v0, :cond_cd

    goto :goto_d1

    .line 3240
    :cond_cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d1
    return-object v1
.end method

.method public killAllBackgroundProcessesExceptLSP(II)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3909
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_4d

    .line 3911
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3912
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_24
    if-ge v6, v5, :cond_4a

    .line 3914
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3915
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_44

    if-ltz p1, :cond_3a

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v8, p1, :cond_47

    :cond_3a
    if-ltz p2, :cond_44

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3917
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    if-le v8, p2, :cond_47

    .line 3918
    :cond_44
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 3928
    :cond_4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_51
    if-ge v2, p1, :cond_6a

    .line 3930
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xd

    const/16 v8, 0xa

    const-string/jumbo v9, "kill all background except"

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_6a
    return-void
.end method

.method public killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5918
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5919
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getLastCanKillOnBgRestrictedAndIdleTime()J

    move-result-wide v1

    .line 5920
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_5a

    .line 5921
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_5a

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 5922
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5923
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-eqz v0, :cond_5a

    cmp-long v0, v1, v4

    if-nez v0, :cond_43

    goto :goto_5a

    .line 5926
    :cond_43
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    add-long/2addr v1, v6

    cmp-long p0, v1, p2

    if-gtz p0, :cond_59

    const/16 p0, 0xd

    const/16 p2, 0x12

    const/4 p3, 0x1

    const-string v0, "cached idle & background restricted"

    .line 5929
    invoke-virtual {p1, v0, p0, p2, p3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    return-wide v4

    :cond_59
    return-wide v1

    :cond_5a
    :goto_5a
    return-wide v4
.end method

.method public killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/UidRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5946
    new-instance v2, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessList;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2584
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2585
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2c

    if-nez p2, :cond_16

    .line 2586
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2c

    .line 2588
    :cond_16
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2589
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2591
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    :cond_2c
    return-void
.end method

.method public killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3428
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    .line 3429
    :goto_20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 3430
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_34

    .line 3431
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_34

    goto :goto_55

    :cond_34
    if-ltz p2, :cond_3d

    .line 3434
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, p2, :cond_3d

    goto :goto_55

    .line 3437
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    if-eqz p1, :cond_52

    .line 3439
    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_55

    .line 3442
    :cond_52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 3445
    :cond_58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/AppZygote;

    .line 3446
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_5c

    :cond_6c
    return-void
.end method

.method public killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    .line 3417
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .registers 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 3455
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 3456
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3461
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_11b

    .line 3463
    iget-object v3, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3464
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v4, :cond_115

    .line 3466
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3467
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v14

    if-eqz v14, :cond_42

    if-nez p8, :cond_42

    goto :goto_89

    .line 3471
    :cond_42
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v14

    if-eqz v14, :cond_8e

    if-eqz p7, :cond_89

    if-nez p10, :cond_7c

    if-eqz v8, :cond_7c

    .line 3477
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7c

    .line 3478
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v14

    if-eqz v14, :cond_7c

    .line 3479
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7c

    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_7c

    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v12, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3481
    invoke-virtual {v0, v14, v15, v12}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_7c

    const/4 v12, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v12, 0x0

    .line 3484
    :goto_7d
    new-instance v14, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v14, v6, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    :goto_89
    move/from16 v14, p4

    :goto_8b
    const/4 v13, 0x1

    goto/16 :goto_111

    .line 3490
    :cond_8e
    iget-object v12, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    move/from16 v14, p4

    if-ge v12, v14, :cond_99

    :goto_98
    goto :goto_8b

    :cond_99
    const/4 v12, -0x1

    if-nez v8, :cond_ae

    if-eq v10, v12, :cond_a3

    .line 3504
    iget v12, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v12, v10, :cond_a3

    :goto_a2
    goto :goto_98

    :cond_a3
    if-ltz v9, :cond_fa

    .line 3507
    iget v12, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v12, v9, :cond_fa

    goto :goto_a2

    .line 3514
    :cond_ae
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    if-eqz v15, :cond_c0

    .line 3515
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c0

    const/4 v15, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v15, 0x0

    :goto_c1
    if-nez v15, :cond_cc

    .line 3516
    iget v13, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_cc

    goto :goto_98

    :cond_cc
    if-eq v10, v12, :cond_d3

    .line 3519
    iget v12, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v12, v10, :cond_d3

    goto :goto_a2

    .line 3522
    :cond_d3
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e0

    if-nez v15, :cond_e0

    goto :goto_98

    :cond_e0
    if-nez v12, :cond_fa

    if-eqz v15, :cond_fa

    if-nez p10, :cond_fa

    .line 3526
    iget-object v12, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_fa

    iget-object v12, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v15, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3527
    invoke-virtual {v0, v12, v13, v15}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_fa

    const/4 v12, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v12, 0x0

    :goto_fb
    if-nez p7, :cond_ff

    const/4 v13, 0x1

    return v13

    :cond_ff
    const/4 v13, 0x1

    if-eqz p9, :cond_105

    .line 3539
    invoke-virtual {v6, v13}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 3541
    :cond_105
    new-instance v15, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v15, v6, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_111
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_31

    :cond_115
    move/from16 v14, p4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    :cond_11b
    const/4 v13, 0x1

    .line 3545
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_121
    if-ge v14, v12, :cond_14d

    .line 3547
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3548
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez p6, :cond_13c

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13a

    goto :goto_13c

    :cond_13a
    const/4 v3, 0x0

    goto :goto_13d

    :cond_13c
    :goto_13c
    move v3, v13

    :goto_13d
    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v4, p11

    move/from16 v5, p12

    move-object/from16 v6, p13

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_121

    :cond_14d
    const/4 v0, 0x0

    .line 3551
    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    .line 3552
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_processEnd"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    if-lez v12, :cond_15d

    move v12, v13

    goto :goto_15e

    :cond_15d
    move v12, v0

    :goto_15e
    return v12
.end method

.method public killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .registers 9

    .line 6010
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 6014
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 6016
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    .line 6017
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_33

    .line 6018
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 6019
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    if-eqz v3, :cond_28

    .line 6021
    :try_start_23
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_33

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catchall_2b
    move-exception p0

    .line 6019
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p0

    .line 6024
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 2698
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    .line 2699
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz p0, :cond_25

    iget p0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_25

    iget p0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2700
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x4

    if-eq v0, p0, :cond_25

    const/4 p0, 0x3

    if-eq v0, p0, :cond_25

    const/4 p0, 0x2

    if-eq v0, p0, :cond_25

    if-eqz v0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    if-eqz p2, :cond_6

    move-object v4, p2

    goto :goto_9

    .line 3742
    :cond_6
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object v4, v1

    .line 3743
    :goto_9
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3744
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p5, :cond_15

    move/from16 v1, p6

    :cond_15
    const/4 v11, 0x1

    if-eqz p3, :cond_68

    if-nez p4, :cond_2c

    move-object/from16 v2, p8

    .line 3750
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_24

    return-object v3

    .line 3754
    :cond_24
    invoke-virtual {v1, v10}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_30

    return-object v3

    :cond_2c
    move-object/from16 v2, p8

    move/from16 v1, p4

    .line 3763
    :cond_30
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v5}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3764
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3772
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 3774
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 3775
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v3

    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v5}, Landroid/os/CustomFrequencyManagerInternal;->addIsolatedUid(II)V

    :cond_60
    const/16 v3, 0x2b

    .line 3778
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v5, v1, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    goto :goto_6a

    :cond_68
    move-object/from16 v2, p8

    :goto_6a
    move v5, v1

    .line 3781
    new-instance v12, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3783
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/HostingRecord;->getDefiningProcessName()Ljava/lang/String;

    move-result-object v8

    move-object v1, v12

    move-object v2, v3

    move-object v3, p1

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3784
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3786
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const/16 v3, -0x320

    if-nez v2, :cond_a5

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v2, :cond_a5

    if-nez v10, :cond_a5

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v4, 0x9

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a5

    const/4 v2, 0x2

    .line 3790
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3791
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3792
    invoke-virtual {v12, v11}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3793
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    :cond_a5
    if-eqz p3, :cond_ae

    if-eqz p4, :cond_ae

    const/16 v2, -0x2bc

    .line 3798
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3803
    :cond_ae
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityManagerServiceExt;->notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V

    .line 3809
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityManagerServiceExt;->setPersistentIfNeeded(Lcom/android/server/am/ProcessRecord;)V

    .line 3813
    invoke-virtual {p0, v12}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3815
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerServiceExt;->shouldAvoidForceStopForTmoPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 3817
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    :cond_ce
    return-object v12
.end method

.method public noteAppKill(IIIILjava/lang/String;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5989
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_33

    const-string v0, "ActivityManager"

    .line 5990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "note: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is being killed, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub-reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5995
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 5996
    :try_start_38
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 5997
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_6a

    if-eqz v1, :cond_5f

    .line 5998
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p2, :cond_5f

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_5f

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 6000
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6001
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 6003
    :cond_5f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    return-void

    :catchall_6a
    move-exception p0

    .line 5997
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5974
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_33

    .line 5975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_53

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_53

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 5980
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5981
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5983
    :cond_53
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void
.end method

.method public noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5954
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_20

    .line 5955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died, saving the exit info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    :cond_20
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 5959
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5960
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4c

    .line 5962
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5963
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5965
    :cond_4c
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1785
    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x3

    .line 1786
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1787
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1788
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4e

    .line 1790
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v2, v1

    .line 1792
    :goto_29
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v2, v4, :cond_43

    .line 1793
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v4, v2

    mul-int/lit16 v4, v4, 0x400

    div-int/lit16 v4, v4, 0x1000

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1794
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1796
    :cond_43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_4e
    const/16 p0, 0x8

    .line 1799
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x5

    .line 1800
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1801
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1802
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1805
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1806
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1807
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1808
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7b} :catch_7c

    return v3

    :catch_7c
    return v1
.end method

.method public onSystemReady()V
    .registers 1

    .line 1005
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    return-void
.end method

.method public final printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "    "

    .line 5289
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    if-ltz p3, :cond_14

    .line 5291
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/16 v1, 0xa

    if-ge p3, v1, :cond_1b

    .line 5292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1b

    :cond_14
    const/16 v1, -0xa

    if-le p3, v1, :cond_1b

    .line 5294
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5296
    :cond_1b
    :goto_1b
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    .line 5297
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5298
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " ("

    .line 5299
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5300
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide p2

    const/16 p0, 0x400

    invoke-static {p2, p3, p0}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    .line 5301
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 2

    .line 5354
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3381
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_cd

    .line 3383
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3384
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_af

    .line 3385
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "ActivityManager"

    .line 3386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    :cond_33
    const-string v3, "ActivityManager"

    .line 3388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_ac

    .line 3390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "B|killProcessQuiet comm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 3391
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v5

    .line 3392
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 3393
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 3394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E|killProcessQuiet pss="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    const/16 v3, 0xd

    const/16 v4, 0x10

    const-string/jumbo v5, "hasn\'t been killed"

    .line 3395
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_af

    .line 3398
    :cond_ac
    invoke-virtual {p1, v4}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 3402
    :cond_af
    :goto_af
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_b6

    sub-int/2addr v3, v1

    .line 3403
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3405
    :cond_b6
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_bd

    sub-int/2addr v3, v1

    .line 3406
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3408
    :cond_bd
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3409
    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_c .. :try_end_c3} :catchall_c7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_cd

    :catchall_c7
    move-exception p0

    :try_start_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 3411
    :cond_cd
    :goto_cd
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method public final removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2598
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2600
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2599
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2602
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2605
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2606
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2605
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    if-eqz v0, :cond_67

    .line 2608
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2609
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2610
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_67

    .line 2611
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2612
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x0

    .line 2615
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_67

    .line 2617
    :cond_54
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2618
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2619
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_67
    :goto_67
    return-void
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    .line 3569
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ASKSManager;->removePackageWithPid(I)V

    .line 3572
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3573
    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3574
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v4, "ActivityManager"

    if-eqz v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force removing proc "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3574
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :cond_40
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    if-eq v3, v7, :cond_60

    .line 3580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring remove of inactive process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 3583
    :cond_60
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3584
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3587
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/16 v1, 0x14

    if-lez v3, :cond_7a

    .line 3588
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v3, v2, :cond_82

    :cond_7a
    if-nez v3, :cond_114

    .line 3589
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v2

    if-eqz v2, :cond_114

    :cond_82
    if-lez v3, :cond_d3

    .line 3591
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    .line 3592
    invoke-virtual {p1, v5}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 3593
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3594
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3595
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_d3

    .line 3596
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3598
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 3599
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v1

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v4}, Landroid/os/CustomFrequencyManagerInternal;->removeIsolatedUid(II)V

    .line 3602
    :cond_c8
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3614
    :cond_d3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_ea

    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_ea

    if-nez p2, :cond_e5

    move v1, p4

    move v4, p5

    move v8, v2

    move v9, v5

    goto :goto_ee

    :cond_e5
    move v1, p4

    move v4, p5

    move v9, v2

    move v8, v5

    goto :goto_ee

    :cond_ea
    move v1, p4

    move v4, p5

    move v8, v5

    move v9, v8

    :goto_ee
    move-object/from16 v5, p6

    .line 3621
    invoke-virtual {p1, v5, p4, p5, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 3622
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v8

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    if-eqz v8, :cond_112

    .line 3629
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3630
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move p3, v3

    move-object p4, v4

    move p5, v5

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_112
    move v5, v9

    goto :goto_11f

    .line 3636
    :cond_114
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 3639
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11f
    return v5
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 3559
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3825
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3831
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_c

    move-object v1, p3

    goto :goto_d

    :cond_c
    move-object v1, v0

    .line 3833
    :goto_d
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    if-eqz p3, :cond_17

    if-ne v0, p3, :cond_1c

    .line 3838
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_1c
    if-eqz p3, :cond_3e

    .line 3841
    iget-boolean p1, p3, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    if-eqz p1, :cond_3e

    const-string p1, "ActivityManager"

    .line 3842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already removed. so we skip next process."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz v1, :cond_9a

    .line 3846
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_9a

    if-eqz p3, :cond_4c

    .line 3847
    iget-boolean p3, p3, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    if-nez p3, :cond_9a

    .line 3852
    :cond_4c
    invoke-virtual {p1, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x1

    .line 3854
    iput-boolean p3, v1, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    .line 3856
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result p3

    if-nez p3, :cond_96

    .line 3858
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz p3, :cond_72

    const-string p3, "ActivityManager"

    .line 3859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more processes in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    :cond_72
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    const v4, -0x7fffffff

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3863
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3864
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3865
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object p3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 3866
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 p3, 0x14

    const/4 v3, 0x0

    invoke-virtual {p1, p2, p3, v3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    :cond_96
    const/4 p1, 0x0

    .line 3869
    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3872
    :cond_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_10 .. :try_end_9b} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3873
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3874
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    if-eqz v1, :cond_b1

    .line 3876
    iget-boolean p1, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz p1, :cond_b1

    .line 3877
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3879
    :cond_b1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-object v0

    :catchall_b7
    move-exception p0

    .line 3872
    :try_start_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public scheduleDispatchProcessDiedLocked(II)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5481
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_28

    .line 5483
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    if-lez p1, :cond_25

    .line 5484
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_25

    .line 5485
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5486
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 5489
    :cond_28
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5490
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 5491
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/ProcessRecord;",
            "TR;>;)TR;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    .line 4700
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-ge p1, v0, :cond_39

    .line 4702
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 4707
    :cond_1d
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_25
    if-ltz p1, :cond_39

    .line 4709
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    return-object v0

    :cond_36
    add-int/lit8 p1, p1, -0x1

    goto :goto_25

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5582
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_3c

    .line 5583
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5584
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_39

    const/4 v5, -0x1

    if-eq p3, v5, :cond_20

    .line 5585
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p3, :cond_39

    .line 5587
    :cond_20
    :try_start_20
    array-length v5, p2

    sub-int/2addr v5, v1

    :goto_22
    if-ltz v5, :cond_36

    if-nez v2, :cond_36

    .line 5588
    aget-object v6, p2, v5

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v2, v1

    :cond_33
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 5592
    :cond_36
    invoke-interface {v4, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_3c
    if-nez v2, :cond_45

    .line 5600
    :try_start_3e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    return-void
.end method

.method public setAllHttpProxy()V
    .registers 7

    .line 3957
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3958
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_4b

    .line 3959
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3960
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3964
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_48

    if-eqz v3, :cond_48

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_57

    if-nez v4, :cond_48

    .line 3966
    :try_start_2a
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_57

    goto :goto_48

    :catch_2e
    :try_start_2e
    const-string v3, "ActivityManager"

    .line 3968
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update http proxy for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 3973
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3974
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    return-void

    :catchall_57
    move-exception p0

    .line 3973
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setLruProcessServiceStartLSP(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProfileLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4655
    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return-void
.end method

.method public setTrimCriticalTH(I)V
    .registers 2

    .line 1835
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    return-void
.end method

.method public setTrimLowlTH(I)V
    .registers 2

    .line 1839
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    return-void
.end method

.method public setmIsDisplayChanged(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 1044
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    :cond_5
    return-void
.end method

.method public final startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v15, p4

    move-wide/from16 v13, p13

    const-wide/16 v11, 0x40

    .line 2714
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start proc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v2, "startProcess: asking zygote to start proc"

    .line 2716
    invoke-virtual {v0, v13, v14, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2718
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 2721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "(WebviewZygote):"

    goto :goto_49

    .line 2722
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "(AppZygote):"

    goto :goto_49

    :cond_47
    const-string v3, ":"

    :goto_49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2725
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 2726
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startProcess"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    goto :goto_a8

    .line 2728
    :cond_83
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v16

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startProcess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x2710

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 2732
    :cond_a8
    :goto_a8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v18

    const/4 v10, 0x1

    if-eqz v18, :cond_b4

    .line 2737
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2743
    :cond_b4
    iget-boolean v2, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_d8

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2744
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_c9

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_d8

    :cond_c9
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v3, 0x89450c5

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2745
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_d8

    move v2, v10

    goto :goto_d9

    :cond_d8
    move v2, v9

    .line 2749
    :goto_d9
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 2750
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2752
    array-length v5, v4

    if-nez v5, :cond_f4

    new-array v4, v10, [Ljava/lang/String;

    .line 2753
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v9

    .line 2755
    :cond_f4
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessList;->hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result v5

    .line 2757
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_103

    move v2, v9

    .line 2766
    :cond_103
    new-instance v7, Landroid/util/ArraySet;

    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2767
    array-length v8, v4
    :try_end_10b
    .catchall {:try_start_a .. :try_end_10b} :catchall_35b

    move v11, v9

    :goto_10c
    if-ge v11, v8, :cond_116

    :try_start_10e
    aget-object v12, v4, v11

    .line 2768
    invoke-interface {v7, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_10c

    :cond_116
    new-array v4, v9, [Ljava/lang/String;

    .line 2772
    invoke-interface {v7, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2771
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_125

    move v2, v9

    :cond_125
    const/4 v4, 0x0

    if-nez v5, :cond_12d

    move-object v3, v4

    move-object v6, v3

    move/from16 v21, v9

    goto :goto_12f

    :cond_12d
    move/from16 v21, v2

    .line 2785
    :goto_12f
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2786
    const-class v2, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/os/storage/StorageManagerInternal;

    .line 2788
    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_150

    if-eqz v6, :cond_14d

    .line 2791
    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v2

    if-eqz v2, :cond_14d

    move/from16 v25, v10

    goto :goto_152

    .line 2796
    :cond_14d
    invoke-virtual {v1, v10}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    :cond_150
    move/from16 v25, v9

    .line 2803
    :goto_152
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_15b

    move-object/from16 v22, v4

    move-object/from16 v26, v22

    goto :goto_15f

    :cond_15b
    move-object/from16 v22, v3

    move-object/from16 v26, v6

    .line 2808
    :goto_15f
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v2, :cond_190

    .line 2810
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 2813
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_178
    .catchall {:try_start_10e .. :try_end_178} :catchall_357

    :try_start_178
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2814
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2815
    monitor-exit v3
    :try_end_181
    .catchall {:try_start_178 .. :try_end_181} :catchall_185

    :try_start_181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_357

    goto :goto_18b

    :catchall_185
    move-exception v0

    :try_start_186
    monitor-exit v3
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_185

    :try_start_187
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2817
    :cond_18b
    :goto_18b
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 2822
    :cond_190
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 2823
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2827
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v19

    new-array v10, v10, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v9
    :try_end_1c4
    .catchall {:try_start_187 .. :try_end_1c4} :catchall_357

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v20, v6

    move-object/from16 v6, p5

    move-object/from16 v21, v7

    move/from16 v7, p6

    move/from16 v22, v8

    move/from16 v8, p8

    move/from16 v27, v9

    move/from16 v9, v22

    move-object/from16 v22, v10

    move-object/from16 v10, p9

    move-object/from16 v28, v11

    const-wide/16 v29, 0x40

    move-object/from16 v11, p10

    move/from16 v31, v12

    move-object/from16 v12, p11

    move-object/from16 v13, v21

    move-object/from16 v14, v18

    move-object/from16 v15, v20

    move-object/from16 v16, v19

    move-object/from16 v17, v22

    .line 2823
    :try_start_1f2
    invoke-static/range {v2 .. v17}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    :goto_1f6
    move/from16 v10, v27

    goto/16 :goto_2bf

    :cond_1fa
    move/from16 v27, v9

    move-object/from16 v28, v11

    move/from16 v31, v12

    const-wide/16 v29, 0x40

    .line 2829
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v2

    if-eqz v2, :cond_269

    .line 2830
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v2

    .line 2833
    invoke-virtual {v2}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    .line 2838
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    new-array v12, v10, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v27

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move v10, v11

    move-object/from16 v11, p9

    move-object/from16 v32, v12

    move-object/from16 v12, p10

    move-object/from16 v16, v13

    move-object/from16 v13, p11

    move-object/from16 v20, v26

    move-object/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v32

    .line 2833
    invoke-virtual/range {v2 .. v24}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    goto :goto_1f6

    .line 2843
    :cond_269
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2847
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v19

    new-array v14, v10, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seq="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v27

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v24, v10

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v23, v14

    move-object/from16 v14, p12

    move/from16 v16, p7

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v22

    move/from16 v22, v25

    .line 2843
    invoke-static/range {v2 .. v23}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move/from16 v10, v24

    :goto_2bf
    if-nez v10, :cond_2f2

    .line 2854
    iget v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    move/from16 v4, p4

    invoke-static {v4, v3}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v3

    if-gez v3, :cond_2f2

    const-string v3, "ActivityManager"

    .line 2855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create process group for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f2
    const-string v3, "activity"

    .line 2861
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33a

    if-eqz v2, :cond_33a

    .line 2862
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v3, :cond_30a

    .line 2863
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2865
    :cond_30a
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v3, :cond_33a

    .line 2867
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v4, :cond_335

    .line 2868
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_31f

    move/from16 v9, v27

    goto :goto_32b

    .line 2869
    :cond_31f
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v9

    :goto_32b
    if-nez v9, :cond_33a

    .line 2870
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget v4, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    goto :goto_33a

    .line 2872
    :cond_335
    iget v4, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    :cond_33a
    :goto_33a
    if-eqz v25, :cond_349

    .line 2884
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v5, v28

    move/from16 v4, v31

    invoke-virtual {v5, v4, v3, v1}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    :cond_349
    const-string/jumbo v1, "startProcess: returned from zygote!"

    move-wide/from16 v3, p13

    .line 2887
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_351
    .catchall {:try_start_1f2 .. :try_end_351} :catchall_355

    .line 2890
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :catchall_355
    move-exception v0

    goto :goto_35e

    :catchall_357
    move-exception v0

    const-wide/16 v29, 0x40

    goto :goto_35e

    :catchall_35b
    move-exception v0

    move-wide/from16 v29, v11

    :goto_35e
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    .line 2891
    throw v0
.end method

.method public startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .registers 36
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const/16 v17, 0x0

    const/16 v18, -0x1

    .line 2925
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/am/ProcessList;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method public final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;
    .registers 46
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v0, p3

    move/from16 v13, p8

    move/from16 v14, p18

    .line 2939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2941
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2942
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v15, "/"

    const/16 v16, 0x0

    const-string v3, "ActivityManager"

    if-nez v13, :cond_ce

    .line 2945
    iget v4, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11, v4}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    const-string/jumbo v5, "startProcess: after getProcessRecord"

    .line 2946
    invoke-virtual {v10, v6, v7, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_60

    .line 2951
    iget-object v5, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v11, v13}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2952
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-object v16

    :cond_5d
    move-object/from16 v19, v15

    goto :goto_d2

    .line 2961
    :cond_60
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_80

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing bad process: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    :cond_80
    iget-object v5, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v11, v13}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    .line 2964
    iget-object v5, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v11, v13}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5d

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 2965
    iget v5, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2966
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x0

    aput-object v5, v13, v18

    iget v5, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0x1

    aput-object v5, v13, v17

    const/4 v5, 0x2

    move-object/from16 v19, v15

    iget-object v15, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v15, v13, v5

    const/16 v5, 0x7540

    .line 2965
    invoke-static {v5, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2968
    iget-object v5, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v11, v13}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    if-eqz v4, :cond_d2

    .line 2970
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_d2

    :cond_ce
    move-object/from16 v19, v15

    move-object/from16 v4, v16

    .line 2985
    :cond_d2
    :goto_d2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_11c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startProcess: name="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " app="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " knownToBeDead="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " thread="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_100

    .line 2987
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v15

    goto :goto_102

    :cond_100
    move-object/from16 v15, v16

    :goto_102
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " pid="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_111

    .line 2988
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    goto :goto_112

    :cond_111
    const/4 v15, -0x1

    :goto_112
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2985
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    const-string v15, "IpmLaunch"

    const-string v5, "activelaunch"

    const-wide/16 v13, -0x1

    if-eqz v4, :cond_232

    .line 2990
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v20

    if-lez v20, :cond_232

    if-nez v0, :cond_132

    .line 2991
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v20

    if-eqz v20, :cond_138

    :cond_132
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v20

    if-nez v20, :cond_1c4

    .line 2994
    :cond_138
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_150

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already running: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_150
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v0, v11, v12, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 3009
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v0

    if-eqz v0, :cond_166

    if-eqz p17, :cond_166

    .line 3010
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 3013
    :cond_166
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    move-wide v11, v13

    move/from16 v13, p18

    if-nez v0, :cond_174

    if-nez v13, :cond_174

    .line 3015
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 3018
    :cond_174
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v0

    if-nez v0, :cond_180

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-nez v0, :cond_192

    :cond_180
    if-nez p17, :cond_192

    const/4 v3, -0x1

    if-ne v13, v3, :cond_192

    const/4 v14, 0x0

    .line 3020
    invoke-virtual {v4, v14}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 3021
    invoke-virtual {v4, v11, v12}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 3022
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 3023
    invoke-virtual {v4, v11, v12}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    :cond_192
    if-eqz p17, :cond_1ad

    .line 3026
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 3027
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->setLmkdLaunchPid(I)V

    const/4 v3, 0x1

    .line 3028
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setIsforKeeping(Z)V

    .line 3029
    invoke-virtual {v4, v1, v2}, Lcom/android/server/am/ProcessRecord;->setAppKeepingTime(J)V

    goto :goto_1ae

    :cond_1ad
    const/4 v3, 0x1

    :goto_1ae
    if-ne v13, v3, :cond_1bd

    .line 3032
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 3033
    invoke-virtual {v4, v13}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    :cond_1bd
    const-string/jumbo v0, "startProcess: done, added package to proc"

    .line 3038
    invoke-virtual {v10, v6, v7, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v4

    :cond_1c4
    move-wide v1, v13

    const/4 v14, 0x0

    const/16 v17, 0x1

    move/from16 v13, p18

    .line 3044
    sget-boolean v18, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v18, :cond_1e2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e2
    const-string/jumbo v1, "startProcess: bad proc running, killing"

    .line 3045
    invoke-virtual {v10, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3046
    iget v1, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    const-string/jumbo v1, "startProcess: done killing old proc"

    .line 3047
    invoke-virtual {v10, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3049
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v1

    const-string v2, " is attached to a previous process"

    if-nez v1, :cond_216

    .line 3051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22c

    .line 3053
    :cond_216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22c
    move/from16 v14, p8

    move-object v2, v4

    move-object/from16 v4, v16

    goto :goto_278

    :cond_232
    move/from16 v13, p18

    const/16 v17, 0x1

    move/from16 v14, p8

    if-nez v14, :cond_274

    .line 3062
    iget-object v1, v10, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v2, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v11, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_26e

    if-eqz v4, :cond_24c

    .line 3065
    iput-object v1, v4, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 3066
    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 3068
    :cond_24c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is attached to a previous process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3068
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_270

    :cond_26e
    move-object/from16 v21, v4

    :goto_270
    move-object v2, v1

    move-object/from16 v4, v21

    goto :goto_278

    :cond_274
    move-object/from16 v21, v4

    move-object/from16 v2, v16

    :goto_278
    if-nez v4, :cond_42c

    const-string/jumbo v1, "startProcess: creating new process record"

    .line 3074
    invoke-virtual {v10, v6, v7, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object/from16 v1, p0

    move-object v4, v2

    move-object/from16 v2, p2

    move-object v10, v3

    move-object/from16 v3, p1

    move-object/from16 v22, v4

    move/from16 v13, v17

    move/from16 v4, p8

    move-object v13, v5

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v5, p9

    move-wide/from16 v23, v6

    move/from16 v6, p10

    move/from16 v7, p11

    move-wide/from16 v25, v8

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    .line 3075
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v12, :cond_2fa

    if-eqz v0, :cond_2fa

    .line 3080
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fa

    .line 3087
    :try_start_2b4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget v5, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3088
    invoke-static {v5}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v5

    .line 3087
    invoke-interface {v0, v1, v2, v3, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_2c6
    .catch Landroid/os/RemoteException; {:try_start_2b4 .. :try_end_2c6} :catch_2cc
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2c6} :catch_2c7

    goto :goto_2d2

    :catch_2c7
    move-exception v0

    .line 3092
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d0

    :catch_2cc
    move-exception v0

    .line 3090
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2d0
    move-object/from16 v0, v16

    :goto_2d2
    if-eqz v0, :cond_2fa

    .line 3095
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_2f6

    .line 3096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating resourceDir for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_2f6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    :cond_2fa
    if-nez v4, :cond_323

    .line 3106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isolated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_323
    if-eqz p17, :cond_339

    .line 3113
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_339

    const/4 v1, 0x1

    .line 3114
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    move-wide/from16 v2, v25

    .line 3115
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto :goto_34b

    :cond_339
    move-wide/from16 v2, v25

    const/4 v1, 0x1

    .line 3117
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v0

    if-eqz v0, :cond_34b

    .line 3118
    invoke-virtual {v4, v15}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    const-wide/16 v5, -0x1

    .line 3119
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto :goto_34d

    :cond_34b
    :goto_34b
    const-wide/16 v5, -0x1

    .line 3123
    :goto_34d
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_363

    move v7, v1

    move/from16 v1, p18

    .line 3124
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 3125
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    goto :goto_36b

    :cond_363
    move v7, v1

    const/4 v1, -0x1

    .line 3127
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 3128
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 3134
    :goto_36b
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    move-object/from16 v1, p14

    .line 3135
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPoint(Ljava/lang/String;)V

    move-object/from16 v1, p15

    .line 3136
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    move-object/from16 v1, v22

    if-eqz v1, :cond_384

    .line 3138
    iput-object v1, v4, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 3139
    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    :cond_384
    move-object/from16 v1, p0

    move-object v2, v10

    .line 3143
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->isImsProcess(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "] as persistent"

    const/16 v5, -0x320

    const/16 v6, 0x9

    if-eqz v0, :cond_3cf

    .line 3144
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_3cf

    .line 3145
    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3146
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IMS-AM] startProcessLocked () Set ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_3cf
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result v0

    const/16 v8, 0x4d

    if-ne v0, v8, :cond_423

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.sec.android.sdhms"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_423

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    if-ne v0, v8, :cond_423

    .line 3156
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_423

    .line 3157
    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3158
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDHMS] startProcessLocked() Set ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_423
    const-string/jumbo v0, "startProcess: done creating new process record"

    move-wide/from16 v5, v23

    .line 3166
    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    goto :goto_440

    :cond_42c
    move-object v2, v3

    move-wide v5, v6

    move-object v1, v10

    .line 3169
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v7, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v0, v7, v8, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    const-string/jumbo v0, "startProcess: added package to existing proc"

    .line 3170
    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3175
    :goto_440
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v0, :cond_480

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3176
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_480

    if-nez p7, :cond_480

    .line 3178
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_461

    .line 3179
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    :cond_461
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_479

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System not ready, putting on hold: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_479
    const-string/jumbo v0, "startProcess: returning with proc on hold"

    .line 3183
    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v4

    :cond_480
    const-string/jumbo v0, "startProcess: stepping in to startProcess"

    .line 3187
    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v7, p13

    .line 3189
    invoke-virtual {v1, v4, v2, v3, v7}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "startProcess: done starting proc!"

    .line 3190
    invoke-virtual {v1, v5, v6, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    if-eqz v0, :cond_49a

    move-object/from16 v16, v4

    :cond_49a
    return-object v16
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2907
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    return-void
.end method

.method public startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .registers 33
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v11, p3

    const/4 v14, 0x1

    .line 2401
    invoke-virtual {v11, v14}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    const/4 v1, 0x0

    .line 2402
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2403
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2404
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setKilledByAm(Z)V

    .line 2405
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setKilled(Z)V

    .line 2406
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1f7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2410
    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    .line 2415
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_a9

    .line 2417
    :try_start_22
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 2418
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_a9

    const-string v3, "ActivityManager"

    .line 2419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SkipProcess: screenState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isScreenOn()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2419
    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v2, v11}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2425
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2426
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setPid(I)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_91} :catch_92

    return v1

    :catch_92
    move-exception v0

    const-string v3, "ActivityManager"

    .line 2430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SkipProcess e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    :cond_a9
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_d8

    const-string v0, "ActivityManager"

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2436
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_d8
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_103

    const-string v0, "ActivityManager"

    .line 2440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2440
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    const/4 v0, 0x0

    .line 2443
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2444
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_114

    .line 2445
    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2447
    :cond_114
    iget-wide v3, v2, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v5, 0x1

    add-long v12, v3, v5

    iput-wide v12, v2, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 2448
    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-wide/from16 v7, p13

    move-wide/from16 v9, p15

    .line 2449
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V

    if-nez p12, :cond_13b

    .line 2450
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2451
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    goto :goto_13b

    :cond_139
    move v0, v1

    goto :goto_13c

    :cond_13b
    :goto_13b
    move v0, v14

    .line 2450
    :goto_13c
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2452
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2454
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_18c

    .line 2455
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_16a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting procStart msg for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2455
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_16a
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v15, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v14

    .line 2463
    :cond_18c
    :try_start_18c
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2467
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v4, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, p3

    move/from16 p6, v3

    move/from16 p7, v0

    move-wide/from16 p8, v12

    move/from16 p10, v4

    invoke-virtual/range {p4 .. p10}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_1a4
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_1a4} :catch_1a5

    goto :goto_1ee

    :catch_1a5
    move-exception v0

    const-string v3, "ActivityManager"

    .line 2470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure starting process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2472
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2473
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v10, "start failure"

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move/from16 p11, v8

    move/from16 p12, v9

    move-object/from16 p13, v10

    invoke-virtual/range {p4 .. p13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2476
    :goto_1ee
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1f5

    goto :goto_1f6

    :cond_1f5
    move v14, v1

    :goto_1f6
    return v14

    :catchall_1f7
    move-exception v0

    .line 2406
    :try_start_1f8
    monitor-exit v3
    :try_end_1f9
    .catchall {:try_start_1f8 .. :try_end_1f9} :catchall_1f7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 2913
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 2010
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 2013
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2014
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 2015
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v2, :cond_4c

    const-string/jumbo v0, "startProcess: removing from pids map"

    .line 2016
    invoke-virtual {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2017
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    .line 2018
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 2019
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v15}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const-string/jumbo v0, "startProcess: done removing from pids map"

    .line 2020
    invoke-virtual {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2021
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    const-wide/16 v2, 0x0

    .line 2022
    invoke-virtual {v15, v2, v3}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 2025
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 2026
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 2029
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->needToBlockImsRequest(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string v0, "ActivityManager"

    .line 2031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMS-AM] startProcessLocked(1) Block ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] of non-active user ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    return v11

    .line 2038
    :cond_8d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_b2

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcessLocked removing on hold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_b2
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "startProcess: starting to update cpu stats"

    .line 2043
    invoke-virtual {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2044
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const-string/jumbo v0, "startProcess: done updating cpu stats"

    .line 2045
    invoke-virtual {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2048
    :try_start_ca
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_d0
    .catch Ljava/lang/RuntimeException; {:try_start_ca .. :try_end_d0} :catch_4b9

    .line 2050
    :try_start_d0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_db} :catch_4af
    .catch Ljava/lang/RuntimeException; {:try_start_d0 .. :try_end_db} :catch_4b9

    .line 2055
    :try_start_db
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2059
    iget-boolean v3, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_df
    .catch Ljava/lang/RuntimeException; {:try_start_db .. :try_end_df} :catch_4b9

    const/4 v4, 0x0

    if-nez v3, :cond_1a4

    :try_start_e2
    const-string/jumbo v3, "startProcess: getting gids from package manager"

    .line 2062
    invoke-virtual {v14, v12, v13, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2063
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 2064
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/32 v6, 0x10000000

    iget v8, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v5

    .line 2066
    const-class v6, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManagerInternal;

    .line 2068
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v7

    .line 2070
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2, v8}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v6

    const-string v8, "android.permission.INSTALL_PACKAGES"

    .line 2072
    iget-object v9, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v8, v9, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_13c

    const-string v3, "ActivityManager"

    .line 2075
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is exempt from freezer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V

    .line 2078
    :cond_13c
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->checkFreezerExempt(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_161

    const-string v3, "ActivityManager"

    .line 2079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is exempt from freezer by list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_161} :catch_19e
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_161} :catch_4b9

    .line 2089
    :cond_161
    :try_start_161
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v3, :cond_198

    iget-object v3, v3, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v3, :cond_198

    .line 2090
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_16e
    if-ltz v3, :cond_198

    .line 2091
    iget-object v8, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v9, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v9, v9, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 2092
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 2091
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v8

    if-eqz v8, :cond_194

    .line 2094
    array-length v9, v8
    :try_end_187
    .catch Ljava/lang/RuntimeException; {:try_start_161 .. :try_end_187} :catch_4b9

    move v10, v11

    :goto_188
    if-ge v10, v9, :cond_194

    :try_start_18a
    aget v11, v8, v10

    .line 2095
    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    goto :goto_188

    :cond_194
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x0

    goto :goto_16e

    .line 2101
    :cond_198
    invoke-virtual {v14, v7, v2, v5, v6}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v3

    move v9, v7

    goto :goto_1a6

    :catch_19e
    move-exception v0

    .line 2083
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1a4
    move-object v3, v4

    const/4 v9, 0x0

    .line 2103
    :goto_1a6
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    const-string/jumbo v5, "startProcess: building args"

    .line 2104
    invoke-virtual {v14, v12, v13, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2105
    iget-object v5, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    const/4 v5, 0x0

    goto :goto_1c0

    :cond_1bf
    move v5, v2

    .line 2110
    :goto_1c0
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1ca

    move v2, v1

    goto :goto_1cb

    :cond_1ca
    const/4 v2, 0x0

    .line 2111
    :goto_1cb
    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v6

    .line 2112
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v7

    .line 2114
    iget-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_1f5

    .line 2115
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_1f5

    .line 2117
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1e9

    move v10, v1

    goto :goto_1ea

    :cond_1e9
    const/4 v10, 0x0

    :goto_1ea
    or-int/2addr v2, v10

    .line 2118
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v10

    or-int/2addr v6, v10

    .line 2119
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v8

    or-int/2addr v7, v8

    :cond_1f5
    if-eqz v2, :cond_225

    const/16 v8, 0x103

    .line 2131
    iget-object v10, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "art_verifier_verify_debuggable"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_222

    const-string v10, "ActivityManager"

    .line 2134
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": ART verification disabled"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x303

    goto :goto_227

    :cond_222
    move/from16 v19, v8

    goto :goto_227

    :cond_225
    const/16 v19, 0x0

    .line 2139
    :goto_227
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x4000

    if-nez v8, :cond_235

    iget-object v8, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v8, :cond_237

    :cond_235
    or-int/lit8 v19, v19, 0x8

    :cond_237
    if-eqz v6, :cond_23e

    const v6, 0x8000

    or-int v19, v19, v6

    :cond_23e
    if-eqz v7, :cond_244

    const/high16 v6, 0x1000000

    or-int v19, v19, v6

    :cond_244
    const-string v6, "1"

    const-string v7, "debug.checkjni"

    .line 2148
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_254

    or-int/lit8 v19, v19, 0x2

    :cond_254
    const-string v6, "debug.generate-debug-info"

    .line 2151
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    .line 2152
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26b

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26d

    :cond_26b
    or-int/lit8 v19, v19, 0x20

    :cond_26d
    move/from16 v6, v19

    const-string v7, "dalvik.vm.minidebuginfo"

    .line 2155
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 2156
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_286

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_288

    :cond_286
    or-int/lit16 v6, v6, 0x800

    :cond_288
    const-string v7, "1"

    const-string v8, "debug.jni.logging"

    .line 2159
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_298

    or-int/lit8 v6, v6, 0x10

    :cond_298
    const-string v7, "1"

    const-string v8, "debug.assert"

    .line 2162
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a8

    or-int/lit8 v6, v6, 0x4

    :cond_2a8
    const-string v7, "1"

    const-string v8, "debug.ignoreappsignalhandler"

    .line 2165
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b9

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    .line 2168
    :cond_2b9
    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v7, :cond_2d1

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2169
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d1

    or-int/lit8 v6, v6, 0x40

    or-int/lit8 v6, v6, 0x20

    or-int/lit16 v6, v6, 0x80

    .line 2174
    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v7, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    .line 2177
    :cond_2d1
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v7

    if-eqz v7, :cond_2dc

    or-int/lit16 v6, v6, 0x400

    goto :goto_2fe

    .line 2179
    :cond_2dc
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v7

    if-eqz v7, :cond_2fe

    .line 2180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v7

    .line 2181
    monitor-enter v7
    :try_end_2e9
    .catch Ljava/lang/RuntimeException; {:try_start_18a .. :try_end_2e9} :catch_4ab

    .line 2183
    :try_start_2e9
    invoke-virtual {v7}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 2182
    invoke-static {v8}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2f9

    or-int/lit16 v6, v6, 0x400

    .line 2186
    :cond_2f9
    monitor-exit v7

    goto :goto_2fe

    :catchall_2fb
    move-exception v0

    monitor-exit v7
    :try_end_2fd
    .catchall {:try_start_2e9 .. :try_end_2fd} :catchall_2fb

    :try_start_2fd
    throw v0

    :cond_2fe
    :goto_2fe
    if-nez p4, :cond_343

    .line 2189
    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v7

    if-nez v7, :cond_343

    .line 2190
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 2191
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v8

    .line 2190
    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 2192
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2193
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v7

    .line 2194
    sget v8, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v8, v7, v8

    and-int/lit16 v10, v8, 0x3000

    if-ne v10, v8, :cond_32c

    or-int/2addr v6, v8

    if-eqz p5, :cond_343

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    goto :goto_343

    .line 2196
    :cond_32c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid API policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_343
    :goto_343
    const-string/jumbo v7, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v8, ""

    .line 2205
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2208
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_35d

    const-string v8, "false"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35d

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    :cond_35d
    if-eqz v2, :cond_3a1

    .line 2215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/wrap.sh"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2216
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7
    :try_end_378
    .catch Ljava/lang/RuntimeException; {:try_start_2fd .. :try_end_378} :catch_4ab

    .line 2218
    :try_start_378
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_395

    .line 2219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/bin/logwrapper "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_394
    .catchall {:try_start_378 .. :try_end_394} :catchall_39c

    goto :goto_396

    :cond_395
    move-object v2, v4

    .line 2222
    :goto_396
    :try_start_396
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object/from16 v19, v2

    goto :goto_3a3

    :catchall_39c
    move-exception v0

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2223
    throw v0

    :cond_3a1
    move-object/from16 v19, v4

    :goto_3a3
    if-eqz p6, :cond_3a8

    move-object/from16 v2, p6

    goto :goto_3ac

    .line 2226
    :cond_3a8
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    :goto_3ac
    if-nez v2, :cond_3b9

    .line 2228
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_3b0
    .catch Ljava/lang/RuntimeException; {:try_start_396 .. :try_end_3b0} :catch_4ab

    const/4 v7, 0x0

    :try_start_3b1
    aget-object v2, v2, v7
    :try_end_3b3
    .catch Ljava/lang/RuntimeException; {:try_start_3b1 .. :try_end_3b3} :catch_3b4

    goto :goto_3b9

    :catch_3b4
    move-exception v0

    move/from16 v18, v7

    goto/16 :goto_4bc

    :cond_3b9
    :goto_3b9
    move-object v11, v2

    .line 2232
    :try_start_3ba
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_3c6

    .line 2235
    invoke-static {v11}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_3c7

    :cond_3c6
    move-object v10, v4

    :goto_3c7
    if-eqz v3, :cond_3e3

    .line 2239
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->isMobileDoctorInMaintenanceMode(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_3e3

    .line 2240
    array-length v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [I

    .line 2241
    array-length v4, v3
    :try_end_3d4
    .catch Ljava/lang/RuntimeException; {:try_start_3ba .. :try_end_3d4} :catch_4ab

    const/4 v7, 0x0

    :try_start_3d5
    invoke-static {v3, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3d8
    .catch Ljava/lang/RuntimeException; {:try_start_3d5 .. :try_end_3d8} :catch_3b4

    .line 2242
    :try_start_3d8
    array-length v3, v3

    const-string/jumbo v4, "radio"

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    move-object v3, v2

    .line 2247
    :cond_3e3
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    .line 2248
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v15, v10}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V

    .line 2256
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_402

    .line 2257
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2259
    iput v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_404

    .line 2261
    :cond_402
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2264
    :goto_404
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v2, v4, v10, v7}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v2

    or-int v7, v6, v2

    .line 2268
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_448

    const-string v2, "ActivityManager"

    const-string v4, "SELinux tag not defined"

    .line 2269
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELinux tag not defined for "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2273
    :cond_448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_461

    const-string v2, ""

    goto :goto_465

    :cond_461
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-eqz v3, :cond_48a

    .line 2279
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_48a

    .line 2280
    array-length v0, v3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2281
    array-length v1, v3
    :try_end_47a
    .catch Ljava/lang/RuntimeException; {:try_start_3d8 .. :try_end_47a} :catch_4ab

    const/4 v8, 0x0

    :try_start_47b
    invoke-static {v3, v8, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2282
    array-length v1, v3

    invoke-static {v8}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    .line 2284
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    move-object v6, v0

    goto :goto_48c

    :cond_48a
    const/4 v8, 0x0

    move-object v6, v3

    :goto_48c
    const-string v3, "android.app.ActivityThread"
    :try_end_48e
    .catch Ljava/lang/RuntimeException; {:try_start_47b .. :try_end_48e} :catch_4a7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move/from16 v18, v8

    move/from16 v8, p3

    move-object v0, v10

    move-object/from16 v10, v21

    move-wide/from16 v20, v12

    move-object v12, v0

    move-object/from16 v13, v19

    move-wide/from16 v14, v20

    .line 2346
    :try_start_4a2
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    return v0

    :catch_4a7
    move-exception v0

    move/from16 v18, v8

    goto :goto_4bc

    :catch_4ab
    move-exception v0

    const/16 v18, 0x0

    goto :goto_4bc

    :catch_4af
    move-exception v0

    move/from16 v18, v11

    .line 2052
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_4b7
    .catch Ljava/lang/RuntimeException; {:try_start_4a2 .. :try_end_4b7} :catch_4b7

    :catch_4b7
    move-exception v0

    goto :goto_4bc

    :catch_4b9
    move-exception v0

    move/from16 v18, v11

    :goto_4bc
    const-string v1, "ActivityManager"

    .line 2350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p0

    .line 2358
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v10, "start failure"

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    return v18
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 2

    .line 5358
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public updateAllTimePrefsLOSP(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3941
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 3942
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3943
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3946
    :try_start_18
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 3948
    :catch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update preferences for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 5543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5544
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_35

    .line 5545
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 5546
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_32

    :cond_1e
    const/4 v3, -0x1

    if-eq p2, v3, :cond_26

    .line 5550
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_26

    goto :goto_32

    .line 5554
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3, p1, v2, v0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 5576
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    return-void
.end method

.method public updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 5883
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 5885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5886
    new-instance v6, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    invoke-virtual {p1, v6}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5906
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p1, "updateOomAdj_meh"

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public final updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 4066
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4067
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_329

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_329

    .line 4068
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_329

    .line 4074
    :cond_1c
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4075
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    const-string v6, " group="

    const-string v8, " @ "

    const-string v9, "ActivityManager"

    if-lez v4, :cond_14c

    .line 4077
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    move/from16 v10, p4

    move v11, v3

    move v3, v10

    :goto_34
    if-lt v3, v2, :cond_14e

    .line 4079
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 4080
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4081
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v14

    .line 4082
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v13

    .line 4083
    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v1, :cond_140

    if-ne v14, v4, :cond_140

    if-ne v3, v10, :cond_89

    if-lt v13, v11, :cond_89

    .line 4089
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v15, :cond_82

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keeping in-place above "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " endImportance="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " importance="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    add-int/lit8 v10, v10, -0x1

    move/from16 v16, v4

    :goto_86
    move v11, v13

    goto/16 :goto_146

    .line 4099
    :cond_89
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_a9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pulling up "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to position in group with importance="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    move/from16 v5, p2

    :goto_ab
    const-string v14, " from position "

    const-string v15, "Moving "

    if-le v5, v10, :cond_107

    .line 4105
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    move/from16 v16, v4

    .line 4106
    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4107
    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v4

    if-gt v13, v4, :cond_100

    .line 4108
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4109
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4110
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_fa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p4, v11

    const-string v11, " to above "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    :cond_fa
    move/from16 p4, v11

    :goto_fc
    add-int/lit8 v10, v10, -0x1

    const/4 v4, 0x1

    goto :goto_10c

    :cond_100
    move/from16 p4, v11

    add-int/lit8 v5, v5, -0x1

    move/from16 v4, v16

    goto :goto_ab

    :cond_107
    move/from16 v16, v4

    move/from16 p4, v11

    const/4 v4, 0x0

    :goto_10c
    if-nez v4, :cond_144

    .line 4121
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4122
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4123
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_13c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to end of group @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13c
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_86

    :cond_140
    move/from16 v16, v4

    move/from16 p4, v11

    :cond_144
    move/from16 v11, p4

    :goto_146
    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v16

    goto/16 :goto_34

    :cond_14c
    move/from16 v10, p4

    :cond_14e
    move v3, v10

    :goto_14f
    if-lt v10, v2, :cond_329

    .line 4139
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4140
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4141
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v7

    .line 4142
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_17d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking to spread old procs, at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    :cond_17d
    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v1, :cond_325

    if-ge v10, v3, :cond_28c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_188
    if-lt v10, v2, :cond_28c

    .line 4153
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4154
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4155
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_1ac

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Different app, moving to "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ac
    add-int/lit8 v10, v10, -0x1

    if-ge v10, v2, :cond_1b2

    goto/16 :goto_28c

    .line 4161
    :cond_1b2
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4162
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_1da

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Looking at next app at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    :cond_1da
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v14

    if-nez v14, :cond_272

    .line 4165
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v14

    if-eqz v14, :cond_1e8

    goto/16 :goto_272

    .line 4175
    :cond_1e8
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v14

    if-eqz v14, :cond_288

    .line 4176
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_1f7

    const-string v14, "This is a client of an activity"

    invoke-static {v9, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f7
    if-eqz v11, :cond_24a

    if-eqz v12, :cond_225

    .line 4179
    iget-object v14, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v12, v14, :cond_202

    goto :goto_225

    :cond_202
    if-eqz v13, :cond_206

    if-eq v13, v7, :cond_288

    .line 4189
    :cond_206
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_28c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already found a different group: connGroup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28c

    .line 4182
    :cond_225
    :goto_225
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_28c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Already found a different activity: connUid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28c

    .line 4195
    :cond_24a
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_26c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "This is an activity client!  uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    :cond_26c
    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move v13, v7

    goto :goto_287

    .line 4166
    :cond_272
    :goto_272
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_27b

    const-string v14, "This is hosting an activity!"

    invoke-static {v9, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27b
    if-eqz v11, :cond_287

    .line 4170
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_28c

    const-string v4, "Already found an activity, done"

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28c

    :cond_287
    :goto_287
    const/4 v11, 0x1

    :cond_288
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_188

    :cond_28c
    :goto_28c
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v2, :cond_2bc

    .line 4211
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4212
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v1, :cond_28c

    .line 4213
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_2bc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found next group of app: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2bc
    if-lt v3, v2, :cond_30a

    .line 4220
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4221
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4222
    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    :cond_2cc
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v2, :cond_30a

    .line 4224
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 4225
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v7

    .line 4226
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v1, :cond_2e6

    if-eq v7, v4, :cond_2cc

    .line 4228
    :cond_2e6
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_30a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found next group or app: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    :cond_30a
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_322

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bumping scan position to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_322
    move v10, v3

    goto/16 :goto_14f

    :cond_325
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_14f

    :cond_329
    :goto_329
    return-void
.end method

.method public updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3887
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 3888
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3889
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3892
    :try_start_18
    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public updateLMKThreshold()V
    .registers 4

    .line 1845
    iget v0, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void
.end method

.method public final updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 4011
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 4013
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p2

    if-eqz p2, :cond_a

    return p4

    .line 4018
    :cond_a
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    const-string p3, "ActivityManager"

    if-gez p2, :cond_41

    .line 4020
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding dependent process "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not on LRU list: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_41
    if-lt p2, p4, :cond_44

    return p4

    .line 4031
    :cond_44
    iget p6, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt p2, p6, :cond_4b

    if-ge p4, p6, :cond_4b

    return p4

    .line 4036
    :cond_4b
    iget-object p6, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-lez p4, :cond_54

    add-int/lit8 p4, p4, -0x1

    .line 4040
    :cond_54
    sget-boolean p6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p6, :cond_7c

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Moving dep from "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in LRU list: "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    :cond_7c
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4043
    invoke-virtual {p1, p5}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    return p4
.end method

.method public final updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    .line 4271
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v11, 0x1

    add-int/2addr v1, v11

    iput v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 4272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4273
    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4274
    invoke-virtual {v10, v12, v13}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "ActivityManager"

    if-eqz p3, :cond_73

    .line 4279
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4283
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_2f

    .line 4284
    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 4285
    invoke-virtual {v10, v6, v7}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 4287
    :cond_2f
    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v5, :cond_39

    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 4288
    :cond_39
    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v5, v8, v15}, Lcom/android/server/am/DynamicHiddenApp;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_49

    .line 4289
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    goto :goto_4f

    .line 4291
    :cond_49
    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 4292
    invoke-virtual {v10, v6, v7}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    :goto_4f
    if-lez v4, :cond_99

    .line 4297
    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v4, v11

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_99

    .line 4298
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_72

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not moving, already top activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    return-void

    .line 4302
    :cond_73
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v4, :cond_99

    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v4, v11

    .line 4303
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_99

    .line 4304
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_98

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not moving, already top other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    return-void

    .line 4309
    :cond_99
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 4311
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_c0

    if-ltz v4, :cond_c0

    .line 4314
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not moving, persistent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    return-void

    :cond_c0
    if-ltz v4, :cond_d5

    .line 4353
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_c9

    sub-int/2addr v5, v11

    .line 4354
    iput v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4356
    :cond_c9
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v4, v5, :cond_d0

    sub-int/2addr v5, v11

    .line 4357
    iput v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4367
    :cond_d0
    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d5
    if-eqz p3, :cond_172

    .line 4383
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4384
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4385
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v2

    if-nez v2, :cond_14b

    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-nez v2, :cond_14b

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v11

    if-ge v2, v0, :cond_14b

    .line 4389
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_120

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding to second-top of LRU activity list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " group="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " importance="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4389
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    :cond_120
    :goto_120
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v2, :cond_13a

    .line 4395
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4396
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_137

    goto :goto_13a

    :cond_137
    add-int/lit8 v0, v0, -0x1

    goto :goto_120

    .line 4404
    :cond_13a
    :goto_13a
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v0, -0x1

    .line 4408
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v2, v3, :cond_146

    move v2, v3

    .line 4412
    :cond_146
    invoke-virtual {v9, v10, v0, v3, v2}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto/16 :goto_209

    .line 4415
    :cond_14b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_163

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding to top of LRU activity list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    :cond_163
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4417
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v2, v0

    goto/16 :goto_209

    :cond_172
    if-eqz p4, :cond_19c

    .line 4421
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_18c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding to top of LRU service list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    :cond_18c
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4423
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4424
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v0, v11

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    goto/16 :goto_209

    .line 4427
    :cond_19c
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-eqz v0, :cond_1d1

    .line 4431
    iget-object v6, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4432
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v7, :cond_1c8

    if-gez v6, :cond_1c8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when updating "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    if-gt v6, v4, :cond_1cb

    goto :goto_1cc

    :cond_1cb
    move v4, v6

    :goto_1cc
    if-ltz v4, :cond_1d1

    if-le v5, v4, :cond_1d1

    move v5, v4

    .line 4443
    :cond_1d1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_1f1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of LRU list: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    :cond_1f1
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v5, -0x1

    .line 4446
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v3, v11

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4447
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v3, v11

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-le v5, v11, :cond_208

    sub-int/2addr v3, v11

    .line 4449
    invoke-virtual {v9, v10, v3, v1, v0}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    :cond_208
    move v1, v0

    .line 4453
    :goto_209
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 4457
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v0

    sub-int/2addr v0, v11

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    :goto_218
    if-ltz v15, :cond_28a

    .line 4458
    invoke-virtual {v14, v15}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    .line 4459
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_287

    iget-boolean v1, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v1, :cond_287

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_287

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_287

    .line 4461
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_287

    iget v0, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130    # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_287

    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4463
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_287

    .line 4464
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_271

    if-ltz v17, :cond_287

    .line 4466
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v12

    move/from16 v4, v17

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v17

    goto :goto_287

    .line 4472
    :cond_271
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v12

    move/from16 v4, v16

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    :cond_287
    :goto_287
    add-int/lit8 v15, v15, -0x1

    goto :goto_218

    .line 4479
    :cond_28a
    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 4480
    invoke-virtual {v14}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v0

    sub-int/2addr v0, v11

    move v11, v0

    move/from16 v4, v16

    :goto_294
    if-ltz v11, :cond_2c3

    .line 4481
    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 4482
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2c0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_2c0

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_2c0

    .line 4483
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide v2, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    :cond_2c0
    add-int/lit8 v11, v11, -0x1

    goto :goto_294

    :cond_2c3
    return-void
.end method

.method public updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 4246
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4247
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_18

    .line 4248
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-nez p2, :cond_1e

    if-eqz v0, :cond_1e

    return-void

    .line 4258
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result p2

    if-nez p2, :cond_2b

    return-void

    .line 4263
    :cond_2b
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter p2

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 4264
    invoke-virtual {p0, p1, p3, v0, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 4265
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final updateOomLevels(IIZ)V
    .registers 14

    .line 1081
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    .line 1089
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    const v2, 0xfa000

    if-nez v1, :cond_23

    iget-wide v3, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v5, 0x600

    cmp-long v1, v3, v5

    if-gez v1, :cond_1f

    mul-int v1, p1, p2

    if-lt v1, v2, :cond_1f

    goto :goto_23

    :cond_1f
    const v1, 0x5dc00

    goto :goto_33

    .line 1091
    :cond_23
    :goto_23
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v2, 0x12c

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x44b54000    # 1450.0f

    div-float/2addr v0, v1

    const v1, 0x25800

    const v2, 0x1fa400

    :goto_33
    mul-int/2addr p1, p2

    int-to-float p2, p1

    int-to-float v3, v1

    sub-float/2addr p2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p2, v1

    cmpl-float v1, v0, p2

    if-lez v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, p2

    :goto_40
    const/4 p2, 0x0

    cmpg-float v1, v0, p2

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_49

    move v0, p2

    goto :goto_4e

    :cond_49
    cmpl-float p2, v0, v2

    if-lez p2, :cond_4e

    move v0, v2

    .line 1109
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00bd

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1119
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6d

    move v0, v2

    .line 1125
    :cond_6d
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_76

    move v2, v3

    goto :goto_77

    :cond_76
    move v2, v4

    :goto_77
    move v5, v4

    .line 1127
    :goto_78
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v6, v6

    const/4 v7, 0x4

    if-ge v5, v6, :cond_a2

    .line 1128
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v6, v6, v5

    .line 1129
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v8, v8, v5

    if-eqz v2, :cond_95

    if-ne v5, v7, :cond_8f

    mul-int/lit8 v8, v8, 0x3

    .line 1132
    div-int/lit8 v8, v8, 0x2

    goto :goto_95

    :cond_8f
    const/4 v9, 0x5

    if-ne v5, v9, :cond_95

    mul-int/lit8 v8, v8, 0x7

    .line 1133
    div-int/2addr v8, v7

    .line 1135
    :cond_95
    :goto_95
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v9, v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    mul-float/2addr v6, v0

    add-float/2addr v9, v6

    float-to-int v6, v9

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    :cond_a2
    if-ltz v1, :cond_bd

    move v0, v4

    .line 1139
    :goto_a5
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v2

    if-ge v0, v5, :cond_bd

    .line 1140
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v6, v1

    aget v8, v5, v0

    int-to-float v8, v8

    mul-float/2addr v6, v8

    array-length v2, v2

    sub-int/2addr v2, v3

    aget v2, v5, v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    float-to-int v2, v6

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_bd
    if-eqz p2, :cond_dd

    move v0, v4

    .line 1146
    :goto_c0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_dd

    .line 1147
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v5, v2, v0

    int-to-float v6, p2

    int-to-float v8, v5

    mul-float/2addr v6, v8

    array-length v1, v1

    sub-int/2addr v1, v3

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    add-int/2addr v5, v1

    aput v5, v2, v0

    if-gez v5, :cond_da

    .line 1150
    aput v4, v2, v0

    :cond_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_dd
    const/16 p2, 0x3e7

    .line 1158
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const-wide/16 v5, 0x400

    div-long/2addr v0, v5

    const-wide/16 v5, 0x3

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int/2addr p1, v7

    mul-int/lit8 p1, p1, 0x3

    .line 1162
    div-int/lit16 p1, p1, 0x400

    .line 1163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e009a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_109

    move p1, v0

    :cond_109
    if-eqz p2, :cond_10f

    add-int/2addr p1, p2

    if-gez p1, :cond_10f

    move p1, v4

    .line 1180
    :cond_10f
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez p2, :cond_119

    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 1181
    :cond_119
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    if-nez p2, :cond_125

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p2}, Lcom/android/server/am/DynamicHiddenApp;->getCustomEFKManagerInstance()Lcom/android/server/bgslotmanager/CustomEFKManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 1185
    :cond_125
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {p2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->getBonusEFK()I

    move-result p2

    add-int/2addr p1, p2

    .line 1188
    sget-object p2, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_170

    .line 1189
    sget-object p2, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOomLevels using LMKArray "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1193
    :goto_159
    :try_start_159
    array-length v2, p2

    if-ge v0, v2, :cond_170

    .line 1194
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget-object v5, p2, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v7

    aput v5, v2, v0
    :try_end_167
    .catch Ljava/lang/NumberFormatException; {:try_start_159 .. :try_end_167} :catch_16a

    add-int/lit8 v0, v0, 0x1

    goto :goto_159

    :catch_16a
    const-string/jumbo p2, "updateOomLevels, LMKArray NumberFormatException "

    .line 1197
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_170
    if-eqz p3, :cond_1ba

    .line 1204
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v3

    mul-int/2addr p2, v7

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1205
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move p3, v4

    .line 1206
    :goto_181
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    if-ge p3, v0, :cond_19b

    .line 1207
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v0, v0, p3

    mul-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x1000

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v0, v0, p3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_181

    :cond_19b
    const/4 p3, 0x0

    .line 1211
    invoke-static {p2, p3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1214
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {p2, v4}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setWatermarkBoostFactor(I)V

    .line 1215
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {p2, p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->setOriginEFKWithSetProperty(I)V

    .line 1216
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {p2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->getCurWatermarkFactorScale()V

    .line 1219
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sys.sysctl.boot_extra_free_kbytes"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    :cond_1ba
    return-void
.end method

.method public writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p2

    .line 4951
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v10, v3

    :goto_11
    if-ge v3, v1, :cond_55

    .line 4953
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4954
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_24
    if-ge v6, v5, :cond_52

    .line 4955
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_39

    .line 4956
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    goto :goto_4f

    :cond_39
    const-wide v11, 0x20b00000001L

    .line 4959
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4960
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 4959
    invoke-virtual {v7, p1, v11, v12, v13}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4962
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_4f

    add-int/lit8 v10, v10, 0x1

    :cond_4f
    :goto_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 4968
    :cond_55
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_5b
    if-ge v2, v1, :cond_83

    .line 4969
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_72

    .line 4970
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    goto :goto_80

    :cond_72
    const-wide v4, 0x20b00000002L

    .line 4973
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4974
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4973
    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 4978
    :cond_83
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v11

    .line 4979
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v5, 0x20b00000004L

    move-object v2, p1

    move-object/from16 v3, p2

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 4982
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_dc

    const-wide v1, 0x10b00000006L

    .line 4983
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 4984
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    const-wide v2, 0x10500000001L

    .line 4985
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000002L

    .line 4986
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v4, v1, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    .line 4988
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v4

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x20b00000004L

    .line 4990
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    .line 4993
    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4996
    :cond_dc
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, v9, v11, v10}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    return-void
.end method
