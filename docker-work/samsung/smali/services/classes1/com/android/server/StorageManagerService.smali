.class public Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$DirEncryptListner;,
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbException;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$PackageInstalledMap;,
        Lcom/android/server/StorageManagerService$WatchedLockedUsers;,
        Lcom/android/server/StorageManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

.field public static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field public static final ANR_DELAY_MILLIS_DEVICE_CONFIG_KEY:Ljava/lang/String; = "anr_delay_millis"

.field public static final ANR_DELAY_NOTIFY_EXTERNAL_STORAGE_SERVICE_DEVICE_CONFIG_KEY:Ljava/lang/String; = "anr_delay_notify_external_storage_service"

.field public static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field public static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field public static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field public static final ATTR_LAST_SEEN_MILLIS:Ljava/lang/String; = "lastSeenMillis"

.field public static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field public static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field public static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final DATA_MEDIA_PATH:Ljava/lang/String; = "/data/media"

.field public static final DATA_SEC_PATH:Ljava/lang/String; = "/data/sec"

.field public static final DEBUG_EVENTS:Z = false

.field public static final DEBUG_OBB:Z = false

.field public static final DEFAULT_CHARGING_REQUIRED:Z = true

.field public static final DEFAULT_DIRTY_RECLAIM_RATE:F = 0.5f

.field public static final DEFAULT_LIFETIME_PERCENT_THRESHOLD:I = 0x46

.field public static final DEFAULT_LOW_BATTERY_LEVEL:F = 20.0f

.field public static final DEFAULT_MIN_SEGMENTS_THRESHOLD:I = 0x200

.field public static final DEFAULT_SEGMENT_RECLAIM_WEIGHT:F = 1.0f

.field public static final DEFAULT_SMART_IDLE_MAINT_ENABLED:Z = false

.field public static final DEFAULT_SMART_IDLE_MAINT_PERIOD:I = 0x3c

.field public static final EMULATE_FBE_SUPPORTED:Z = true

.field public static final FAILED_MOUNT_RESET_TIMEOUT_SECONDS:I = 0xa

.field public static final H_ABORT_IDLE_MAINT:I = 0xc

.field public static final H_BOOT_COMPLETED:I = 0xd

.field public static final H_CLOUD_MEDIA_PROVIDER_CHANGED:I = 0x10

.field public static final H_COMPLETE_UNLOCK_USER:I = 0xe

.field public static final H_DAEMON_CONNECTED:I = 0x2

.field public static final H_FSTRIM:I = 0x4

.field public static final H_IDLE_DEFRAG:I = 0x1f

.field public static final H_INTERNAL_BROADCAST:I = 0x7

.field public static final H_KEYGUARD_CHANGED:I = 0x1e

.field public static final H_PARTITION_FORGET:I = 0x9

.field public static final H_RESET:I = 0xa

.field public static final H_RUN_IDLE_MAINT:I = 0xb

.field public static final H_SHUTDOWN:I = 0x3

.field public static final H_SYSTEM_READY:I = 0x1

.field public static final H_VOLUME_BROADCAST:I = 0x6

.field public static final H_VOLUME_MOUNT:I = 0x5

.field public static final H_VOLUME_STATE_CHANGED:I = 0xf

.field public static final H_VOLUME_UNMOUNT:I = 0x8

.field public static final KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

.field public static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field public static final LOCAL_LOGD:Z = true

.field public static final LOCAL_LOGV:Z

.field public static final MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field public static final MAX_PERIOD_WRITE_RECORD:I = 0x10e0

.field public static final MAX_SMART_IDLE_MAINT_PERIOD:I = 0x5a0

.field public static final MIN_SMART_IDLE_MAINT_PERIOD:I = 0xa

.field public static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field public static final OBB_FLUSH_MOUNT_STATE:I = 0x2

.field public static final OBB_RUN_ACTION:I = 0x1

.field public static final READONLY_STORAGE:Ljava/lang/String; = "readonly_storage"

.field public static final SDCARD_STORAGE:Ljava/lang/String; = "sdcard_storage"

.field public static final TAG:Ljava/lang/String; = "StorageManagerService"

.field public static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field public static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field public static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field public static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field public static final USBHOST_STORAGE:Ljava/lang/String; = "usbhost_storage"

.field public static final VERSION_ADD_PRIMARY:I = 0x2

.field public static final VERSION_FIX_PRIMARY:I = 0x3

.field public static final VERSION_INIT:I = 0x1

.field public static final WATCHDOG_ENABLE:Z = true

.field public static final ZRAM_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.zram_enabled"

.field public static sMediaStoreAuthorityProcessName:Ljava/lang/String;

.field public static sSelf:Lcom/android/server/StorageManagerService;

.field public static volatile sSmartIdleMaintPeriod:I


# instance fields
.field public mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppFuseLock"
        }
    .end annotation
.end field

.field public final mAppFuseLock:Ljava/lang/Object;

.field public final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/StorageManagerService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field public final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field public volatile mBootCompleted:Z

.field public final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field public final mCeStoragePreparedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mChargingRequired:Z

.field public final mCloudMediaProviders:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCloudMediaProviders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentUserId:I

.field public volatile mDaemonConnected:Z

.field public mDem:Lcom/samsung/android/security/SemSdCardEncryption;

.field public mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

.field public volatile mDirtyReclaimRate:F

.field public mDiskDefragReceiver:Landroid/content/BroadcastReceiver;

.field public mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field public mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDownloadsAuthorityAppId:I

.field public volatile mExternalStorageAuthorityAppId:I

.field public final mFuseMountedUser:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

.field public mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

.field public mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public mIsMediaSharedWithParent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mIssLock:Ljava/lang/Object;

.field public mLastMaintenance:J

.field public final mLastMaintenanceFile:Ljava/io/File;

.field public volatile mLifetimePercentThreshold:I

.field public final mListener:Landroid/os/IVoldListener;

.field public mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public volatile mLowBatteryLevel:F

.field public volatile mMaxWriteRecords:I

.field public volatile mMediaStoreAuthorityAppId:I

.field public volatile mMinSegmentsThreshold:I

.field public mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public volatile mNeedGC:Z

.field public mNextAppFuseName:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppFuseLock"
        }
    .end annotation
.end field

.field public final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field public final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageMonitorsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackagesLock:Ljava/lang/Object;

.field public volatile mPassedLifetimeThresh:Z

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field public mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mRemountCurrentUserVolumesOnUnlock:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public mRestartSdcardBadremoveReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mSecureKeyguardShowing:Z

.field public volatile mSegmentReclaimWeight:F

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field public final mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

.field public volatile mStorageWriteRecords:[I

.field public volatile mStoraged:Landroid/os/IStoraged;

.field public mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUidsWithLegacyExternalStorage:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnmountLock:Ljava/lang/Object;

.field public mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnmountLock"
        }
    .end annotation
.end field

.field public mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mUserSharesMediaWith:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mVold:Landroid/os/IVold;

.field public final mVoldAppDataIsolationEnabled:Z

.field public final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mWriteRecordFile:Landroid/util/AtomicFile;

.field public preSDPolicy:Z


# direct methods
.method public static synthetic $r8$lambda$DxZk64_veeQmIQO02Emdo-JzMXg(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->lambda$connectStoraged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$PsncAamugJUjaCupcZOytmohbT0(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->lambda$resetIfBootedAndConnected$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$g9RUPXxb7vc7vgEXAyX3YVhyBRk(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/StorageManagerService;->lambda$dump$4(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkS-y_m5dt9xKOtnsxcaKVasdwU(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->lambda$connectVold$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$wcf2vZAN6HiRC9jl7Qh6-KHrjV0(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/StorageManagerService;->lambda$dump$5(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yYbJD6xHW1hrVfmyUave9DQaGUE(Lcom/android/server/StorageManagerService;ILandroid/os/storage/VolumeInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->lambda$onVolumeStateChangedLocked$1(ILandroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCeStoragePreparedUsers(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFuseMountedUser(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeimdAllFs(Lcom/android/server/StorageManagerService;)Lcom/android/server/HeimdAllFsService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIAppOpsService(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstaller(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMaintenance(Lcom/android/server/StorageManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMaintenanceFile(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaStoreAuthorityAppId(Lcom/android/server/StorageManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObbActionHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObbPathToStateMap(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPmInternal(Lcom/android/server/StorageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidsWithLegacyExternalStorage(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHeimdAllFs(Lcom/android/server/StorageManagerService;Lcom/android/server/HeimdAllFsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastMaintenance(Lcom/android/server/StorageManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemountCurrentUserVolumesOnUnlock(Lcom/android/server/StorageManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStoraged(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVold(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyCurrentSdCardPolicy(Lcom/android/server/StorageManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->applyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbootCompleted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectStoraged(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectVold(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindRecordForPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindVolumeByIdOrThrow(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforgetPartition(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMountModeInternal(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBootCompleted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->handleBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDaemonConnected(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSystemReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAppIoBlocked(Lcom/android/server/StorageManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misExtSDCardTrayRemoved(Lcom/android/server/StorageManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->isExtSDCardTrayRemoved()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMountDisallowed(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMountDisallowedByEAS(Lcom/android/server/StorageManagerService;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowedByEAS(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUidOwnerOfPackageOrSystem(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeRemountVolumes(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->notifyCloudMediaProviderChangedAsync(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCleanupUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onCloudMediaProviderChangedAsync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMoveStatusLocked(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onStopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVolumeStateChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVolumeStateChangedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshZramSettings(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetIfBootedAndConnected(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mservicesReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->servicesReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msnapshotAndMonitorLegacyStorageAppOp(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLegacyStorageApps(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwarnOnNotMounted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteSettingsLocked(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOCAL_LOGV()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "StorageManagerService"

    const/4 v1, 0x2

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 402
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

    const/16 v0, 0x3c

    .line 410
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?"

    .line 638
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 2366
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 288
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 291
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    const/4 v0, 0x4

    .line 458
    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIssLock:Ljava/lang/Object;

    .line 524
    new-instance v0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    .line 527
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 531
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 534
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 538
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 544
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 552
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 555
    iput v0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 557
    iput v0, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 559
    iput v0, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    const/4 v0, 0x0

    .line 561
    iput v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 563
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 568
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 570
    iput v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    const/4 v1, 0x0

    .line 573
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 576
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    .line 578
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    .line 587
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 623
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    .line 627
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 631
    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    .line 748
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 749
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 750
    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 780
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 783
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 786
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$StorageManagerInternalImpl-IA;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 794
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 797
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    .line 1096
    new-instance v2, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1667
    new-instance v2, Lcom/android/server/StorageManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 5696
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 5697
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 6509
    new-instance v2, Lcom/android/server/StorageManagerService$16;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$16;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskDefragReceiver:Landroid/content/BroadcastReceiver;

    .line 6520
    new-instance v2, Lcom/android/server/StorageManagerService$17;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$17;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mRestartSdcardBadremoveReceiver:Landroid/content/BroadcastReceiver;

    .line 6533
    new-instance v2, Lcom/android/server/StorageManagerService$18;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$18;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 2367
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const-string/jumbo v2, "persist.sys.vold_app_data_isolation_enabled"

    .line 2368
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 2370
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 2372
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 2373
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2375
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "StorageManagerService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2377
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    .line 2380
    new-instance v0, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 2382
    new-instance v0, Lcom/android/server/storage/StorageSessionController;

    invoke-direct {v0, p1}, Lcom/android/server/storage/StorageSessionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 2384
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2385
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 2388
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    .line 2389
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2390
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "last-fstrim"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 2391
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_182

    .line 2395
    :try_start_15c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_164} :catch_165

    goto :goto_188

    :catch_165
    const-string p1, "StorageManagerService"

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create fstrim record "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_188

    .line 2400
    :cond_182
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 2403
    :goto_188
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    .line 2404
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "storage-settings"

    invoke-direct {p1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 2405
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    .line 2406
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage-write-records"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    const-string/jumbo p1, "storage_native_boot"

    const-string/jumbo v0, "smart_idle_maint_period"

    const/16 v2, 0x3c

    .line 2408
    invoke-static {p1, v0, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 2410
    sget p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1c8

    .line 2411
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    goto :goto_1d0

    .line 2412
    :cond_1c8
    sget p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/16 v0, 0x5a0

    if-le p1, v0, :cond_1d0

    .line 2413
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    :cond_1d0
    :goto_1d0
    const/16 p1, 0x10e0

    .line 2416
    sget v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 2417
    iget p1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 2419
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2420
    :try_start_1e0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 2421
    monitor-exit p1
    :try_end_1e4
    .catchall {:try_start_1e0 .. :try_end_1e4} :catchall_241

    .line 2423
    const-class p1, Landroid/os/storage/StorageManagerInternal;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2425
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 2426
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 2427
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2430
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2431
    :try_start_206
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 2432
    monitor-exit v0
    :try_end_20a
    .catchall {:try_start_206 .. :try_end_20a} :catchall_23e

    .line 2436
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 2441
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskDefragReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.RUN_DISK_DEFRAGMENTATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.permission.RUN_DISK_DEFRAGMENTATION"

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2443
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRestartSdcardBadremoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.RESTART_OF_SDCARDBADREMOVED_HASAPK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2447
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_23e
    move-exception p0

    .line 2432
    :try_start_23f
    monitor-exit v0
    :try_end_240
    .catchall {:try_start_23f .. :try_end_240} :catchall_23e

    throw p0

    :catchall_241
    move-exception p0

    .line 2421
    :try_start_242
    monitor-exit p1
    :try_end_243
    .catchall {:try_start_242 .. :try_end_243} :catchall_241

    throw p0
.end method

.method public static getLastAccessTime(Landroid/app/AppOpsManager;ILjava/lang/String;[I)J
    .registers 6

    .line 2610
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    .line 2611
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 p1, 0x0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager$PackageOps;

    .line 2612
    invoke-virtual {p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_26
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    const/16 v1, 0xd

    .line 2613
    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_26

    :cond_3d
    return-wide p1
.end method

.method private synthetic lambda$connectStoraged$2()V
    .registers 1

    .line 2482
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method private synthetic lambda$connectVold$3()V
    .registers 1

    .line 2520
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method public static synthetic lambda$dump$4(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 5

    .line 5384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$5(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5

    .line 5387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onVolumeStateChangedLocked$1(ILandroid/os/storage/VolumeInfo;)V
    .registers 8

    if-nez p1, :cond_d

    .line 2039
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    .line 2041
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 2046
    :cond_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_18
    const/4 v2, 0x5

    const-string v3, "StorageManagerService"

    if-ge v1, v2, :cond_3b

    .line 2054
    :try_start_1d
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 2055
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityManagerInternal;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_2d} :catch_2e

    goto :goto_3b

    :catch_2e
    const-string v2, "Some processes are starting, retry"

    .line 2058
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x64

    .line 2060
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_3b
    :goto_3b
    if-eqz v0, :cond_41

    .line 2064
    invoke-virtual {p0, v0, p1}, Lcom/android/server/StorageManagerService;->remountAppStorageDirs(Ljava/util/Map;I)V

    goto :goto_46

    :cond_41
    const-string p0, "Not able to getStorageNotOptimizedProcesses() after 5 retries"

    .line 2066
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method

.method private synthetic lambda$resetIfBootedAndConnected$0()V
    .registers 2

    .line 1381
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static readVolumeRecord(Landroid/util/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    .line 2718
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "fsUuid"

    .line 2719
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2720
    new-instance v3, Landroid/os/storage/VolumeRecord;

    invoke-direct {v3, v1, v2}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    const-string/jumbo v1, "partGuid"

    .line 2721
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v1, "nickname"

    .line 2722
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v1, "userFlags"

    .line 2723
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string v1, "createdMillis"

    const-wide/16 v4, 0x0

    .line 2724
    invoke-interface {p0, v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string/jumbo v1, "lastSeenMillis"

    .line 2725
    invoke-interface {p0, v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v3, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string/jumbo v1, "lastTrimMillis"

    .line 2726
    invoke-interface {p0, v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v3, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v1, "lastBenchMillis"

    .line 2727
    invoke-interface {p0, v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    return-object v3
.end method

.method public static writeVolumeRecord(Landroid/util/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "volume"

    .line 2733
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2734
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    const-string/jumbo v3, "type"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2735
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v3, "fsUuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2736
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2737
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2738
    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "userFlags"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2739
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v4, "createdMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2740
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string/jumbo v4, "lastSeenMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2741
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v4, "lastTrimMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2742
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    const-string/jumbo p1, "lastBenchMillis"

    invoke-interface {p0, v0, p1, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2743
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 3724
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    return-void

    .line 3721
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "no permission to commit checkpoint changes"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abortIdleMaint(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 3190
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3193
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v2, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    const-string p1, "abortIdleMaint, HeimdAllFSThread = null"

    .line 3212
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->abort()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 3216
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public abortIdleMaintenance()V
    .registers 2

    const/4 v0, 0x0

    .line 3222
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addInternalVolumeLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1341
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 1343
    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1344
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1345
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4801
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4802
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_19

    .line 4805
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4806
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 4808
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 4809
    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_1d

    .line 4810
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4816
    :cond_3c
    :goto_3c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4818
    :try_start_3f
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_4a

    .line 4833
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_4a
    move-exception v2

    .line 4824
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4825
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 4826
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4830
    :cond_59
    throw v2
.end method

.method public addUserKeyAuth(II[B[B)V
    .registers 6

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3767
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3770
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p3, p0}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3772
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void
.end method

.method public final adjustAllocateFlags(IILjava/lang/String;)I
    .registers 8

    and-int/lit8 v0, p1, 0x1

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_d

    .line 4693
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    and-int/lit8 p1, p1, -0x3

    and-int/lit8 p1, p1, -0x5

    .line 4704
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 4705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v0, 0x1a

    .line 4707
    :try_start_21
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 4708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_46

    or-int/lit8 p1, p1, 0x4

    .line 4713
    :cond_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_46
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4714
    throw p0
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 10

    .line 4765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    or-int/lit8 v0, p4, 0x8

    .line 4767
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_47

    or-int/lit8 v2, p4, 0x10

    .line 4772
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long p5, p2, v0

    if-gtz p5, :cond_1e

    goto :goto_47

    .line 4775
    :cond_1e
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to allocate "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " because only "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " allocatable"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 4780
    :cond_47
    :goto_47
    iget-object p5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/storage/StorageManager;

    .line 4781
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4785
    :try_start_55
    invoke-virtual {p5, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    .line 4787
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    :goto_61
    add-long/2addr p2, v2

    goto :goto_68

    .line 4789
    :cond_63
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_61

    .line 4792
    :goto_68
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6d} :catch_73
    .catchall {:try_start_55 .. :try_end_6d} :catchall_71

    .line 4796
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_71
    move-exception p0

    goto :goto_7a

    :catch_73
    move-exception p0

    .line 4794
    :try_start_74
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_71

    .line 4796
    :goto_7a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4797
    throw p0
.end method

.method public final applyCurrentSdCardPolicy(Z)V
    .registers 9

    .line 6569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCurrentSdCardPolicy :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8b

    const/4 p1, 0x0

    .line 6572
    :goto_1a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p1, v2, :cond_8b

    .line 6573
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 6574
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 6575
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 6577
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_38

    goto :goto_88

    .line 6582
    :cond_38
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3f

    goto :goto_88

    .line 6586
    :cond_3f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removable storage path :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6588
    :try_start_54
    iget v2, v2, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v2, v0, :cond_7d

    const/16 v2, 0x1e

    .line 6590
    :goto_5a
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_62} :catch_81

    if-ne v3, v0, :cond_76

    add-int/lit8 v3, v2, -0x1

    if-ltz v2, :cond_75

    const-wide/16 v5, 0x3e8

    .line 6592
    :try_start_6a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_6d} :catch_81

    move v2, v3

    goto :goto_5a

    :catch_6f
    move-exception v2

    :try_start_70
    const-string v5, "Interrupted while waiting for media"

    .line 6594
    invoke-static {v1, v5, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    move v2, v3

    :cond_76
    if-nez v2, :cond_7d

    const-string v2, "Timed out waiting for media to check"

    .line 6599
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    :cond_7d
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_80} :catch_81

    goto :goto_88

    :catch_81
    move-exception v2

    const-string/jumbo v3, "volume removed, while waiting "

    .line 6604
    invoke-static {v1, v3, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_88
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_8b
    return-void
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 2935
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2938
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2968
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final bootCompleted()V
    .registers 2

    const/4 v0, 0x1

    .line 2628
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 2629
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final checkCallerPermissionIsSystemOrRoot()V
    .registers 2

    .line 6741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_13

    if-nez p0, :cond_b

    goto :goto_13

    .line 6743
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "System can call this API"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method public final checkChargeStatus()Z
    .registers 7

    .line 3315
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3316
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 3318
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mChargingRequired:Z

    const/4 v2, 0x0

    const-string v3, "StorageManagerService"

    const/4 v4, -0x1

    if-eqz v1, :cond_29

    const-string/jumbo v1, "status"

    .line 3319
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_29

    const/4 v5, 0x5

    if-eq v1, v5, :cond_29

    const-string p0, "Battery is not being charged"

    .line 3322
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_29
    const-string/jumbo v1, "level"

    .line 3327
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "scale"

    .line 3328
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 3331
    iget v0, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_62

    .line 3332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery level is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", which is lower than threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_62
    const/4 p0, 0x1

    return p0
.end method

.method public final checkExternalSecureContainerMounted()Z
    .registers 4

    .line 5917
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 5928
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 5929
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 5930
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 5931
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 5932
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5933
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Description : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StorageManagerService"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_59
    const/4 p0, 0x0

    return p0
.end method

.method public final chkMountUnmountFormatCaller(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.sec.android.app.myfiles"

    .line 6661
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "StorageManagerService"

    const-string p1, "Caller is not MyFiles"

    .line 6662
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public final cleanupSercureContainerList(Ljava/lang/String;)V
    .registers 5

    .line 6133
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_3
    const-string v1, "all"

    .line 6134
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6135
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    goto :goto_44

    .line 6137
    :cond_11
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 6138
    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 6139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 6140
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    if-eqz v2, :cond_33

    const-string v2, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 6141
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 6144
    :cond_33
    iget-boolean v1, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    if-nez v1, :cond_17

    const-string/jumbo v1, "internal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6145
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 6150
    :cond_44
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

.method public clearUserKeyAuth(II[B[B)V
    .registers 6

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3785
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3788
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p3, p0}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3790
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void
.end method

.method public commitChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3698
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 3702
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    return-void

    .line 3699
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "no permission to commit checkpoint changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final completeUnlockUser(I)V
    .registers 9

    const-string v0, "StorageManagerService"

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeUnlockUser: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1537
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->onKeyguardStateChanged(Z)V

    .line 1541
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1542
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    move v4, v0

    :goto_21
    if-ge v4, v3, :cond_42

    aget v5, v2, v4

    if-ne v5, p1, :cond_3f

    const-string p0, "StorageManagerService"

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeUnlockUser called for already unlocked user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    monitor-exit v1

    return-void

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_42
    move v2, v0

    .line 1549
    :goto_43
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 1550
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1551
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1552
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1553
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1555
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    invoke-static {v3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1556
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3, v3}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1559
    :cond_83
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1560
    monitor-exit v1

    return-void

    :catchall_8d
    move-exception p0

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_1d .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public final configureTranscoding()V
    .registers 4

    const-string/jumbo v0, "persist.sys.fuse.transcode_user_control"

    const/4 v1, 0x0

    .line 1240
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const-string/jumbo v0, "persist.sys.fuse.transcode_enabled"

    .line 1241
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1d

    :cond_13
    const-string/jumbo v0, "storage_native_boot"

    const-string/jumbo v2, "transcode_enabled"

    .line 1244
    invoke-static {v0, v2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1247
    :goto_1d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.fuse.transcode_enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3a

    .line 1250
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController-IA;)V

    .line 1251
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerAnrController(Landroid/app/AnrController;)V

    :cond_3a
    return-void
.end method

.method public final connectStoraged()V
    .registers 5

    const-string/jumbo v0, "storaged"

    .line 2458
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2461
    :try_start_9
    new-instance v1, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    if-eqz v0, :cond_1d

    .line 2475
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_25

    :cond_1d
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "storaged not found; trying again"

    .line 2477
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :goto_25
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-nez v0, :cond_38

    .line 2481
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    .line 2485
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    :goto_3b
    return-void
.end method

.method public final connectVold()V
    .registers 5

    const-string/jumbo v0, "vold"

    .line 2490
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2493
    :try_start_a
    new-instance v2, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v0, v1

    :cond_15
    :goto_15
    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_31

    .line 2507
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2509
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v0, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_37

    :catch_27
    move-exception v0

    .line 2511
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const-string/jumbo v1, "vold listener rejected; trying again"

    .line 2512
    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :cond_31
    const-string/jumbo v0, "vold not found; trying again"

    .line 2515
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :goto_37
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v0, :cond_4a

    .line 2519
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 2523
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->restoreLocalUnlockedUsers()V

    .line 2524
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    :goto_50
    return-void
.end method

.method public cpFileAtData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6469
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.SEM_VOLD_DATA_MOVE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6471
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_70

    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_70

    .line 6476
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p0, "cpFileAtData not support from media to media dir, so return false"

    .line 6477
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6482
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 6484
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    new-instance v8, Lcom/android/server/StorageManagerService$15;

    invoke-direct {v8, p0, v0}, Lcom/android/server/StorageManagerService$15;-><init>(Lcom/android/server/StorageManagerService;Ljava/util/concurrent/CompletableFuture;)V

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v8}, Landroid/os/IVold;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 6498
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 6499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File copy in media path result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_5e

    const-string/jumbo p2, "true"

    goto :goto_60

    :cond_5e
    const-string p2, "false"

    :goto_60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6a} :catch_6b

    return p0

    :catch_6b
    move-exception p0

    .line 6502
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_70
    :goto_70
    const-string p0, "cpFileAtData not support other than media or sec dir, so return false"

    .line 6472
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 15

    const-string v0, "android.permission.ASEC_CREATE"

    .line 5987
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 5989
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    const/4 v0, 0x0

    .line 5993
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IVold;->asecCreate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_16

    move p2, v0

    goto :goto_1d

    :catch_16
    move-exception p2

    const-string p3, "StorageManagerService"

    .line 5996
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    :goto_1d
    if-nez p2, :cond_3f

    .line 6001
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter p3

    if-eqz p6, :cond_30

    .line 6003
    :try_start_24
    iget-object p4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance p5, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    const/4 p6, 0x1

    invoke-direct {p5, p0, p1, p6}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 6005
    :cond_30
    iget-object p4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance p5, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {p5, p0, p1, v0}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6007
    :goto_3a
    monitor-exit p3

    goto :goto_3f

    :catchall_3c
    move-exception p0

    monitor-exit p3
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    :goto_3f
    return p2
.end method

.method public createUserKey(IIZ)V
    .registers 5

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3729
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3732
    :try_start_5
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3734
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 6

    const-string v0, "android.permission.ASEC_DESTROY"

    .line 6069
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6071
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6079
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6083
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->asecDestroy(Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_16

    const/4 p2, 0x0

    goto :goto_1d

    :catch_16
    move-exception p2

    const-string v0, "StorageManagerService"

    .line 6085
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    :goto_1d
    if-nez p2, :cond_3e

    .line 6090
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 6091
    :try_start_22
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 6092
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6094
    :cond_39
    monitor-exit v0

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    return p2
.end method

.method public destroyUserKey(I)V
    .registers 3

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3740
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3743
    :try_start_5
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3745
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 5

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3977
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3980
    :try_start_5
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3982
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public disableAppDataIsolation(Ljava/lang/String;II)V
    .registers 8

    .line 4066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 4068
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "no permission to enable app visibility"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4070
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4071
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 4072
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    .line 4074
    array-length v1, v0

    if-eqz v1, :cond_26

    goto :goto_2c

    :cond_26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4076
    :goto_2c
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p3, p2, v0}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 4078
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 5089
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public final dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 5079
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 5312
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string p3, "StorageManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 5314
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    const/16 v0, 0xa0

    invoke-direct {p1, p2, p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 5316
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getStorageVolumes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_57

    .line 5318
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p3, "StorageVolumes:"

    .line 5319
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5320
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Size:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5321
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5323
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageVolume;

    .line 5324
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 5325
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_41

    .line 5327
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5329
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5332
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_5d
    const-string p3, "Disks:"

    .line 5333
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5334
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 p3, 0x0

    move v0, p3

    .line 5335
    :goto_67
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 5336
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 5337
    invoke-virtual {v1, p1}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 5339
    :cond_7d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5341
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Volumes:"

    .line 5342
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5344
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v0, p3

    .line 5345
    :goto_a6
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_c8

    .line 5346
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v2, "private"

    .line 5347
    iget-object v3, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    goto :goto_c5

    .line 5348
    :cond_c2
    invoke-virtual {v1, p1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_c5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 5350
    :cond_c8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5352
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Records:"

    .line 5353
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5354
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v0, p3

    .line 5355
    :goto_d7
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_ed

    .line 5356
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 5357
    invoke-virtual {v1, p1}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 5359
    :cond_ed
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5361
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary storage UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5364
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5365
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_118

    const-string v0, "Internal storage total size: N/A"

    .line 5367
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_149

    :cond_118
    const-string v1, "Internal storage ("

    .line 5369
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5370
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") total size: "

    .line 5371
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5372
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " ("

    .line 5373
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5374
    sget-object v1, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const-string v0, " MiB)"

    .line 5375
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5378
    :goto_149
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local unlocked users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System unlocked users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Sharing media with parent : "

    .line 5383
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5384
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5385
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "User pairs for sharing media : "

    .line 5386
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5387
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5388
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5389
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    move v0, p3

    :goto_1a4
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1d5

    const-string v1, "/data/log/vold-dump_%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1b7
    .catchall {:try_start_5d .. :try_end_1b7} :catchall_29c

    .line 5394
    :try_start_1b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOLD LAST LOG BUF#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5395
    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1d2} :catch_1d2
    .catchall {:try_start_1b7 .. :try_end_1d2} :catchall_29c

    :catch_1d2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    .line 5401
    :cond_1d5
    :try_start_1d5
    monitor-exit p2
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_29c

    .line 5403
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter p3

    .line 5404
    :try_start_1d9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "mObbMounts:"

    .line 5405
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5406
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5407
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 5408
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 5409
    :goto_1ef
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_234

    .line 5410
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5412
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_220
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_230

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 5415
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_220

    .line 5417
    :cond_230
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_1ef

    .line 5419
    :cond_234
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5421
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "mObbPathToStateMap:"

    .line 5422
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5423
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5424
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 5425
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 5426
    :goto_24d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 5427
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " -> "

    .line 5429
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_24d

    .line 5432
    :cond_26f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5433
    monitor-exit p3
    :try_end_273
    .catchall {:try_start_1d9 .. :try_end_273} :catchall_299

    .line 5435
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter p2

    .line 5436
    :try_start_276
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p3, "Media cloud providers: "

    .line 5437
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5438
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 5439
    monitor-exit p2
    :try_end_284
    .catchall {:try_start_276 .. :try_end_284} :catchall_296

    .line 5441
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Last maintenance: "

    .line 5442
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5443
    iget-wide p2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_296
    move-exception p0

    .line 5439
    :try_start_297
    monitor-exit p2
    :try_end_298
    .catchall {:try_start_297 .. :try_end_298} :catchall_296

    throw p0

    :catchall_299
    move-exception p0

    .line 5433
    :try_start_29a
    monitor-exit p3
    :try_end_29b
    .catchall {:try_start_29a .. :try_end_29b} :catchall_299

    throw p0

    :catchall_29c
    move-exception p0

    .line 5401
    :try_start_29d
    monitor-exit p2
    :try_end_29e
    .catchall {:try_start_29d .. :try_end_29e} :catchall_29c

    throw p0
.end method

.method public final encodeBytes([B)Ljava/lang/String;
    .registers 2

    .line 3750
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "!"

    return-object p0

    .line 3753
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encryptExternalStorage(Z)I
    .registers 15

    .line 5800
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 5801
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 5804
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5806
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_19

    .line 5807
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_19

    .line 5808
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    const/4 v0, -0x1

    const-string v2, "StorageManagerService"

    if-nez v1, :cond_4b

    const-string/jumbo p0, "sdVolume == null"

    .line 5815
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4b
    const-string/jumbo v3, "readonly_storage"

    .line 5823
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5d

    const-string v3, "Policy has restriction \'readonly_storage\'; readonly"

    .line 5824
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, -0x80000000

    goto :goto_5e

    :cond_5d
    move v3, v4

    .line 5830
    :goto_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 5835
    :try_start_7a
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    if-eqz v5, :cond_9c

    .line 5836
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v5, v1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V

    .line 5838
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int v8, v5, v3

    iget v9, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 5843
    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->getListener()Landroid/os/IVoldTaskListener;

    move-result-object v11

    new-instance v12, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v12, p0, v1}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    move v10, p1

    .line 5838
    invoke-interface/range {v6 .. v12}, Landroid/os/IVold;->sdeEnable(Ljava/lang/String;IIZLandroid/os/IVoldTaskListener;Landroid/os/IVoldMountCallback;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9c} :catch_9d

    :cond_9c
    return v4

    :catch_9d
    move-exception p0

    .line 5874
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final enforceAdminUser()V
    .registers 4

    .line 2347
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 2348
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2352
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_29

    .line 2354
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_21

    return-void

    .line 2357
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only admin users can adopt sd cards"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_29
    move-exception p0

    .line 2354
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2355
    throw p0
.end method

.method public final enforceExternalStorageService()V
    .registers 2

    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    .line 4219
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 4220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4221
    iget p0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    if-ne v0, p0, :cond_12

    return-void

    .line 4222
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the ExternalStorageService is permitted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePermission(Ljava/lang/String;)V
    .registers 2

    .line 2275
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 3

    const-string v0, "android.permission.ASEC_CREATE"

    .line 6028
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6029
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6033
    :try_start_8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->asecFinalize(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    const/4 p0, 0x0

    goto :goto_16

    :catch_f
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6039
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public final findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5

    .line 732
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_18

    .line 735
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 736
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    .line 739
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 6

    .line 665
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 666
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 667
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 668
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 669
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object p1, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object p0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 672
    :cond_2d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;
    .registers 6

    .line 691
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 692
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "emulated;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0

    :cond_28
    const-string/jumbo v0, "primary_physical"

    .line 694
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 695
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0

    .line 697
    :cond_36
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-nez v0, :cond_54

    .line 699
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findStorageForUuidAsUser cannot find volumeUuid:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 702
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "private"

    const-string v2, "emulated"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 4

    .line 643
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/VolumeInfo;

    if-eqz p0, :cond_f

    .line 646
    monitor-exit v0

    return-object p0

    .line 648
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 649
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No volume found for ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_27
    move-exception p0

    .line 648
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 653
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 654
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 655
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 656
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_22

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 657
    iget-object p0, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 660
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_3d

    .line 661
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No volume found for path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3d
    move-exception p0

    .line 660
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public finishMediaUpdate()V
    .registers 3

    .line 6287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 6290
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_10

    .line 6291
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_17

    :cond_10
    const-string p0, "StorageManagerService"

    const-string v0, "Odd, nobody asked to unmount?"

    .line 6293
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    .line 6288
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "no permission to call finishMediaUpdate()"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 6

    .line 6046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixPermissionsSecureContainer: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.permission.ASEC_CREATE"

    .line 6047
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6048
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    if-nez p3, :cond_32

    const-string p3, ""

    :cond_32
    const/4 v0, 0x0

    .line 6056
    :try_start_33
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->asecFixperms(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_3e

    :catch_39
    move-exception p0

    .line 6062
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_3e
    return v0
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 3

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3800
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3803
    :try_start_5
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3805
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public fixupAppDir(Ljava/lang/String;)V
    .registers 7

    .line 3988
    sget-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3989
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "StorageManagerService"

    if-eqz v1, :cond_9a

    const/4 v1, 0x2

    .line 3990
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 3991
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asked to fixup an app dir without a userId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3995
    :cond_2a
    :try_start_2a
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    .line 3996
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3997
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_41} :catch_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_41} :catch_6e

    .line 3999
    :try_start_41
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v1}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_57} :catch_58
    .catch Landroid/os/ServiceSpecificException; {:try_start_41 .. :try_end_57} :catch_58
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_57} :catch_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_57} :catch_6e

    goto :goto_b3

    :catch_58
    move-exception p0

    .line 4001
    :try_start_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fixup app dir for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_6d} :catch_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_6d} :catch_6e

    goto :goto_b3

    :catch_6e
    move-exception p0

    .line 4006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find package to fixup app dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b3

    :catch_84
    move-exception p0

    .line 4004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid userId in path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b3

    .line 4009
    :cond_9a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Path "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid application-specific directory"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b3
    return-void
.end method

.method public forgetAllVolumes()V
    .registers 7

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 3065
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "StorageManagerService"

    const-string v1, "forgetAllVolumes"

    .line 3066
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3068
    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 3069
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3070
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 3071
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 3072
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3074
    :cond_3b
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3076
    :cond_43
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3078
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 3079
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 3082
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 3083
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3084
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_10 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public final forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3089
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3091
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 3041
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "StorageManagerService"

    .line 3042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forgetVolume: fsUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3046
    :try_start_21
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    if-eqz v1, :cond_3e

    .line 3047
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3048
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3050
    :cond_3e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 3054
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 3055
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 3056
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3059
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 3060
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_21 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public format(Ljava/lang/String;)V
    .registers 6

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 2916
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin format: volId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 2919
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2921
    :try_start_21
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v3, "auto"

    invoke-interface {v2, p1, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 2926
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->forgetVolume(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 2929
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public formatBySecApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 6634
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->chkMountUnmountFormatCaller(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p2, "StorageManagerService"

    const-string v0, "Format call accepted"

    .line 6635
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6641
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 6642
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 6647
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 6648
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_39
    if-nez v1, :cond_41

    const-string p0, "No matched storage to format by SecApp, so just return"

    .line 6653
    invoke-static {p2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6656
    :cond_41
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->partitionPublic(Ljava/lang/String;)V

    return-void

    .line 6637
    :cond_45
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Format call denied to ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .registers 5

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 3097
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3104
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    :cond_12
    const-string p0, "StorageManagerService"

    const-string p1, "Skipping fstrim - block based checkpoint in progress"

    .line 3137
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 3105
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception p0

    .line 3140
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 16

    .line 4721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p2

    .line 4723
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 4724
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 4725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4731
    :try_start_20
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    and-int/lit8 v3, p2, 0x10

    const-wide/16 v4, 0x0

    if-nez v3, :cond_37

    .line 4739
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 4740
    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v8

    .line 4741
    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v10

    goto :goto_3a

    :cond_37
    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    :goto_3a
    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_52

    .line 4745
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 4746
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide p0

    .line 4747
    invoke-virtual {p3, v2, p2}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v2

    sub-long/2addr p0, v2

    .line 4748
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    goto :goto_53

    :cond_52
    move-wide p0, v4

    :goto_53
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_61

    add-long/2addr v6, p0

    sub-long/2addr v6, v10

    .line 4752
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_5d} :catch_6d
    .catchall {:try_start_20 .. :try_end_5d} :catchall_6b

    .line 4759
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :cond_61
    add-long/2addr v6, p0

    sub-long/2addr v6, v8

    .line 4754
    :try_start_63
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_6d
    .catchall {:try_start_63 .. :try_end_67} :catchall_6b

    .line 4759
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_6b
    move-exception p0

    goto :goto_74

    :catch_6d
    move-exception p0

    .line 4757
    :try_start_6e
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_6b

    .line 4759
    :goto_74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4760
    throw p0
.end method

.method public final getAverageWriteAmount()I
    .registers 2

    .line 3291
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget p0, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    div-int/2addr v0, p0

    return v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 6

    .line 4662
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 4663
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4665
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4666
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 4668
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 4670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4671
    throw p0
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 6

    .line 4676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 4677
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4681
    :try_start_13
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 4682
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 4686
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_29
    move-exception p0

    goto :goto_32

    :catch_2b
    move-exception p0

    .line 4684
    :try_start_2c
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 4686
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4687
    throw p0
.end method

.method public getCloudMediaProvider()Ljava/lang/String;
    .registers 11

    .line 4193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4194
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4196
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4197
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 4198
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_33

    const/4 v9, 0x0

    if-nez v8, :cond_19

    return-object v9

    .line 4202
    :cond_19
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    move-object v1, v8

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 4204
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4205
    invoke-virtual {p0, v0, v6, v7}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    return-object v8

    :cond_32
    :goto_32
    return-object v9

    :catchall_33
    move-exception p0

    .line 4198
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "ro.vold.primary_physical"

    const/4 v0, 0x0

    .line 2638
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string/jumbo p0, "primary_physical"

    return-object p0

    .line 2641
    :cond_e
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .line 4629
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4630
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    const/4 v2, 0x0

    .line 4631
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 4632
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4634
    :cond_21
    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception p0

    .line 4635
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 4

    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    .line 5097
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 5098
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 10

    const-string v0, "Unknown uid "

    .line 4092
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v1

    .line 4095
    :try_start_6
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 4102
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_ae

    const-string v3, "Only File Manager Apps permitted"

    if-eqz v2, :cond_93

    .line 4112
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v5, 0x0

    .line 4113
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4112
    invoke-interface {v0, p1, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 4118
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v1, :cond_45

    const-string p0, "StorageManagerService"

    .line 4119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have a manageSpaceActivity"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_43} :catch_8d

    const/4 p0, 0x0

    return-object p0

    .line 4128
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4130
    :try_start_49
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 4131
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4132
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 4134
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4136
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 4137
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setIgnorePendingIntentCreatorForegroundState(Z)V

    const/high16 v0, 0x54000000

    .line 4141
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 4139
    invoke-static {p0, p2, v3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_72} :catch_78
    .catchall {:try_start_49 .. :try_end_72} :catchall_76

    .line 4147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_76
    move-exception p0

    goto :goto_81

    .line 4144
    :catch_78
    :try_start_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_76

    .line 4147
    :goto_81
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    throw p0

    .line 4115
    :cond_85
    :try_start_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid packageName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8d} :catch_8d

    .line 4123
    :catch_8d
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4104
    :cond_93
    :try_start_93
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4097
    :cond_99
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception p0

    .line 4107
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getMountModeInternal(ILjava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    .line 5104
    :try_start_1
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_a8

    .line 5108
    :cond_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5109
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    if-nez p2, :cond_20

    .line 5114
    aget-object p2, v1, v0

    .line 5117
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_a8

    .line 5119
    :try_start_24
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_a3

    if-eqz v4, :cond_34

    .line 5123
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5126
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->isExternalStorageService(I)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 p0, 0x3

    return p0

    .line 5133
    :cond_41
    iget v2, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v2, v3, :cond_a2

    iget v2, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 5134
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v2, v3, :cond_53

    goto :goto_a2

    .line 5141
    :cond_53
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v3, "android.permission.ACCESS_MTP"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_60

    move v2, v3

    goto :goto_61

    :cond_60
    move v2, v0

    :goto_61
    if-eqz v2, :cond_78

    .line 5144
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v5, 0x0

    .line 5145
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5144
    invoke-interface {v2, p2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_78

    .line 5146
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p2

    if-eqz p2, :cond_78

    return v4

    .line 5154
    :cond_78
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-interface {p2, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_84

    move p2, v3

    goto :goto_85

    :cond_84
    move p2, v0

    .line 5161
    :goto_85
    array-length v2, v1

    move v4, v0

    :goto_87
    if-ge v4, v2, :cond_9a

    aget-object v5, v1, v4

    .line 5162
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v7, 0x42

    invoke-interface {v6, v7, p1, v5}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_97

    move v0, v3

    goto :goto_9a

    :cond_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    :cond_9a
    :goto_9a
    if-nez p2, :cond_a0

    if-eqz v0, :cond_9f

    goto :goto_a0

    :cond_9f
    return v3

    :cond_a0
    :goto_a0
    const/4 p0, 0x2

    return p0

    :cond_a2
    :goto_a2
    return v4

    :catchall_a3
    move-exception p0

    .line 5123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5124
    throw p0
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_a8} :catch_a8

    :catch_a8
    :cond_a8
    :goto_a8
    return v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "rawPath cannot be null"

    .line 3597
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3599
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 3602
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3603
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3604
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3e

    if-nez v1, :cond_2f

    const-string p0, "StorageManagerService"

    .line 3606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find OBB mounted at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3610
    :cond_2f
    iget-object p1, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3e
    move-exception p0

    .line 3604
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 2

    .line 3493
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3494
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3495
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 2554
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p0, 0x0

    .line 2557
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-wide/32 v2, 0xc0000

    const/16 v5, 0x3e8

    move-object v1, p1

    .line 2554
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "android.permission.ASEC_ACCESS"

    .line 6272
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6274
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6278
    :try_start_8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->asecFsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6280
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 8

    const-string v0, "android.permission.ASEC_ACCESS"

    .line 5942
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 5944
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    const/4 v0, 0x0

    .line 5948
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->asecList()[Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v1

    const-string v2, "StorageManagerService"

    .line 5950
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v1, v0, [Ljava/lang/String;

    .line 5954
    :goto_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5957
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 5958
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkExternalSecureContainerMounted()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 5961
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5963
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v0

    .line 5964
    :cond_36
    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 5966
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 5967
    iget-boolean v6, v5, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    if-eqz v6, :cond_36

    .line 5968
    iget-object v5, v5, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_4e
    if-lez v4, :cond_67

    const-string p0, "StorageManagerService"

    .line 5974
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSecureContainerList : (no media) lists = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    :cond_67
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5980
    :cond_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_24 .. :try_end_6b} :catchall_74

    new-array p0, v0, [Ljava/lang/String;

    .line 5982
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_74
    move-exception p0

    .line 5980
    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSecureContainerPath: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.permission.ASEC_ACCESS"

    .line 6252
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6254
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6256
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkExternalSecureContainerMounted()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 6257
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 6258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/mnt/asec/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6263
    :cond_4a
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->asecPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_51

    return-object p0

    :catch_51
    move-exception p0

    .line 6265
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStorageVolumes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 5291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5297
    :try_start_5
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-string v2, "android.SecVold.StorageManagerService"

    const/16 v3, 0x600

    .line 5301
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 5300
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception p0

    const-string v0, "StorageManagerService"

    const-string v1, "Failed to get StorageVolume List "

    .line 5304
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUsedF2fsFileNode()J
    .registers 3

    .line 6367
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->getUsedF2fsFileNode()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception p0

    const-string v0, "StorageManagerService"

    .line 6369
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 41

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "android.SecVold.StorageManagerService"

    move-object/from16 v4, p2

    .line 4398
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v3, 0x3e8

    .line 4400
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "android"

    move-object/from16 v36, v5

    move v5, v4

    move-object/from16 v4, v36

    goto :goto_26

    .line 4403
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4404
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4408
    :goto_26
    invoke-virtual {v0, v4, v3}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_33e

    if-eq v5, v1, :cond_37

    .line 4413
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string v7, "Need INTERACT_ACROSS_USERS to get volumes for another user"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    and-int/lit16 v5, v2, 0x100

    const/4 v7, 0x0

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_3f

    :cond_3e
    move v5, v7

    :goto_3f
    and-int/lit16 v8, v2, 0x200

    if-eqz v8, :cond_45

    const/4 v8, 0x1

    goto :goto_46

    :cond_45
    move v8, v7

    :goto_46
    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_4c

    const/4 v9, 0x1

    goto :goto_4d

    :cond_4c
    move v9, v7

    :goto_4d
    and-int/lit16 v10, v2, 0x800

    if-eqz v10, :cond_53

    const/4 v10, 0x1

    goto :goto_54

    :cond_53
    move v10, v7

    :goto_54
    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    goto :goto_5b

    :cond_5a
    move v2, v7

    .line 4429
    :goto_5b
    iget v11, v0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {v3, v11}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v11

    if-eqz v2, :cond_af

    .line 4437
    :try_start_63
    iget-object v12, v0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_80

    if-nez v11, :cond_af

    .line 4448
    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    aget-object v12, v12, v7

    .line 4449
    invoke-virtual {v13, v3, v12}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_78

    goto :goto_af

    .line 4451
    :cond_78
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only File Manager Apps permitted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4439
    :cond_80
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_97} :catch_97

    :catch_97
    move-exception v0

    .line 4454
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4461
    :cond_af
    :goto_af
    invoke-virtual {v0, v7}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v12

    const/16 v13, 0x4d

    if-nez v12, :cond_c0

    .line 4462
    invoke-virtual {v0, v13}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v12

    if-eqz v12, :cond_be

    goto :goto_c0

    :cond_be
    move v12, v7

    goto :goto_c1

    :cond_c0
    :goto_c0
    const/4 v12, 0x1

    .line 4467
    :goto_c1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4469
    :try_start_c5
    const-class v16, Lcom/android/server/pm/UserManagerInternal;

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    .line 4470
    invoke-virtual {v6, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v6

    .line 4471
    iget-object v7, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v3

    .line 4473
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_339

    .line 4475
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4480
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4481
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 4482
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, -0x1

    move/from16 v18, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v13, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4483
    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    move/from16 v19, v10

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 4484
    :goto_10e
    :try_start_10e
    iget-object v10, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v15, v10, :cond_264

    .line 4485
    iget-object v10, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v20, v14

    .line 4486
    iget-object v14, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    move/from16 v21, v15

    .line 4487
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v15

    move-object/from16 v22, v7

    const/4 v7, 0x2

    if-eqz v15, :cond_155

    if-eq v15, v7, :cond_139

    const/4 v7, 0x5

    if-eq v15, v7, :cond_155

    goto :goto_152

    .line 4492
    :cond_139
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    if-ne v7, v1, :cond_140

    goto :goto_155

    :cond_140
    if-eqz v2, :cond_149

    .line 4495
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    if-ne v7, v6, :cond_149

    goto :goto_155

    .line 4501
    :cond_149
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    const/16 v15, 0x4d

    if-ne v7, v15, :cond_152

    goto :goto_155

    :cond_152
    :goto_152
    const/16 v7, 0x4d

    goto :goto_1a1

    :cond_155
    :goto_155
    if-eqz v5, :cond_175

    .line 4514
    invoke-virtual {v14, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v7

    if-nez v7, :cond_170

    if-eqz v2, :cond_165

    .line 4515
    invoke-virtual {v14, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v7

    if-nez v7, :cond_170

    :cond_165
    const/16 v7, 0x4d

    .line 4516
    invoke-virtual {v14, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v15

    if-eqz v15, :cond_16e

    goto :goto_170

    :cond_16e
    const/4 v7, 0x0

    goto :goto_171

    :cond_170
    :goto_170
    const/4 v7, 0x1

    :goto_171
    move v15, v7

    const/16 v7, 0x4d

    goto :goto_19f

    .line 4521
    :cond_175
    invoke-virtual {v14, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v7

    if-nez v7, :cond_19c

    const/16 v7, 0x4d

    .line 4522
    invoke-virtual {v14, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v15

    if-nez v15, :cond_19e

    .line 4523
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v15

    if-nez v15, :cond_191

    if-eqz v9, :cond_191

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_19e

    :cond_191
    if-eqz v2, :cond_19a

    .line 4524
    invoke-virtual {v14, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v15

    if-eqz v15, :cond_19a

    goto :goto_19e

    :cond_19a
    const/4 v15, 0x0

    goto :goto_19f

    :cond_19c
    const/16 v7, 0x4d

    :cond_19e
    :goto_19e
    const/4 v15, 0x1

    :goto_19f
    if-nez v15, :cond_1a9

    :goto_1a1
    move/from16 v24, v2

    move-object/from16 v10, v20

    move-object/from16 v7, v22

    goto/16 :goto_25d

    :cond_1a9
    if-eqz v11, :cond_1af

    move/from16 v24, v2

    goto/16 :goto_221

    :cond_1af
    if-nez v12, :cond_1d0

    const-string v15, "StorageManagerService"

    .line 4536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v2

    const-string v2, "Reporting "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unmounted due to system locked"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ce
    const/4 v2, 0x1

    goto :goto_222

    :cond_1d0
    move/from16 v24, v2

    .line 4537
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_200

    if-nez v4, :cond_200

    const-string v2, "StorageManagerService"

    .line 4539
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reporting "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unmounted due to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " locked"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ce

    :cond_200
    if-nez v3, :cond_221

    if-nez v8, :cond_221

    const-string v2, "StorageManagerService"

    .line 4541
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reporting "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unmounted due to missing permissions"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ce

    :cond_221
    :goto_221
    const/4 v2, 0x0

    .line 4546
    :goto_222
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    if-eq v1, v7, :cond_233

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    if-ltz v7, :cond_233

    .line 4547
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    goto :goto_234

    :cond_233
    move v7, v1

    .line 4549
    :goto_234
    iget-object v10, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10, v7, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 4551
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_24f

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    if-ne v7, v1, :cond_24f

    move-object/from16 v7, v22

    const/4 v10, 0x0

    .line 4552
    invoke-virtual {v7, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v17, 0x1

    goto :goto_254

    :cond_24f
    move-object/from16 v7, v22

    .line 4555
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4557
    :goto_254
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, v20

    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_25d
    add-int/lit8 v15, v21, 0x1

    move-object v14, v10

    move/from16 v2, v24

    goto/16 :goto_10e

    :cond_264
    move-object v10, v14

    if-eqz v19, :cond_2a8

    .line 4561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    .line 4562
    :goto_270
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2a8

    .line 4563
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 4566
    iget-object v6, v5, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_289

    goto :goto_2a5

    .line 4569
    :cond_289
    iget-wide v8, v5, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-wide/16 v11, 0x0

    cmp-long v6, v8, v11

    if-lez v6, :cond_2a5

    cmp-long v6, v8, v2

    if-gez v6, :cond_2a5

    .line 4570
    iget-object v6, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/os/storage/VolumeRecord;->buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 4571
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4572
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2a5
    :goto_2a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_270

    .line 4576
    :cond_2a8
    monitor-exit v13
    :try_end_2a9
    .catchall {:try_start_10e .. :try_end_2a9} :catchall_336

    const v2, 0x104000e

    if-eqz v18, :cond_2e0

    .line 4582
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    move-result-object v22

    .line 4589
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4591
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4593
    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string v20, "demo"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v32, 0x0

    const-string v33, "demo"

    const-string/jumbo v34, "mounted_ro"

    move-object/from16 v19, v4

    move-object/from16 v21, v22

    move-object/from16 v31, v3

    invoke-direct/range {v19 .. v34}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e0
    if-nez v17, :cond_329

    const-string v3, "StorageManagerService"

    const-string v4, "No primary storage defined yet; hacking together a stub"

    .line 4599
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ro.vold.primary_physical"

    const/4 v4, 0x0

    .line 4601
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 4605
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    .line 4606
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    xor-int/lit8 v24, v23, 0x1

    .line 4613
    new-instance v0, Landroid/os/UserHandle;

    move-object/from16 v29, v0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v31, 0x0

    const/16 v30, 0x0

    .line 4618
    new-instance v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v17, v0

    const-string/jumbo v18, "stub_primary"

    const/16 v22, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string/jumbo v32, "removed"

    const/16 v33, 0x0

    const-string v34, "fuse"

    const/16 v35, 0x0

    move-object/from16 v19, v20

    invoke-direct/range {v17 .. v35}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4624
    :cond_329
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    :catchall_336
    move-exception v0

    .line 4576
    :try_start_337
    monitor-exit v13
    :try_end_338
    .catchall {:try_start_337 .. :try_end_338} :catchall_336

    throw v0

    :catchall_339
    move-exception v0

    .line 4475
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4476
    throw v0

    .line 4409
    :cond_33e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "callingPackage does not match UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 5

    .line 4651
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4652
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeRecord;

    const/4 v1, 0x0

    .line 4653
    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 4654
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4656
    :cond_21
    monitor-exit p1

    return-object v0

    :catchall_23
    move-exception p0

    .line 4657
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_6

    const-string/jumbo p0, "unknown"

    return-object p0

    .line 5902
    :cond_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5903
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    const/4 v2, 0x0

    .line 5904
    :goto_12
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 5905
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    aput-object v3, v1, v2

    .line 5906
    iget-object v3, v3, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    const-string p0, "StorageManagerService"

    .line 5907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeState: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v2

    iget p1, p1, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " From pid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5908
    aget-object p0, v1, v2

    iget p0, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_68
    const-string p0, "StorageManagerService"

    const-string/jumbo p1, "getVolumeState: No matched Volume"

    .line 5911
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "unknown"

    .line 5912
    monitor-exit v0

    return-object p0

    :catchall_75
    move-exception p0

    .line 5913
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_9 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 4640
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4641
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x0

    .line 4642
    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 4643
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4645
    :cond_21
    monitor-exit p1

    return-object v0

    :catchall_23
    move-exception p0

    .line 4646
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final handleBootCompleted()V
    .registers 1

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 2634
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method public final handleDaemonConnected()V
    .registers 1

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method public final handleSystemReady()V
    .registers 6

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->prepareSmartIdleMaint()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1172
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-static {v0, v1}, Lcom/android/server/SmartStorageMaintIdler;->scheduleSmartIdlePass(Landroid/content/Context;I)V

    .line 1176
    :cond_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 1180
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/NandswapManager;->scheduleNandswapManager(Landroid/content/Context;)V

    .line 1184
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zram_enabled"

    .line 1185
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/StorageManagerService$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 1184
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    const-string/jumbo v0, "persist.sys.zram_enabled"

    .line 1196
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 1197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1198
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1200
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 1203
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->configureTranscoding()V

    return-void
.end method

.method public final hasDeviceRestriction(Ljava/lang/String;)Z
    .registers 7

    .line 6694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasDeviceRestriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "usbhost_storage"

    .line 6695
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "true"

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    if-eqz v0, :cond_31

    .line 6696
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isUsbHostStorageAllowed"

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_31
    const-string/jumbo v0, "sdcard_storage"

    .line 6698
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_45

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isSdCardEnabled"

    .line 6699
    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_45
    const-string/jumbo v0, "mass_storage"

    .line 6701
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 6702
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isUsbMassStorageEnabled"

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5a
    const-string/jumbo v0, "readonly_storage"

    .line 6704
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string/jumbo v0, "isSDCardWriteAllowed"

    .line 6705
    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6b
    const-string/jumbo p0, "not define policy !!!"

    .line 6708
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 11

    .line 6714
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6715
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string/jumbo p2, "policy : "

    const-string p4, "StorageManagerService"

    if-eqz p0, :cond_4f

    .line 6718
    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6719
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 6721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", restrict(allow) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "false"

    .line 6722
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_44} :catch_4d
    .catchall {:try_start_19 .. :try_end_44} :catchall_4b

    if-eqz p1, :cond_63

    const/4 p1, 0x1

    .line 6732
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_4b
    move-exception p1

    goto :goto_85

    :catch_4d
    move-exception p3

    goto :goto_69

    .line 6726
    :cond_4f
    :try_start_4f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " policy not yet?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_4d
    .catchall {:try_start_4f .. :try_end_63} :catchall_4b

    :cond_63
    if-eqz p0, :cond_83

    .line 6732
    :goto_65
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_83

    .line 6729
    :goto_69
    :try_start_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_4b

    if-eqz p0, :cond_83

    goto :goto_65

    :cond_83
    :goto_83
    const/4 p0, 0x0

    return p0

    :goto_85
    if-eqz p0, :cond_8a

    .line 6732
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 6734
    :cond_8a
    throw p1
.end method

.method public final initDirEncryptService()Z
    .registers 4

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "initDirEncryptService"

    .line 5744
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5746
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    if-nez v1, :cond_15

    .line 5747
    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 5750
    :cond_15
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

    if-nez v1, :cond_2b

    .line 5751
    new-instance v1, Lcom/android/server/StorageManagerService$DirEncryptListner;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$DirEncryptListner;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 5752
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    const-string/jumbo p0, "register direncryption listener"

    .line 5753
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public final initIfBootedAndConnected()V
    .registers 9

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thinking about init, mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDaemonConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_88

    .line 1352
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1356
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1359
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_70

    .line 1362
    :try_start_68
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v3}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_5a

    .line 1364
    :cond_70
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v3, v7, v6}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_82} :catch_83

    goto :goto_5a

    :catch_83
    move-exception v3

    .line 1367
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :cond_88
    return-void
.end method

.method public final isAppIoBlocked(I)Z
    .registers 2

    .line 4172
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public isAppIoBlocked(Ljava/lang/String;III)Z
    .registers 5

    .line 4168
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 6

    .line 1992
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_11

    if-eq p0, v2, :cond_11

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_11

    return v3

    .line 2002
    :cond_11
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    if-eqz p0, :cond_37

    if-eq p0, v1, :cond_37

    const/4 v1, 0x3

    if-eq p0, v1, :cond_37

    if-eq p0, v0, :cond_37

    const/4 v0, 0x6

    if-eq p0, v0, :cond_37

    const/4 v0, 0x7

    if-eq p0, v0, :cond_29

    const/16 p1, 0x8

    if-eq p0, p1, :cond_37

    return v3

    .line 2012
    :cond_29
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 2013
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    return v3

    :cond_37
    :goto_37
    return v2
.end method

.method public final isExtSDCardTrayRemoved()Z
    .registers 5

    const-string p0, "StorageManagerService"

    const/4 v0, 0x0

    .line 1856
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sdcard/status"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    .line 1858
    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notray"

    .line 1860
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    return v3

    :cond_23
    const-string v1, "Ext SD Card Tray State is not proper"

    .line 1863
    invoke-static {p0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_29
    const-string v1, "Ext SD Card Tray State File Not Exist"

    .line 1867
    invoke-static {p0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    return v3

    :catch_2f
    move-exception v1

    const-string v2, "Could\'t read Ext SD Card Tray State File : "

    .line 1871
    invoke-static {p0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final isExternalSecureContainer(Ljava/lang/String;)Z
    .registers 5

    .line 6155
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 6156
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 6157
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 6158
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 6159
    iget-object v2, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6160
    iget-boolean p0, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    .line 6164
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_42

    const-string v0, "StorageManagerService"

    .line 6165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isExternalSecureContainer: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_42
    move-exception p0

    .line 6164
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public isFbeSecure(I)Z
    .registers 4

    const-string v0, "StorageManagerService"

    const-string v1, "fbeIsSecure"

    .line 5882
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->isFbeSecure(I)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    return p0

    :catch_e
    const-string p0, "Error in communicating with vold in validating"

    .line 5886
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isMediaPath(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    .line 6411
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6412
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string v0, "/data/media"

    .line 6415
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    :cond_12
    return p0

    :catch_13
    move-exception p1

    .line 6420
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method public final isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 9

    .line 2283
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    return v1

    .line 2288
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isMountDisallowedByEAS(Z)Z

    move-result v0

    const-string v2, "StorageManagerService"

    const/4 v3, 0x1

    if-eqz v0, :cond_18

    const-string p0, "Policy has restriction \'storage_itpolicy_ui\'; cannot mount volume."

    .line 2289
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2294
    :cond_18
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    :try_start_22
    const-string/jumbo v4, "restriction_policy"

    .line 2300
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v4

    .line 2301
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 2302
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v6, :cond_58

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v6

    if-eqz v6, :cond_58

    if-eqz v4, :cond_58

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string v4, "SDcard is restricted in MDM"

    .line 2303
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2305
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v3

    .line 2307
    :cond_58
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v6, :cond_70

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v6

    if-eqz v6, :cond_70

    if-eqz v4, :cond_70

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_70

    const-string v4, "USB MEMORY is restricted in MDM"

    .line 2308
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_6f} :catch_70

    return v3

    .line 2314
    :catch_70
    :cond_70
    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v4, :cond_7c

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_7c

    move v4, v3

    goto :goto_7d

    :cond_7c
    move v4, v1

    .line 2315
    :goto_7d
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_89

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v5

    if-eqz v5, :cond_89

    move v5, v3

    goto :goto_8a

    :cond_89
    move v5, v1

    :goto_8a
    if-eqz v4, :cond_9b

    const-string/jumbo v4, "sdcard_storage"

    .line 2317
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    const-string p0, "Policy has restriction \'sdcard\'; cannot mount volume."

    .line 2318
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9b
    if-eqz v5, :cond_ac

    const-string/jumbo v4, "usbhost_storage"

    .line 2322
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ac

    const-string p0, "Policy has restriction \'usbhost_storage\'; cannot mount volume."

    .line 2323
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2330
    :cond_ac
    iget-object p0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz p0, :cond_c2

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p0

    if-eqz p0, :cond_c2

    .line 2332
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    const-string/jumbo v2, "no_usb_file_transfer"

    .line 2331
    invoke-virtual {v0, v2, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    goto :goto_c3

    :cond_c2
    move p0, v1

    .line 2336
    :goto_c3
    iget p1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz p1, :cond_cf

    if-eq p1, v3, :cond_cf

    const/4 v2, 0x5

    if-ne p1, v2, :cond_cd

    goto :goto_cf

    :cond_cd
    move p1, v1

    goto :goto_da

    .line 2340
    :cond_cf
    :goto_cf
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const-string/jumbo v2, "no_physical_media"

    .line 2339
    invoke-virtual {v0, v2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    :goto_da
    if-nez p0, :cond_de

    if-eqz p1, :cond_df

    :cond_de
    move v1, v3

    :cond_df
    return v1
.end method

.method public final isMountDisallowedByEAS(Z)Z
    .registers 6

    .line 6541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isMountDisallowedByEAS: storage_itpolicy from_intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6542
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    const-string/jumbo p0, "isMountDisallowedByEAS: DevicePolicyManager is NULL"

    .line 6544
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2b
    const/4 v3, 0x0

    .line 6547
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5c

    if-eqz p1, :cond_40

    .line 6549
    iget-boolean p1, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    if-ne v0, p1, :cond_40

    const-string/jumbo p0, "policy has restriction but not show noti storage_itpolicy"

    .line 6550
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6553
    :cond_40
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    const-string/jumbo p1, "policy has restriction storage_itpolicy"

    .line 6554
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Send ACTION_SDCARD_ITPOLICY_TOAST_EVENT INTENT!!"

    .line 6555
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6556
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6557
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v3

    :cond_5c
    const-string/jumbo p1, "isMountDisallowedByEAS: check is true"

    .line 6561
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6562
    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    return v2
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "rawPath cannot be null"

    .line 3615
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3616
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3617
    :try_start_9
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 3618
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isPackageForeground(Ljava/lang/String;)Z
    .registers 6

    .line 4038
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIssLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4039
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3f

    .line 4041
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 4042
    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 4043
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4044
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne p0, v2, :cond_19

    .line 4045
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p1, 0x64

    if-eq p0, p1, :cond_36

    iget-boolean p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_31} :catch_39
    .catchall {:try_start_d .. :try_end_31} :catchall_3f

    if-eqz p0, :cond_34

    goto :goto_36

    .line 4049
    :cond_34
    :try_start_34
    monitor-exit v0

    return v3

    :cond_36
    :goto_36
    const/4 p0, 0x1

    .line 4046
    monitor-exit v0

    return p0

    :catch_39
    move-exception p0

    .line 4053
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4055
    :cond_3d
    monitor-exit v0

    return v3

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public isPassedLifetimeThresh()Z
    .registers 1

    .line 3267
    iget-boolean p0, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    return p0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "android.permission.ASEC_ACCESS"

    .line 6212
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6214
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6216
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 6217
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "StorageManagerService"

    .line 6218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSecureContainerMounted: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6219
    monitor-exit v0

    return p0

    :catchall_37
    move-exception p0

    .line 6220
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw p0
.end method

.method public isSensitive(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_15

    .line 6763
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 6764
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->isSensitive(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6767
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemUnlocked(I)Z
    .registers 3

    .line 3883
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3884
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3885
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 4

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 3592
    :cond_6
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 3

    .line 3877
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3878
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3879
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isValidPath(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    .line 6389
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6390
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    const-string v0, "/data/media"

    .line 6393
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "/data/sec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_26

    :cond_1d
    const-string p1, "StorageManagerService"

    const-string/jumbo v0, "input path is not supported"

    .line 6396
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_28

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :cond_27
    return p0

    :catch_28
    move-exception p1

    .line 6403
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method public final killMediaProvider(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1311
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1313
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_b
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1315
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_b

    .line 1317
    :cond_1e
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v5, "media"

    const-wide/32 v6, 0xc0000

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x3e8

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1322
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_49

    .line 1324
    :try_start_34
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1325
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v5, -0x1

    const-string/jumbo v6, "vold reset"

    .line 1324
    invoke-interface {v3, v4, v2, v5, v6}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_45} :catch_b
    .catchall {:try_start_34 .. :try_end_45} :catchall_49

    .line 1334
    :cond_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    throw p0
.end method

.method public lastMaintenance()J
    .registers 3

    .line 1654
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public final loadStorageWriteRecords()V
    .registers 5

    const/4 v0, 0x0

    .line 3274
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 3275
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3277
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 3278
    sget v3, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    if-ne v2, v3, :cond_2c

    .line 3279
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1c} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1f
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_2c

    :catchall_1d
    move-exception p0

    goto :goto_28

    :catch_1f
    move-exception p0

    :try_start_20
    const-string v1, "StorageManagerService"

    const-string v2, "Failed reading write records"

    .line 3284
    invoke-static {v1, v2, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    goto :goto_2c

    .line 3286
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3287
    throw p0

    .line 3286
    :catch_2c
    :cond_2c
    :goto_2c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public lockUserKey(I)V
    .registers 4

    if-nez p1, :cond_11

    .line 3852
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 3853
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Headless system user data cannot be locked.."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3856
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3858
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_38

    const-string p0, "StorageManagerService"

    .line 3859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'s CE storage is already locked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3864
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_4a

    .line 3870
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3871
    :try_start_40
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->remove(I)V

    .line 3872
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_47

    throw p0

    :catch_4a
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3866
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .registers 7

    .line 2223
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 2227
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 2228
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_14

    goto :goto_4b

    .line 2233
    :cond_14
    iget-object p0, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1d
    const-string p0, ""

    :goto_1f
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3d

    const/4 v3, 0x3

    if-ne p2, v3, :cond_28

    goto :goto_3d

    :cond_28
    if-eqz p2, :cond_2e

    const/16 v3, 0x8

    if-ne p2, v3, :cond_4b

    :cond_2e
    const p2, 0x3345e

    new-array v2, v2, [Ljava/lang/Object;

    .line 2240
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object p1, v2, v1

    aput-object p0, v2, v0

    invoke-static {p2, v2}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4b

    :cond_3d
    :goto_3d
    const p2, 0x3345d

    new-array v2, v2, [Ljava/lang/Object;

    .line 2237
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object p1, v2, v1

    aput-object p0, v2, v0

    invoke-static {p2, v2}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final maybeRemountVolumes(I)V
    .registers 8

    .line 1593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1595
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 1596
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1597
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1598
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v4

    iget v5, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq v4, v5, :cond_3a

    .line 1601
    iget v4, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v4, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1602
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1605
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_83

    .line 1607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    const-string v2, "StorageManagerService"

    .line 1608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remounting volume for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1610
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_42

    :cond_82
    return-void

    :catchall_83
    move-exception p0

    .line 1605
    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, ": "

    .line 4323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4324
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys.user."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".ce_available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4328
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    const-string v5, "Failed to prepare "

    if-eqz v4, :cond_175

    if-nez v2, :cond_48

    const/4 v4, 0x0

    .line 4334
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_48

    .line 4335
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4339
    :cond_48
    :goto_48
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 4341
    invoke-virtual {v3, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4344
    :try_start_55
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 4345
    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v3

    if-eqz v3, :cond_84

    .line 4346
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_84

    .line 4347
    :cond_6a
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " should not have "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_84} :catch_84

    .line 4355
    :catch_84
    :cond_84
    :goto_84
    :try_start_84
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8d} :catch_157

    .line 4360
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 4361
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a8

    .line 4362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4366
    :cond_a8
    sget-object v4, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 4367
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    const-string v7, "Invalid mkdirs path: "

    if-eqz v6, :cond_13d

    const/4 v6, 0x3

    .line 4369
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_120

    const/4 p1, 0x2

    .line 4375
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d6

    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 4376
    :cond_d6
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_fe

    iget p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_e1

    goto :goto_fe

    .line 4377
    :cond_e1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not match calling user id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4381
    :cond_fe
    :goto_fe
    :try_start_fe
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, v3, v1}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_103} :catch_104

    return-void

    :catch_104
    move-exception p0

    .line 4383
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4370
    :cond_120
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not contain calling package "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4388
    :cond_13d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a known app path."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_157
    move-exception p0

    .line 4357
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4329
    :cond_175
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public monitor()V
    .registers 2

    .line 5450
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->monitor()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p0

    const-string v0, "StorageManagerService"

    .line 5452
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public final mount(Landroid/os/storage/VolumeInfo;)V
    .registers 9

    const-string v0, "StorageManagerService"

    .line 2801
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounting volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "readonly_storage"

    .line 2805
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    const-string v1, "Policy has restriction \'readonly_storage\'; readonly"

    .line 2806
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x80000000

    goto :goto_29

    :cond_28
    move v1, v2

    .line 2813
    :goto_29
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    .line 2814
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "Admin Stirage Card Encryption Policy is Set"

    .line 2815
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x20000000

    goto :goto_43

    :cond_42
    move v3, v2

    .line 2819
    :goto_43
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v6, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    or-int/2addr v1, v3

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    new-instance v6, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v6, p0, p1}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 2853
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_5d

    .line 2854
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 2858
    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounted volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    const-string v1, "/data/media"

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 2862
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.google.android.providers.media.module"

    .line 2863
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2864
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p1, :cond_97

    .line 2866
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->setMpUidForFileSystem(I)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception p0

    .line 2870
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    :goto_97
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 4

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 2770
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin mount: volId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2773
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 2777
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void

    .line 2774
    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mounting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " restricted by policy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mountBySecApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 6614
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->chkMountUnmountFormatCaller(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p2, "StorageManagerService"

    const-string v0, "Mount call accepted"

    .line 6615
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Ljava/lang/String;)V

    return-void

    .line 6617
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mount call denied to ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .registers 16

    const-string/jumbo v0, "rawPath cannot be null"

    .line 3624
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "canonicalPath cannot be null"

    .line 3625
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "token cannot be null"

    .line 3626
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "obbIfno cannot be null"

    .line 3627
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3630
    new-instance v9, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 3632
    new-instance p1, Lcom/android/server/StorageManagerService$MountObbAction;

    invoke-direct {p1, p0, v9, v0, p5}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;ILandroid/content/res/ObbInfo;)V

    .line 3633
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 8

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    .line 4267
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4271
    :goto_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 4273
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_28

    .line 4274
    new-instance v2, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v2}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 4275
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v4, "AppFuseBridge"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_57

    const/4 v2, 0x1

    .line 4279
    :cond_28
    :try_start_28
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_2e
    .catch Lcom/android/server/AppFuseMountException; {:try_start_28 .. :try_end_2e} :catch_51
    .catchall {:try_start_28 .. :try_end_2e} :catchall_57

    .line 4281
    :try_start_2e
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 4282
    invoke-virtual {v5, v6}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_3e
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2e .. :try_end_3e} :catch_40
    .catch Lcom/android/server/AppFuseMountException; {:try_start_2e .. :try_end_3e} :catch_51
    .catchall {:try_start_2e .. :try_end_3e} :catchall_57

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_57

    return-object v4

    :catch_40
    move-exception v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4d

    :try_start_44
    const-string p0, "StorageManagerService"

    const-string v0, ""

    .line 4286
    invoke-static {p0, v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Lcom/android/server/AppFuseMountException; {:try_start_44 .. :try_end_4b} :catch_51
    .catchall {:try_start_44 .. :try_end_4b} :catchall_57

    .line 4287
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_57

    return-object v4

    .line 4290
    :cond_4d
    :try_start_4d
    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_4f
    .catch Lcom/android/server/AppFuseMountException; {:try_start_4d .. :try_end_4f} :catch_51
    .catchall {:try_start_4d .. :try_end_4f} :catchall_57

    .line 4295
    :try_start_4f
    monitor-exit v1

    goto :goto_c

    :catch_51
    move-exception p0

    .line 4293
    invoke-virtual {p0}, Lcom/android/server/AppFuseMountException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :catchall_57
    move-exception p0

    .line 4295
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw p0
.end method

.method public mountSdpMediaStorageCmd(I)Z
    .registers 2

    .line 6775
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->mountSdpMediaStorageCmd(I)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6777
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 8

    const-string v0, "android.permission.ASEC_MOUNT_UNMOUNT"

    .line 6101
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6103
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6105
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 6106
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 p0, -0x6

    .line 6107
    monitor-exit v0

    return p0

    .line 6109
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_5a

    const/4 v0, 0x0

    .line 6113
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IVold;->asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_24

    move p2, v0

    goto :goto_2b

    :catch_24
    move-exception p2

    const-string p3, "StorageManagerService"

    .line 6115
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    .line 6119
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_59

    .line 6121
    iget-object p4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter p4

    if-eqz p3, :cond_49

    :try_start_36
    const-string v1, "/data/app-asec/"

    .line 6122
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 6123
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 6125
    :cond_49
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6127
    :goto_54
    monitor-exit p4

    goto :goto_59

    :catchall_56
    move-exception p0

    monitor-exit p4
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    :goto_59
    return p2

    :catchall_5a
    move-exception p0

    .line 6109
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 4

    .line 6675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mountVolume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public mvFileAtData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6426
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.SEM_VOLD_DATA_MOVE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6428
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_71

    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_71

    .line 6433
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo p0, "mvFileAtData not support from media to media dir, so return false"

    .line 6434
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6439
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 6441
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    new-instance v8, Lcom/android/server/StorageManagerService$14;

    invoke-direct {v8, p0, v0}, Lcom/android/server/StorageManagerService$14;-><init>(Lcom/android/server/StorageManagerService;Ljava/util/concurrent/CompletableFuture;)V

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v8}, Landroid/os/IVold;->mvFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 6454
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 6455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rename in media path result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_5f

    const-string/jumbo p2, "true"

    goto :goto_61

    :cond_5f
    const-string p2, "false"

    :goto_61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6b} :catch_6c

    return p0

    :catch_6c
    move-exception p0

    .line 6458
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_71
    :goto_71
    const-string/jumbo p0, "mvFileAtData not support other than media or sec dir, so return false"

    .line 6429
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public needsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 3710
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3711
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result p0

    return p0
.end method

.method public notifyAppIoBlocked(Ljava/lang/String;III)V
    .registers 5

    .line 4153
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 4155
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageSessionController;->notifyAppIoBlocked(Ljava/lang/String;III)V

    return-void
.end method

.method public notifyAppIoResumed(Ljava/lang/String;III)V
    .registers 5

    .line 4160
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 4162
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageSessionController;->notifyAppIoResumed(Ljava/lang/String;III)V

    return-void
.end method

.method public final notifyCloudMediaProviderChangedAsync(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 6

    .line 2203
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_21

    .line 2205
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 2206
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2205
    invoke-interface {p1, v2, v3}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2208
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 5

    const-string v0, "StorageManagerService"

    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1568
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v0

    const-string v1, "StorageManagerService"

    .line 1570
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1573
    :goto_28
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1574
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1575
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final onCloudMediaProviderChangedAsync(I)V
    .registers 4

    .line 2213
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2215
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_27

    .line 2217
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {p0}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->-$$Nest$fgetmCloudProviderChangeListeners(Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 2218
    invoke-interface {v0, p1, v1}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    goto :goto_16

    :cond_26
    return-void

    :catchall_27
    move-exception p0

    .line 2215
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public onDaemonConnected()V
    .registers 2

    const/4 v0, 0x1

    .line 1658
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1659
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1881
    :goto_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 1882
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1883
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1888
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDiskScannedLocked: disk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " volumeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x5000000

    .line 1891
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1893
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    .line 1894
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1895
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1897
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_73

    .line 1899
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1902
    :cond_73
    iput v1, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1903
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p0, p1, v1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyDiskScanned(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    if-eqz p1, :cond_16

    .line 1628
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    .line 1629
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 1637
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v0, 0x1e

    iget-boolean p0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->sendMessageWithBoolean(IZ)V

    return-void
.end method

.method public final onMoveStatusLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2246
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_c

    const-string p0, "Odd, status but no move requested"

    .line 2247
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    .line 2253
    :try_start_f
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    const/16 v0, 0x52

    const-string v2, "Move to "

    if-ne p1, v0, :cond_38

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " copy phase finshed; persisting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2266
    :cond_38
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2269
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2270
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    :cond_5f
    return-void
.end method

.method public final onStopUser(I)V
    .registers 4

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUserStopping(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 1583
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1585
    :goto_21
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    if-eqz p0, :cond_32

    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_32
    return-void
.end method

.method public final onUnlockUser(I)V
    .registers 9

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser: userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1502
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_c2

    .line 1485
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "system"

    .line 1486
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1485
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 1487
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-eqz v3, :cond_47

    .line 1490
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 1492
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUnlockUser: um is null, so just put userId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") with false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6c
    if-eqz v3, :cond_95

    .line 1496
    invoke-virtual {v3}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 1497
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1498
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    .line 1501
    :cond_95
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 1502
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_ad} :catch_ae

    goto :goto_c2

    .line 1507
    :catch_ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create user context for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_c2
    :goto_c2
    :try_start_c2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v2, p1}, Lcom/android/server/storage/StorageSessionController;->onUnlockUser(I)V

    .line 1515
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1516
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v2, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d1} :catch_d2

    goto :goto_d6

    :catch_d2
    move-exception v2

    .line 1518
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1522
    :goto_d6
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_e1

    if-nez p1, :cond_e1

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->initDirEncryptService()Z

    .line 1526
    :cond_e1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1527
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1528
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    if-eqz v1, :cond_f9

    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_f9

    .line 1529
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    .line 1530
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    :cond_f9
    return-void
.end method

.method public final onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "ro.alarm_boot"

    const/4 v1, 0x0

    .line 1911
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1912
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->isOnlyCoreApps()Z

    move-result v2

    const-string v3, "StorageManagerService"

    if-eqz v2, :cond_2d

    if-nez v0, :cond_2d

    .line 1914
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System booted in core-only mode; ignoring volume "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1917
    :cond_2d
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1918
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1920
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    const-string v4, " because user "

    const-string v5, "Ignoring volume "

    if-ltz v2, :cond_6b

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1921
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1922
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is no longer running."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1921
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1926
    :cond_6b
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x5

    if-ne v0, v2, :cond_113

    .line 1927
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1928
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1927
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 1932
    const-class v1, Landroid/os/UserManager;

    .line 1931
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1932
    invoke-virtual {v0}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v1

    :cond_8c
    if-nez v1, :cond_c0

    .line 1937
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1938
    invoke-virtual {v0, v1}, Lcom/android/server/storage/StorageSessionController;->supportsExternalStorage(I)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1939
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1940
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not support external storage."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1939
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1945
    :cond_c0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1946
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1948
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string/jumbo v2, "private"

    .line 1949
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    :cond_e3
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1950
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1951
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found primary storage at #1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v6

    or-int/lit8 v0, v0, 0x4

    .line 1953
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1954
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1ab

    :cond_113
    if-nez v0, :cond_167

    .line 1959
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1960
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found primary storage at #2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v6

    or-int/lit8 v0, v0, 0x4

    .line 1963
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1968
    :cond_143
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_159

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 1969
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1972
    :cond_159
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1973
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1ab

    :cond_167
    if-ne v0, v6, :cond_173

    .line 1976
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1ab

    :cond_173
    if-ne v0, v7, :cond_197

    .line 1979
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isStubVisible()Z

    move-result v0

    if-eqz v0, :cond_184

    .line 1980
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    goto :goto_189

    .line 1982
    :cond_184
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1984
    :goto_189
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1985
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1ab

    .line 1987
    :cond_197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping automatic mounting of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ab
    :goto_1ab
    return-void
.end method

.method public final onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V
    .registers 14

    .line 2075
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2078
    :try_start_3
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 2079
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    if-nez v1, :cond_3f

    .line 2081
    new-instance v1, Landroid/os/storage/VolumeRecord;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 2082
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 2083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 2084
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 2085
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2087
    :cond_37
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 2090
    :cond_3f
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2091
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 2095
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2098
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_166

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5b

    .line 2104
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V

    .line 2111
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    :try_end_60
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception v1

    const-string v2, "StorageManagerService"

    const-string v3, "Failed to notify volume state changed to the Storage Service"

    .line 2113
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2115
    :goto_69
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2116
    :try_start_6c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 2120
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_a4

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 2121
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    .line 2122
    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.os.storage.extra.VOLUME_STATE"

    .line 2123
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.os.storage.extra.FS_UUID"

    .line 2124
    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x5000000

    .line 2125
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2127
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2130
    :cond_a4
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p2

    .line 2131
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 2133
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 2137
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_b7
    if-ge v6, v4, :cond_dd

    aget v7, v3, v6

    .line 2138
    invoke-virtual {p1, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 2139
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8, v7, v5}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 2141
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2143
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, p2, v2}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_da
    add-int/lit8 v6, v6, 0x1

    goto :goto_b7

    .line 2150
    :cond_dd
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez p2, :cond_148

    .line 2151
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p2

    if-eqz p2, :cond_117

    .line 2152
    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_117

    const-string/jumbo p2, "mounted"

    .line 2153
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_106

    .line 2154
    iget-object p2, p1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string v2, "StorageManagerService"

    const-string v3, "Set Ext SD Card FsType Property by Ext SD Card Info"

    .line 2155
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sys.ext_sdcard.fstype"

    .line 2156
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    :cond_106
    const-string p2, "StorageManagerService"

    const-string v2, "Set Ext SD Card FsType Property to default"

    .line 2158
    invoke-static {p2, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "sys.ext_sdcard.fstype"

    const-string/jumbo v2, "none"

    .line 2159
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    :cond_117
    if-eqz p2, :cond_148

    .line 2161
    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p2

    if-eqz p2, :cond_148

    const-string/jumbo p2, "mounted"

    .line 2162
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_138

    .line 2163
    iget-object p2, p1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string v2, "StorageManagerService"

    const-string v3, "Set USB Storage FsType Property by USB Storage Info"

    .line 2164
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sys.usb_storage.fstype"

    .line 2165
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    :cond_138
    const-string p2, "StorageManagerService"

    const-string v2, "Set USB Storage FsType Property to default"

    .line 2167
    invoke-static {p2, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "sys.usb_storage.fstype"

    const-string/jumbo v2, "none"

    .line 2168
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    :cond_148
    :goto_148
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x5

    if-eqz p2, :cond_14f

    if-ne p2, v2, :cond_15e

    :cond_14f
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne p2, v2, :cond_15e

    .line 2182
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2185
    :cond_15e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 2186
    monitor-exit v1

    return-void

    :catchall_163
    move-exception p0

    monitor-exit v1
    :try_end_165
    .catchall {:try_start_6c .. :try_end_165} :catchall_163

    throw p0

    :catchall_166
    move-exception p0

    .line 2098
    :try_start_167
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw p0
.end method

.method public final onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 5

    .line 2027
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2a

    if-eq p3, v0, :cond_15

    .line 2029
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2030
    :cond_15
    iget-boolean p2, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    if-eqz p2, :cond_2a

    .line 2031
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result p2

    .line 2033
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/StorageManagerService;ILandroid/os/storage/VolumeInfo;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2069
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 6

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    .line 4302
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    .line 4308
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_c .. :try_end_f} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_25

    .line 4309
    :try_start_f
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez p0, :cond_1c

    const-string p0, "StorageManagerService"

    const-string p1, "FuseBridge has not been created"

    .line 4310
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    monitor-exit v1

    return-object v0

    .line 4313
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_22
    move-exception p0

    .line 4314
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    :try_start_24
    throw p0
    :try_end_25
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_24 .. :try_end_25} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception p0

    const-string p1, "StorageManagerService"

    const-string p2, "The mount point has already been invalid"

    .line 4316
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 3001
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 3003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "partitionMixed: diskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 3006
    :try_start_23
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    const-string/jumbo p1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    .line 3007
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 3009
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 7

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 2987
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "partitionPrivate: diskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2992
    :try_start_23
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    const-string/jumbo p1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    .line 2993
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 2995
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 7

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 2974
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "partitionPublic: diskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2978
    :try_start_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    const-string/jumbo p1, "partitionPublic"

    const-wide/32 v2, 0x927c0

    .line 2979
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 2981
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void
.end method

.method public final prepareSmartIdleMaint()Z
    .registers 6

    const-string/jumbo v0, "storage_native_boot"

    const-string/jumbo v1, "smart_idle_maint_enabled"

    const/4 v2, 0x0

    .line 3230
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v3, 0x46

    const-string/jumbo v4, "lifetime_threshold"

    .line 3235
    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    const/16 v3, 0x200

    const-string/jumbo v4, "min_segments_threshold"

    .line 3238
    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "dirty_reclaim_rate"

    .line 3240
    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v4, "segment_reclaim_weight"

    .line 3242
    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    const/high16 v3, 0x41a00000    # 20.0f

    const-string/jumbo v4, "low_battery_level"

    .line 3245
    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    const/4 v3, 0x1

    const-string v4, "charging_required"

    .line 3247
    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mChargingRequired:Z

    .line 3252
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->loadStorageWriteRecords()V

    .line 3256
    :try_start_51
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->refreshLatestWrite()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_57

    goto :goto_5d

    :catch_57
    move-exception v0

    const-string v2, "StorageManagerService"

    .line 3258
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3260
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    :cond_60
    return v1
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 6

    const-string v0, "android.permission.STORAGE_INTERNAL"

    .line 3913
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3915
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    return-void
.end method

.method public final prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    .registers 9

    .line 3889
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 3893
    :cond_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3894
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 3895
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 3897
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3899
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x3

    goto :goto_3f

    .line 3901
    :cond_36
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move v4, v1

    .line 3907
    :goto_3f
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    goto :goto_20

    :cond_49
    return-void
.end method

.method public final prepareUserStorageInternal(Ljava/lang/String;III)V
    .registers 11

    const-string v0, "encryption policy for SA logging"

    const-string v1, "encryption policy for SA logging : "

    const-string v2, "StorageManagerService"

    const/4 v3, 0x1

    .line 3921
    :try_start_7
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V

    if-eqz p1, :cond_29

    .line 3925
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class p4, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 3926
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p3

    if-eqz p3, :cond_29

    if-nez p2, :cond_29

    .line 3927
    iget p3, p3, Landroid/os/storage/VolumeInfo;->type:I

    if-ne p3, v3, :cond_29

    .line 3928
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/Installer;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_55

    :cond_29
    if-nez p2, :cond_54

    .line 3965
    :try_start_2b
    new-instance p1, Lcom/samsung/android/jdsms/Sender;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    const-string p0, "FBE4"

    const-string p2, "encryption policy success"

    .line 3966
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3c} :catch_3d

    goto :goto_54

    :catch_3d
    move-exception p0

    .line 3969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception p1

    const p3, 0x534e4554

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "224585613"

    aput-object v5, p4, v4

    const/4 v4, -0x1

    .line 3932
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p4, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, p4, v3

    invoke-static {p3, p4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3933
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p3, "security.fbe.global_de"

    .line 3941
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3942
    const-class p4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v3, "loaded"

    .line 3943
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_98

    invoke-virtual {p4, p2}, Lcom/android/server/pm/UserManagerInternal;->shouldIgnorePrepareStorageErrors(I)Z

    move-result p3

    if-eqz p3, :cond_92

    goto :goto_98

    .line 3960
    :cond_92
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 3944
    :cond_98
    :goto_98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "ignoring error preparing storage for existing user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; device may be insecure!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_e2

    .line 3949
    :try_start_b4
    new-instance p1, Lcom/samsung/android/jdsms/Sender;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "security.fbe.fail_cause"

    .line 3950
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "FBE5"

    .line 3951
    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_ca} :catch_cb

    goto :goto_e2

    :catch_cb
    move-exception p0

    .line 3954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    :goto_e2
    return-void
.end method

.method public final readSettingsLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    .line 2647
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2648
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2652
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_c7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_16} :catch_b9
    .catchall {:try_start_10 .. :try_end_16} :catchall_b7

    .line 2653
    :try_start_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSettingsLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 2657
    :cond_39
    :goto_39
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a8

    const/4 v7, 0x2

    if-ne v5, v7, :cond_39

    .line 2659
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "volumes"

    .line 2660
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    const-string/jumbo v5, "version"

    .line 2661
    invoke-interface {v4, v2, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v8, "ro.vold.primary_physical"

    const/4 v9, 0x0

    .line 2662
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v10, 0x3

    if-ge v5, v10, :cond_68

    if-lt v5, v7, :cond_67

    if-nez v8, :cond_67

    goto :goto_68

    :cond_67
    move v6, v9

    :cond_68
    :goto_68
    if-eqz v6, :cond_39

    const-string/jumbo v5, "primaryStorageUuid"

    .line 2667
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_39

    :cond_74
    const-string/jumbo v6, "volume"

    .line 2670
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 2671
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Landroid/util/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v5

    .line 2672
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readSettingsLocked: TAG_VOLUME rec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " rec.fsUuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_a7} :catch_b5
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_a7} :catch_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_a7} :catch_af
    .catchall {:try_start_16 .. :try_end_a7} :catchall_ac

    goto :goto_39

    .line 2684
    :cond_a8
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_ca

    :catchall_ac
    move-exception p0

    move-object v2, v3

    goto :goto_c3

    :catch_af
    move-exception p0

    move-object v2, v3

    goto :goto_ba

    :catch_b2
    move-exception p0

    move-object v2, v3

    goto :goto_bf

    :catch_b5
    move-object v2, v3

    goto :goto_c7

    :catchall_b7
    move-exception p0

    goto :goto_c3

    :catch_b9
    move-exception p0

    .line 2682
    :goto_ba
    :try_start_ba
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c7

    :catch_be
    move-exception p0

    .line 2680
    :goto_bf
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_b7

    goto :goto_c7

    .line 2684
    :goto_c3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2685
    throw p0

    .line 2684
    :catch_c7
    :goto_c7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_ca
    return-void
.end method

.method public final refreshLifetimeConstraint()Z
    .registers 7

    const-string v0, "StorageManagerService"

    const/4 v1, 0x0

    .line 3343
    :try_start_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->getStorageLifeTime()I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_52

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    const-string p0, "Failed to get storage lifetime"

    .line 3350
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3352
    :cond_12
    iget v3, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_3d

    .line 3353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ended smart idle maintenance, because of lifetime("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), lifetime threshold("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    iput-boolean v4, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    return v1

    .line 3358
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage lifetime: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_52
    move-exception p0

    .line 3345
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final refreshZramSettings()V
    .registers 6

    const-string/jumbo v0, "persist.sys.zram_enabled"

    .line 1212
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1213
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-void

    .line 1219
    :cond_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1217
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "zram_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_24

    move-object v2, v3

    goto :goto_26

    :cond_24
    const-string v2, "0"

    .line 1221
    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1225
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1228
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1230
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    :cond_49
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 2

    .line 2752
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    return-void
.end method

.method public final remountAppStorageDirs(Ljava/util/Map;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2781
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2782
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2783
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remounting storage for pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2786
    invoke-virtual {v2, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2787
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 2789
    array-length v4, v2

    if-eqz v4, :cond_4c

    goto :goto_52

    :cond_4c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 2791
    :goto_52
    :try_start_52
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, v3, v1, v2}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_8

    :catch_58
    move-exception p0

    .line 2793
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5e
    return-void
.end method

.method public final removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 5

    .line 4837
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4838
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_22

    .line 4840
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4841
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 4843
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4844
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4848
    :cond_22
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string v0, "android.permission.ASEC_RENAME"

    .line 6224
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6226
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6228
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 6233
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p2}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    .line 6234
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_36

    .line 6237
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_39

    const/4 v0, 0x0

    .line 6241
    :try_start_28
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->asecRename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_35

    :catch_2e
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6243
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_35
    return v0

    :cond_36
    :goto_36
    const/4 p0, -0x6

    .line 6235
    :try_start_37
    monitor-exit v0

    return p0

    :catchall_39
    move-exception p0

    .line 6237
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public requiredEncPolicyCheck(Ljava/lang/String;)Z
    .registers 7

    .line 5761
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "StorageManagerService"

    const-string/jumbo v2, "requiredEncPolicyCheck()"

    .line 5766
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-nez v2, :cond_22

    const-string p0, "DevicePolicyManager is NULL"

    .line 5769
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5774
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 5775
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    .line 5777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "policy set is    : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuid      : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 p1, 0x1

    if-eqz p0, :cond_87

    .line 5780
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result p0

    .line 5781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is encryption was applied : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_87

    return p1

    :cond_87
    if-ne v2, p1, :cond_8f

    const-string p0, "This device has encryption policy"

    .line 5788
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_8f
    return v1
.end method

.method public final resetIfBootedAndConnected()V
    .registers 9

    const-string v0, "StorageManagerService"

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thinking about reset, mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDaemonConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_d0

    .line 1377
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1378
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1380
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;->onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V

    .line 1385
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1387
    :try_start_47
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 1390
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1391
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1394
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_cd

    :try_start_5c
    const-string v2, "StorageManagerService"

    const-string v4, "Resetting vold..."

    .line 1402
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->reset()V

    const-string v2, "StorageManagerService"

    const-string v4, "Reset vold"

    .line 1404
    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "external"

    .line 1407
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->cleanupSercureContainerList(Ljava/lang/String;)V

    .line 1410
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1411
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1412
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-interface {v5, v6, v7, v4}, Landroid/os/IVold;->onUserAdded(III)V

    goto :goto_78

    .line 1414
    :cond_96
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v7, -0x1

    invoke-interface {v5, v6, v4, v7}, Landroid/os/IVold;->onUserAdded(III)V

    goto :goto_78

    .line 1417
    :cond_a1
    array-length v2, v3

    const/4 v4, 0x0

    :goto_a3
    if-ge v4, v2, :cond_b4

    aget v5, v3, v4

    .line 1418
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v6, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1419
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v6, v5}, Landroid/os/IStoraged;->onUserStarted(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    .line 1421
    :cond_b4
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/StorageManagerService;->restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V

    .line 1422
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 1423
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_c5} :catch_c6

    goto :goto_d0

    :catch_c6
    move-exception p0

    const-string v0, "StorageManagerService"

    .line 1425
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d0

    :catchall_cd
    move-exception p0

    .line 1394
    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0

    :cond_d0
    :goto_d0
    return-void
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    const-string v0, "android.permission.ASEC_CREATE"

    .line 6013
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6015
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6019
    :try_start_8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->asecResize(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    const/4 p0, 0x0

    goto :goto_16

    :catch_f
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6021
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public final restoreLocalUnlockedUsers()V
    .registers 5

    .line 1461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->getUnlockedUsers()[I

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_39

    .line 1466
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "StorageManagerService"

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CE storage for users "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already unlocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1474
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->appendAll([I)V

    .line 1475
    monitor-exit v1

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception p0

    const-string v0, "StorageManagerService"

    const-string v1, "Failed to get unlocked users from vold"

    .line 1463
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1432
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 1433
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1434
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1435
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1436
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_a

    .line 1439
    :cond_1f
    invoke-static {p3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_26

    goto :goto_a

    .line 1442
    :cond_26
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_a

    .line 1446
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNLOCK_USER lost from vold reset, will retry, user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, v0}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1448
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v1, v0}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1449
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_5a
    return-void
.end method

.method public runIdleMaint(Ljava/lang/Runnable;)V
    .registers 6

    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 3145
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3149
    :try_start_7
    new-instance v1, Lcom/android/server/HeimdAllFsService;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/HeimdAllFsService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 3155
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_23

    :cond_1d
    const-string p0, "Skipping idle maintenance - block based checkpoint in progress"

    .line 3177
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 3156
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    new-instance v3, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v3, p0, p1}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 3174
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->start()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    .line 3180
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void
.end method

.method public runIdleMaintenance()V
    .registers 2

    const/4 v0, 0x0

    .line 3186
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 3

    .line 1642
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public runMaintenance()V
    .registers 2

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 1648
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1649
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runSmartIdleMaint(Ljava/lang/Runnable;)V
    .registers 9

    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 3363
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3368
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1b

    :cond_14
    const-string p0, "Skipping smart idle maintenance - block based checkpoint in progress"

    .line 3391
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    .line 3369
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkChargeStatus()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_97

    .line 3373
    :cond_28
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->getWriteAmount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    const-string p0, "Failed to get storage write record"

    .line 3375
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_9f
    .catchall {:try_start_7 .. :try_end_36} :catchall_9d

    if-eqz p1, :cond_3b

    .line 3397
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3b
    return-void

    .line 3379
    :cond_3c
    :try_start_3c
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->updateStorageWriteRecords(I)V

    .line 3380
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getAverageWriteAmount()I

    move-result v2

    .line 3382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set smart idle maintenance: latest write amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", average write amount: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min segment threshold: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dirty reclaim rate: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", segment reclaim weight: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", period: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v3, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    iget v4, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    iget v5, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    sget v6, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-interface/range {v1 .. v6}, Landroid/os/IVold;->setGCUrgentPace(IIFFI)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_94} :catch_9f
    .catchall {:try_start_3c .. :try_end_94} :catchall_9d

    :goto_94
    if-eqz p1, :cond_a8

    goto :goto_a5

    :cond_97
    :goto_97
    if-eqz p1, :cond_9c

    .line 3397
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9c
    return-void

    :catchall_9d
    move-exception p0

    goto :goto_a9

    :catch_9f
    move-exception p0

    .line 3394
    :try_start_a0
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_9d

    if-eqz p1, :cond_a8

    .line 3397
    :goto_a5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a8
    return-void

    :goto_a9
    if-eqz p1, :cond_ae

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3399
    :cond_ae
    throw p0
.end method

.method public final scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 677
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo p0, "internal"

    return-object p0

    .line 680
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 681
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_21

    goto :goto_45

    .line 684
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ext:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "w"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    :goto_45
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public semGetExternalSdCardHealthState()I
    .registers 7

    const-string p0, "]"

    .line 6302
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sdinfo/fc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6304
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "StorageManagerService"

    if-nez v1, :cond_18

    const-string p0, "EXTERNAL SD CARD HEALTH CHECK FILE does not exist!!"

    .line 6305
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_18
    const-string v1, "empty"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6311
    :try_start_1c
    invoke-static {v0, v5, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External SD Card Health State ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_42

    :catch_3c
    move-exception v0

    const-string v4, "Error at reading SD Card Health State"

    .line 6314
    invoke-static {v3, v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    const-string v0, "GOOD"

    .line 6317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v2, v5

    goto :goto_55

    :cond_4c
    const-string v0, "BAD"

    .line 6319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v2, 0x1

    .line 6325
    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetExternalSdCardHealthState returns ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public semGetExternalSdCardId()Ljava/lang/String;
    .registers 6

    const-string p0, "empty"

    .line 6331
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sdinfo/data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ro.build.type"

    .line 6332
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "StorageManagerService"

    if-nez v2, :cond_23

    const-string p0, "EXTERNAL SD CARD CID VALUE FILE does not exist!!"

    .line 6335
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_23
    const/4 v2, 0x0

    .line 6341
    :try_start_24
    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_59

    :try_start_2c
    const-string v2, "eng"

    .line 6342
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 6343
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External SD Card CID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_56} :catch_57

    goto :goto_60

    :catch_57
    move-exception v1

    goto :goto_5b

    :catch_59
    move-exception v1

    move-object v0, p0

    :goto_5b
    const-string v2, "Error at reading SD Card CID Value"

    .line 6346
    invoke-static {v4, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6349
    :cond_60
    :goto_60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    const-string p0, "No Card"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6f

    goto :goto_71

    :cond_6f
    move-object v3, v0

    goto :goto_76

    :cond_71
    :goto_71
    const-string p0, "External SD Card CID value -> return as null"

    .line 6350
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-object v3
.end method

.method public final servicesReady()V
    .registers 3

    .line 2529
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v0, "package"

    .line 2532
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2531
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v0, "appops"

    .line 2534
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2533
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const-string/jumbo v0, "media"

    .line 2536
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2538
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 2539
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    :cond_3c
    const-string v0, "downloads"

    .line 2542
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2544
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    :cond_4e
    const-string v0, "com.android.externalstorage.documents"

    .line 2547
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 2549
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    :cond_60
    return-void
.end method

.method public setCloudMediaProvider(Ljava/lang/String;)V
    .registers 6

    .line 4177
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 4179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4180
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4181
    :try_start_e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4182
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 4183
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4184
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 4185
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 4187
    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setDebugFlags(II)V
    .registers 13

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 3404
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 3411
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3415
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_45

    .line 3420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    :try_start_24
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    .line 3423
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3426
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_40

    .line 3428
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_55

    :catchall_40
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3429
    throw p0

    .line 3416
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3412
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Emulation not supported on device with native FBE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    and-int/lit8 v0, p2, 0x3

    const-string v3, "force_off"

    const-string v4, ""

    const-string v5, "force_on"

    const/16 v6, 0xa

    if-eqz v0, :cond_8a

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_67

    move-object v0, v5

    goto :goto_6e

    :cond_67
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6d

    move-object v0, v3

    goto :goto_6e

    :cond_6d
    move-object v0, v4

    .line 3443
    :goto_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_72
    const-string/jumbo v9, "persist.sys.adoptable"

    .line 3445
    invoke-static {v9, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_85

    .line 3450
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8a

    :catchall_85
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3451
    throw p0

    :cond_8a
    :goto_8a
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_b6

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_94

    move-object v3, v5

    goto :goto_9a

    :cond_94
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_99

    goto :goto_9a

    :cond_99
    move-object v3, v4

    .line 3465
    :goto_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_9e
    const-string/jumbo v0, "persist.sys.sdcardfs"

    .line 3467
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_b1

    .line 3472
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b6

    :catchall_b1
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3473
    throw p0

    :cond_b6
    :goto_b6
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_df

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_bf

    move v1, v2

    .line 3479
    :cond_bf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_c3
    const-string/jumbo v0, "persist.sys.virtual_disk"

    .line 3481
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d6
    .catchall {:try_start_c3 .. :try_end_d6} :catchall_da

    .line 3486
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_df

    :catchall_da
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3487
    throw p0

    :cond_df
    :goto_df
    return-void
.end method

.method public setDualDARPolicyCmd(II)Z
    .registers 3

    .line 6812
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkCallerPermissionIsSystemOrRoot()V

    .line 6814
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setDualDARPolicyCmd(II)Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6816
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 3500
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3505
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3506
    :try_start_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    .line 3510
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_f6

    .line 3513
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 3514
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 3517
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 3518
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 3519
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 3520
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string p1, "StorageManagerService"

    .line 3521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failing move due to locked user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0xa

    .line 3522
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3523
    monitor-exit v0

    return-void

    :cond_63
    const-string/jumbo p2, "primary_physical"

    .line 3529
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d8

    const-string/jumbo p2, "primary_physical"

    .line 3530
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_78

    goto :goto_d8

    .line 3538
    :cond_78
    iget p2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 3539
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 3540
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;

    move-result-object p2

    const/4 v2, -0x6

    if-nez v1, :cond_a4

    const-string p1, "StorageManagerService"

    .line 3543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failing move due to missing from volume "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3545
    monitor-exit v0

    return-void

    :cond_a4
    if-nez p2, :cond_c1

    const-string p2, "StorageManagerService"

    .line 3547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing move due to missing to volume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3549
    monitor-exit v0

    return-void

    .line 3552
    :cond_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_8 .. :try_end_c2} :catchall_115

    .line 3555
    :try_start_c2
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v0, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object p2, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v1, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {p1, v0, p2, v1}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d0} :catch_d1

    goto :goto_d7

    :catch_d1
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3569
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d7
    return-void

    :cond_d8
    :goto_d8
    :try_start_d8
    const-string p1, "StorageManagerService"

    const-string p2, "Skipping move to/from primary physical"

    .line 3531
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x52

    .line 3532
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    const/16 p1, -0x64

    .line 3533
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3534
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3535
    monitor-exit v0

    return-void

    .line 3511
    :cond_f6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Move already in progress"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3507
    :cond_fe
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary storage already at "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_115
    move-exception p0

    .line 3552
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_d8 .. :try_end_117} :catchall_115

    throw p0
.end method

.method public setSdpPolicyCmd(I)Z
    .registers 2

    .line 6786
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->setSdpPolicyCmd(I)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6788
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSdpPolicyToPathCmd(ILjava/lang/String;)Z
    .registers 3

    .line 6795
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6797
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSensitive(ILjava/lang/String;)Z
    .registers 4

    if-eqz p2, :cond_15

    .line 6751
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 6752
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setSensitive(ILjava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 6755
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 3015
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "StorageManagerService"

    .line 3016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolumeNickname: fsUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3018
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3019
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 3020
    iput-object p2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 3021
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 3022
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 3023
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 7

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 3028
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "StorageManagerService"

    .line 3029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolumeUserFlags: fsUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3032
    :try_start_32
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 3033
    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v2, p3

    and-int/2addr v1, v2

    and-int/2addr p2, p3

    or-int/2addr p2, v1

    iput p2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 3034
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 3035
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 3036
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final shouldBenchmark()Z
    .registers 11

    .line 708
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    :cond_18
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_20

    return v4

    .line 716
    :cond_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    move v5, v3

    .line 717
    :goto_24
    :try_start_24
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 718
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 719
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 720
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-eqz v6, :cond_53

    if-eqz v7, :cond_53

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v6, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v6

    cmp-long v6, v8, v0

    if-ltz v6, :cond_53

    .line 723
    monitor-exit v2

    return v4

    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 727
    :cond_56
    monitor-exit v2

    return v3

    :catchall_58
    move-exception p0

    .line 728
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4

    const-string v0, "android.permission.SHUTDOWN"

    .line 2762
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    .line 2764
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V
    .registers 11

    .line 2575
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2580
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2582
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/32 v3, 0x4c2000

    .line 2580
    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "StorageManagerService"

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2584
    :try_start_24
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v6, 0x57

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 2586
    :goto_34
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v5, v6, v3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3b} :catch_3c

    goto :goto_15

    :catch_3c
    move-exception v3

    .line 2588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check legacy op for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 2592
    :cond_54
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_76

    .line 2593
    new-instance v1, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 2600
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 2601
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 2603
    :cond_76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PackageMonitor is already registered for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    return-void
.end method

.method public final start()V
    .registers 1

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method public startCheckpoint(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_18

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_f

    goto :goto_18

    .line 3686
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "no permission to start filesystem checkpoint"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3689
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    return-void
.end method

.method public startServiceSns()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4018
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->startServiceSnsDataRedirect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 4020
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopServiceSns()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4028
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->stopServiceSnsDataRedirect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 4030
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to stop service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final supportsBlockCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 1615
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1616
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result p0

    return p0
.end method

.method public supportsCheckpoint()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3670
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result p0

    return p0
.end method

.method public final systemReady()V
    .registers 2

    .line 2621
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2622
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2624
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unlockUserKey(II[B[B)V
    .registers 11

    .line 3811
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    const-string v1, "StorageManagerService"

    .line 3812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUserKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isFileEncryptedNativeOrEmulated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hasToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_27

    move v5, v3

    goto :goto_28

    :cond_27
    move v5, v4

    :goto_28
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasSecret: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_33

    goto :goto_34

    :cond_33
    move v3, v4

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.STORAGE_INTERNAL"

    .line 3816
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string p0, "StorageManagerService"

    .line 3819
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'s CE storage is already unlocked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_65
    if-eqz v0, :cond_a7

    .line 3828
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    .line 3829
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string p0, "StorageManagerService"

    .line 3830
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not unlocking user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'s CE storage yet because a secret is needed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3836
    :cond_92
    :try_start_92
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9f} :catch_a0

    goto :goto_a7

    :catch_a0
    move-exception p0

    const-string p1, "StorageManagerService"

    .line 3838
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3843
    :cond_a7
    :goto_a7
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3844
    :try_start_aa
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->append(I)V

    .line 3845
    monitor-exit p2

    return-void

    :catchall_b1
    move-exception p0

    monitor-exit p2
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b1

    throw p0
.end method

.method public final unmount(Landroid/os/storage/VolumeInfo;)V
    .registers 5

    const-string v0, "StorageManagerService"

    .line 2901
    :try_start_2
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 2902
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_10} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    goto :goto_26

    :catch_13
    move-exception v1

    :try_start_14
    const-string v2, "Failed unmount mirror data"

    .line 2905
    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2907
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 2908
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_11

    goto :goto_29

    .line 2910
    :goto_26
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 8

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 2876
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "StorageManagerService"

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin unmount: volId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 2881
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2882
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2884
    :try_start_33
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_5a

    .line 2885
    :try_start_36
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 2886
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->updateExternalMediaStatus(ZZ)V

    .line 2887
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v4, "mUnmountSignal"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2888
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 2889
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_57

    .line 2891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2895
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void

    :catchall_57
    move-exception p0

    .line 2889
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    .line 2891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2892
    throw p0
.end method

.method public unmountBySecApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 6624
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->chkMountUnmountFormatCaller(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p2, "StorageManagerService"

    const-string v0, "Unmount call accepted"

    .line 6625
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    return-void

    .line 6627
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unmount call denied to ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 15

    const-string/jumbo v0, "rawPath cannot be null"

    .line 3641
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3644
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3645
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3646
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_4d

    if-eqz v1, :cond_36

    .line 3650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3651
    new-instance v0, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 3653
    new-instance p1, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 3654
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4c

    :cond_36
    const-string p0, "StorageManagerService"

    .line 3659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown OBB mount at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void

    :catchall_4d
    move-exception p0

    .line 3646
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 6

    const-string v0, "StorageManagerService"

    .line 6170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmountSecureContainer: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.permission.ASEC_MOUNT_UNMOUNT"

    .line 6171
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 6173
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6175
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 6176
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string p0, "StorageManagerService"

    const-string/jumbo p1, "unmountSecureContainer: fail"

    .line 6177
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    .line 6178
    monitor-exit v0

    return p0

    .line 6180
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkExternalSecureContainerMounted()Z

    move-result v1

    if-nez v1, :cond_63

    const-string p2, "StorageManagerService"

    const-string/jumbo v1, "unmountSecureContainer: no media"

    .line 6181
    invoke-static {p2, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6182
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6183
    monitor-exit v0

    return v2

    .line 6185
    :cond_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_8d

    .line 6193
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6197
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->asecUnmount(Ljava/lang/String;Z)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_71

    goto :goto_78

    :catch_71
    move-exception p2

    const-string v0, "StorageManagerService"

    .line 6199
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    :goto_78
    if-nez v2, :cond_8c

    .line 6204
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter p2

    .line 6205
    :try_start_7d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6206
    monitor-exit p2

    goto :goto_8c

    :catchall_89
    move-exception p0

    monitor-exit p2
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_89

    throw p0

    :cond_8c
    :goto_8c
    return v2

    :catchall_8d
    move-exception p0

    .line 6185
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 4

    .line 6684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unmountVolume :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StorageManagerService"

    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6685
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 2

    .line 2757
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    return-void
.end method

.method public final updateLegacyStorageApps(Ljava/lang/String;IZ)V
    .registers 7

    .line 2561
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_2a

    :try_start_5
    const-string p3, "StorageManagerService"

    .line 2563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has legacy storage"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_2a
    const-string p3, "StorageManagerService"

    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have legacy storage"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2571
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final updateStorageWriteRecords(I)V
    .registers 7

    .line 3297
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    iget v2, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3299
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    aput p1, v0, v4

    const/4 p1, 0x0

    .line 3301
    :try_start_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1

    .line 3302
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3304
    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3305
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3306
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_33

    :catch_2c
    if-eqz p1, :cond_33

    .line 3309
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public waitForAsecScan()V
    .registers 3

    .line 1137
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mAsecsScanned"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method

.method public final waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 5

    const-wide/16 v0, -0x1

    .line 1142
    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 1144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TimeoutException in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public final waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string p0, "Thread "

    const-string v0, "StorageManagerService"

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :cond_8
    :goto_8
    const-wide/16 v3, 0x1388

    .line 1154
    :try_start_a
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    .line 1157
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " still waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_3a} :catch_3b

    goto :goto_4f

    .line 1161
    :catch_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupt while waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_8

    .line 1163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v5, v1, p3

    cmp-long v3, v3, v5

    if-gtz v3, :cond_60

    goto :goto_8

    .line 1164
    :cond_60
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " gave up waiting for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " after "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final warnOnNotMounted()V
    .registers 5

    .line 3574
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3575
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3576
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 3577
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3579
    monitor-exit v0

    return-void

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3582
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    const-string p0, "StorageManagerService"

    const-string v0, "No primary storage mounted!"

    .line 3584
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2e
    move-exception p0

    .line 3582
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final writeSettingsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "volumes"

    const/4 v1, 0x0

    .line 2692
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_6a

    :try_start_a
    const-string v3, "StorageManagerService"

    .line 2693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeSettingsLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 2696
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2697
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    const/4 v5, 0x3

    .line 2698
    invoke-interface {v3, v1, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "primaryStorageUuid"

    .line 2699
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2700
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_5d

    .line 2702
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 2703
    invoke-static {v3, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Landroid/util/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 2705
    :cond_5d
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2706
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2708
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_68} :catch_69

    goto :goto_71

    :catch_69
    move-object v1, v2

    :catch_6a
    if-eqz v1, :cond_71

    .line 2711
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_71
    :goto_71
    return-void
.end method
