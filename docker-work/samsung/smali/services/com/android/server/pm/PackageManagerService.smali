.class public Lcom/android/server/pm/PackageManagerService;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSender;
.implements Landroid/content/pm/TestUtilityService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;,
        Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;,
        Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;,
        Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;,
        Lcom/android/server/pm/PackageManagerService$Snapshot;,
        Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;,
        Lcom/android/server/pm/PackageManagerService$PackageStartability;,
        Lcom/android/server/pm/PackageManagerService$ScanFlags;
    }
.end annotation


# static fields
.field public static final ACTION_COOLDOWN_INSTALL_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

.field public static final ACTION_COOLDOWN_INSTALL_ON:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

.field public static final ADAPTIVE_BRIGHTNESS_UID:I = 0x139d

.field public static final ADVMODEM_UID:I = 0x1399

.field public static final ALLSHARE_AWARE_UID:I = 0x13a3

.field public static final ALLSHARE_FILESHARE_UID:I = 0x138d

.field public static final ALLSHARE_MEDIASHARE_UID:I = 0x138f

.field public static final BCMGR_SERVICE_UID:I = 0x138e

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final BROADCAST_DELAY:J = 0x3e8L

.field public static final BROADCAST_DELAY_DURING_STARTUP:J = 0x2710L

.field public static final CHECK_PENDING_INTEGRITY_VERIFICATION:I = 0x1a

.field public static final CHECK_PENDING_VERIFICATION:I = 0x10

.field public static final CHECK_PENDING_VERIFICATION2:I = 0x33

.field public static final CMH_SERVICE_UID:I = 0x138c

.field public static final COMPANION_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field public static final COMPRESSED_EXTENSION:Ljava/lang/String; = ".gz"

.field public static final DEBUG_ABI_SELECTION:Z = false

.field public static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_COMPRESSION:Z

.field public static final DEBUG_DEXOPT:Z = false

.field public static final DEBUG_DOMAIN_VERIFICATION:Z = false

.field public static final DEBUG_INSTALL:Z = false

.field public static final DEBUG_INSTANT:Z

.field public static final DEBUG_INTENT_MATCHING:Z = false

.field public static final DEBUG_LOCALE_OVERLAYS:Z = false

.field public static final DEBUG_PACKAGE_INFO:Z = false

.field public static final DEBUG_PACKAGE_SCANNING:Z = false

.field public static final DEBUG_PERMISSIONS:Z = false

.field public static final DEBUG_PER_UID_READ_TIMEOUTS:Z = false

.field public static final DEBUG_PREFERRED:Z = false

.field public static final DEBUG_REMOVE:Z = false

.field public static final DEBUG_SETTINGS:Z = false

.field public static final DEBUG_UPGRADE:Z = false

.field public static final DEBUG_VERIFY:Z = false

.field public static final DEFAULT_MANDATORY_FSTRIM_INTERVAL:J = 0xf731400L

.field public static final DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field public static final DEFAULT_VERIFICATION_RESPONSE:I = 0x1

.field public static final DEFERRED_NO_KILL_INSTALL_OBSERVER:I = 0x18

.field public static final DEFERRED_NO_KILL_INSTALL_OBSERVER_DELAY_MS:I = 0x1f4

.field public static final DEFERRED_NO_KILL_POST_DELETE:I = 0x17

.field public static final DEFERRED_NO_KILL_POST_DELETE_DELAY_MS:I = 0xbb8

.field public static final DEFERRED_PENDING_KILL_INSTALL_OBSERVER:I = 0x1d

.field public static final DEFERRED_PENDING_KILL_INSTALL_OBSERVER_DELAY_MS:I = 0x3e8

.field public static final DOMAIN_VERIFICATION:I = 0x1b

.field public static final DSMS_UID:I = 0x1d4e

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

.field public static final ENABLE_ROLLBACK_STATUS:I = 0x15

.field public static final ENABLE_ROLLBACK_TIMEOUT:I = 0x16

.field public static final FORCE_SPEG:Z

.field public static final FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field public static final HIDE_EPHEMERAL_APIS:Z = false

.field public static final INIT_COPY:I = 0x5

.field public static final INSTANT_APP_RESOLUTION_PHASE_TWO:I = 0x14

.field public static final INTEGRITY_VERIFICATION_COMPLETE:I = 0x19

.field public static final INTELLIGENCE_SERVICE_UID:I = 0x1392

.field public static final IPS_GEOFENCE_UID:I = 0x139e

.field public static final KNOXCORE_UID:I = 0x1482

.field public static final LOG_UID:I = 0x3ef

.field public static final MDXKIT_SERVICE_UID:I = 0x13a1

.field public static final NETWORKSTACK_UID:I = 0x431

.field public static final NETWORK_DIAGNOSTIC_UID:I = 0x139f

.field public static final NFC_UID:I = 0x403

.field public static final NS_FLP_UID:I = 0x1395

.field public static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field public static final PACKAGE_STARTABILITY_DIRECT_BOOT_UNSUPPORTED:I = 0x4

.field public static final PACKAGE_STARTABILITY_FROZEN:I = 0x3

.field public static final PACKAGE_STARTABILITY_NOT_DUALDAR_AWARE:I = 0x5

.field public static final PACKAGE_STARTABILITY_NOT_FOUND:I = 0x1

.field public static final PACKAGE_STARTABILITY_NOT_SYSTEM:I = 0x2

.field public static final PACKAGE_STARTABILITY_OK:I = 0x0

.field public static final PACKAGE_VERIFIED:I = 0xf

.field public static final PACKAGE_VERIFIED2:I = 0x32

.field public static final PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final POST_INSTALL:I = 0x9

.field public static final POST_INSTALL_OVERLAYS:I = 0xa

.field public static final PRECOMPILE_LAYOUTS:Ljava/lang/String; = "pm.precompile_layouts"

.field public static final PROPERTY_INCFS_DEFAULT_TIMEOUTS:Ljava/lang/String; = "incfs_default_timeouts"

.field public static final PROPERTY_KNOWN_DIGESTERS_LIST:Ljava/lang/String; = "known_digesters_list"

.field public static final PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

.field public static final PRUNE_UNUSED_STATIC_SHARED_LIBRARIES:I = 0x1c

.field public static final RADIO_UID:I = 0x3e9

.field public static final RANDOM_CODEPATH_PREFIX:C = '-'

.field public static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field public static final REASON_AB_OTA:I = 0xa

.field public static final REASON_ADCP:I = 0x17

.field public static final REASON_BACKGROUND_DEXOPT:I = 0x9

.field public static final REASON_BOOT_AFTER_OTA:I = 0x1

.field public static final REASON_CMDLINE:I = 0xc

.field public static final REASON_FIRST_BOOT:I = 0x0

.field public static final REASON_INACTIVE_PACKAGE_DOWNGRADE:I = 0xb

.field public static final REASON_INSTALL:I = 0x3

.field public static final REASON_INSTALL_BULK:I = 0x5

.field public static final REASON_INSTALL_BULK_DOWNGRADED:I = 0x7

.field public static final REASON_INSTALL_BULK_SECONDARY:I = 0x6

.field public static final REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0x8

.field public static final REASON_INSTALL_FAST:I = 0x4

.field public static final REASON_INSTALL_SPEG:I = 0x16

.field public static final REASON_INSTALL_SPQR:I = 0x15

.field public static final REASON_LABS:I = 0x14

.field public static final REASON_LAST:I = 0xd

.field public static final REASON_POST_BOOT:I = 0x2

.field public static final REASON_SHARED:I = 0xd

.field public static final SCAN_AS_APK_IN_APEX:I = 0x800000

.field public static final SCAN_AS_FULL_APP:I = 0x4000

.field public static final SCAN_AS_INSTANT_APP:I = 0x2000

.field public static final SCAN_AS_ODM:I = 0x400000

.field public static final SCAN_AS_OEM:I = 0x40000

.field public static final SCAN_AS_PRIVILEGED:I = 0x20000

.field public static final SCAN_AS_PRODUCT:I = 0x100000

.field public static final SCAN_AS_SYSTEM:I = 0x10000

.field public static final SCAN_AS_SYSTEM_EXT:I = 0x200000

.field public static final SCAN_AS_VENDOR:I = 0x80000

.field public static final SCAN_AS_VIRTUAL_PRELOAD:I = 0x8000

.field public static final SCAN_BOOTING:I = 0x10

.field public static final SCAN_DONT_KILL_APP:I = 0x400

.field public static final SCAN_DROP_CACHE:I = 0x1000000

.field public static final SCAN_FIRST_BOOT_OR_UPGRADE:I = 0x1000

.field public static final SCAN_IGNORE_FROZEN:I = 0x800

.field public static final SCAN_INITIAL:I = 0x200

.field public static final SCAN_MOVE:I = 0x100

.field public static final SCAN_NEW_INSTALL:I = 0x4

.field public static final SCAN_NO_DEX:I = 0x1

.field public static final SCAN_REQUIRE_KNOWN:I = 0x80

.field public static final SCAN_UPDATE_SIGNATURE:I = 0x2

.field public static final SCAN_UPDATE_TIME:I = 0x8

.field public static final SCLOUD_SERVICE_UID:I = 0x1391

.field public static final SENDHELPMSG_UID:I = 0x138b

.field public static final SEND_PENDING_BROADCAST:I = 0x1

.field public static final SE_UID:I = 0x42c

.field public static final SHARE_LIVE_UID:I = 0x13a2

.field public static final SHELL_UID:I = 0x7d0

.field public static final SMDS_UID:I = 0x1394

.field public static final SPASS_UID:I = 0x149e

.field public static final SPAY_UID:I = 0x4b0

.field public static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field public static final STATIC_SHARED_LIB_DELIMITER:Ljava/lang/String; = "_"

.field public static final STUB_SUFFIX:Ljava/lang/String; = "-Stub"

.field public static final SYSTEM_PARTITIONS:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final TAG_RESTRICTED:Ljava/lang/String; = "AASA_PackageManager_RESTRICTED"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final THROW_EXCEPTION_ON_REQUIRE_INSTALL_PACKAGES_TO_ADD_INSTALLER_PACKAGE:J = 0x8fde625L

.field public static final TRACE_SNAPSHOTS:Z = false

.field public static final UPDATED_MEDIA_STATUS:I = 0xc

.field public static final UWB_UID:I = 0x43b

.field public static final WATCHDOG_TIMEOUT:J = 0x927c0L

.field public static final WRITE_PACKAGE_LIST:I = 0x13

.field public static final WRITE_PACKAGE_RESTRICTIONS:I = 0xe

.field public static final WRITE_SETTINGS:I = 0xd

.field public static final WRITE_SETTINGS_DELAY:I = 0x2710

.field public static sLocaleOverlaysExecutorService:Ljava/util/concurrent/ExecutorService;

.field public static sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public static final sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/pm/Computer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public mAndroidApplication:Landroid/content/pm/ApplicationInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mAppInstallDir:Ljava/io/File;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public final mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

.field public mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler;

.field public final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAvailableFeatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public mCacheDir:Ljava/io/File;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

.field public final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCustomResolverComponentName:Landroid/content/ComponentName;

.field public final mDefParseFlags:I

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public final mDirtyUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

.field public final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

.field public final mEMPackageHanderThread:Lcom/android/server/ServiceThread;

.field public mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

.field public final mEnableFreeCacheV2:Z

.field public mExistingPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field public final mFactoryTest:Z

.field public mFirstBoot:Z

.field public final mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

.field public final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mIncrementalVersion:Ljava/lang/String;

.field public final mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallLock:Ljava/lang/Object;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field public final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mIsEngBuild:Z

.field public final mIsPreNMR1Upgrade:Z

.field public final mIsPreNUpgrade:Z

.field public final mIsPreQUpgrade:Z

.field public final mIsUpgrade:Z

.field public final mIsUserDebugBuild:Z

.field public final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeepUninstalledPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeepUninstalledPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field public mLiveComputer:Lcom/android/server/pm/ComputerLocked;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mMetrics:Landroid/util/DisplayMetrics;

.field public final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field public mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

.field public mNextInstallToken:I

.field public final mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNoKillInstallObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            ">;>;"
        }
    .end annotation
.end field

.field public mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

.field public final mOnlyCore:Z

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackageChangeObservers:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "itself"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/IPackageChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public final mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

.field public final mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

.field public final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field public final mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

.field public final mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackageUsage:Lcom/android/server/pm/PackageUsage;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

.field public final mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

.field public final mPendingEnableRollback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingEnableRollbackToken:I

.field public final mPendingKillInstallObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPendingVerification:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageVerificationState;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingVerificationToken:I

.field public mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public mPlatformPackageOverlayPaths:[Ljava/lang/String;

.field public mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

.field public mPmBackupController:Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public mPrepareAppDataFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public final mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

.field public mPromoteSystemApps:Z

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProtectedBroadcasts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public final mRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

.field public final mRecentsPackage:Ljava/lang/String;

.field public mReleaseOnSystemReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

.field public mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredSdkSandboxPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackage:Ljava/lang/String;

.field public final mResolveActivity:Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public mResolveComponentName:Landroid/content/ComponentName;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field public mResolverReplaced:Z

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PostInstallData;",
            ">;"
        }
    .end annotation
.end field

.field public mSProtect:Lcom/android/server/pm/SProtect;

.field public volatile mSafeMode:Z
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mSamsungVerifierPackage:Ljava/lang/String;

.field public final mSdkVersion:I

.field public final mSeparateProcesses:[Ljava/lang/String;

.field public mServiceStartWithDelay:J

.field public final mServicesExtensionPackageName:Ljava/lang/String;

.field public final mSettings:Lcom/android/server/pm/Settings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field public final mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

.field public final mSnapshotLock:Ljava/lang/Object;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public mSpeg:Lcom/android/server/SpegService;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

.field public final mStorageManagerPackage:Ljava/lang/String;

.field public final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

.field public volatile mSystemReady:Z
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mTestUtilityService:Landroid/content/pm/TestUtilityService;

.field public final mTransferredPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

.field public final mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

.field public final mWatcher:Lcom/android/server/utils/Watcher;

.field public final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-emd08hxAD0TMJl8PW66mms4keE(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$24(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0WAv--ipLyvLxFxxNWBAxcVQZxk(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$setEnabledOverlayPackages$56(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2sj-G2MypmBBbfoKd4A__7Dfa74(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$resetComponentEnabledSettingsIfNeededLPw$45(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3nV8LCHQwMsfkLb9WAOfdTECy1A(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$31(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4UnrHvTGNuoffERqdWYgQLU6_GM(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$36(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5Y3C28ch_tvbgkIYgKzvUas479c(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$26(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7_Yo6g4--1pBcweVbEYDS-WclGE(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$6()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9CLw5GiaXuIl-Yq7T3EuyGtK7zo(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$8(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BH-ShwahTnRCa6U0uJN_HtM_FeA(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$16(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EXtx1gLZp4NDKyYseJdaA5dM0aM(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$18(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FVsWli7jD7VAvKXefT3eCbFzZPk(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$28(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FZS3tEv1ZB74eaK0MlMASjsxJoQ(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$17(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LgfEnE781TAb4yyB0SDbf_DNpQ4(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$13(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lvup5VwrlYZp047YF45fArNHin8(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$20(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MTbsK8jIL_Ic3HsgjrRl2DjO2tE(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$37(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNfG8e00c4GaddGFzwexMw4HdJY(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$setSystemAppHiddenUntilInstalled$53(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qsbu_8Y4FmjAEK_L1KGAEpicndM(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->lambda$sendPackageAddedForNewUsers$42(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKkEOlveCeIDRq1Zrl2UQNOUpQc(Lcom/android/server/pm/PackageManagerService;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$4()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RLF1P7XnfnPPStSJB6LaezY2Vrw(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$32(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S31Tbyj3FfLbGw4UFZIy9nB3SsU(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$12(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UhV0oljfX0ttcubTei2iU4Wv6-I(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$7(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VL-AQVPk0Tlpa2OB6txpYUYk5Ms(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$postPreferredActivityChangedBroadcast$46(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMX60dj2EuEKa4J29qu6TalHlJQ(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$updateComponentLabelIcon$47(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XdSn_LqDxKw9LrnQxkHijr0WN9s(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$30(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_0bCYRF2EP30LRMFF1DOW0yMFwc(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$1(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_2NFIVQU7GWKYXGrwXt6uBSkFPg(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6ehaz9gjF1fUK8jrzzT4AaJsCY(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/pm/PackageManagerService;->lambda$sendPackageBroadcast$41(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGKeZfeL6OlKEqMuNemJPfF8T04(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/PackageManagerService;->lambda$sendPackageChangedBroadcast$48(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bkmLyQ8Y0bxlmolLu2vVMGOWomw(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$25(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$boq1kCtYPv50uYWvE7LVJWAuRmU(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$forEachInstalledPackage$57(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bs1uVv6FmNxmfh1UMbJYyQfWnr4(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ViewCompiler;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$19(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ViewCompiler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bs46_C3UKyhBo0GBLSKuZV06mTs(Lcom/android/server/pm/PackageManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$systemReady$49(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzqAuyxVBNpjjzdPiA9Or-GLcio(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$29(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ctUqTV5arqc96Vwl2o3VwPOD35c(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$sendPackageAddedForNewUsers$43([ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbKH8RTu0M6cwhpYbtv0bHAzR2A(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$23(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dfDDtMHBrmOnGn4VnASFx6s9iBw(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$40()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fiwhGFI1ctp6SsGXHoZG8RphYOI(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BackgroundDexOptService;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$34(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fr7sN36RkEGChK-fWz6Lxabw_BM(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$15(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g_By2FBnfyMCgCcXcGDhODE6ZOE(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$39()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gaTE3XarhOj0WOUbKYPP3POOP-o(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$55(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jcCdy1Kil58X-ay71J0FvU-FH1k(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$2()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kJBcgNRilCQzOaTBMU79nP1QvjY()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->lambda$main$22()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kNTWQugX0uYZs5GH-3wDf39laLE(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$5(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kiYs6M_TU13CHmdufJ1OYExCLpc(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$33(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mZIKQxXQghHu5L0JVctlxNqEMUY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$14(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n8-IiCVQLws2f0EowftfDbFEvqA(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$systemReady$51(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nZbmJhxa5VkfPq8X4PLy3Aqk1ZY(Lcom/android/server/pm/PackageManagerService;IZZLjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$54(IZZLjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pCLNqmjsJp36alC6sG8GNqU_jZk(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$27(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pMHxMbvfaynJdOGubfuDsIfsdLg(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageIfUnused$52(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sd2qzcDsM5ekPMSfu9FTVWWgx3M(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$35(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t38vLWJzf5bb1br5LiBRNR-RV0M(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$systemReady$50(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u5xqJKe4zRZ5ZYQLkYlpkLmXaBo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$9(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vRQ1UvYLZHuM62i20dyKWQ3Tixc(Landroid/content/Context;)Landroid/app/role/RoleManager;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$main$21(Landroid/content/Context;)Landroid/app/role/RoleManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wTU2Lp2ZPfg1yFeNdM3kNX0yi04(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$notifyFirstLaunch$44(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwVgG8v2EQhSHLlYLa072Qn3O2Q(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$main$11(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xxPWuTEfDOsSUgOmKHUNn65hn5M(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$3(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCDZV6U7r37FENZhkDBWuDiWI7s(Lcom/android/server/pm/PackageManagerService;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$0()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zxuZ7XOX4ni_q9tzjZHHDMoyGfM(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->lambda$main$10(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAsecInstallHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AsecInstallHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefParseFlags(Lcom/android/server/pm/PackageManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrozenPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstantAppInstallerInfo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstrumentation(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstrumentationSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsolatedOwnersSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMonetizationUtils(Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnlyCore(Lcom/android/server/pm/PackageManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemovePackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/RemovePackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeparateProcesses(Lcom/android/server/pm/PackageManagerService;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSharedLibraries(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpeg(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SpegService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnknownSourceAppManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UnknownSourceAppManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearApplicationUserDataLIF(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->filterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageUseInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendApplicationHiddenForUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmakeExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 445
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 455
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 610
    sput-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 735
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    const/4 v2, 0x1

    if-nez v1, :cond_21

    const-string v1, "com.samsung.speg.force"

    .line 736
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v0

    :goto_22
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->FORCE_SPEG:Z

    .line 917
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda65;-><init>()V

    .line 918
    invoke-static {v1}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 917
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 929
    sput-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 1140
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    .line 1141
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    .line 1146
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    .line 1147
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 1148
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7

    .line 1149
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 1304
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerServiceTestParams;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 812
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 817
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 820
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "PackageManagerService.mPackages"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 825
    new-instance v1, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 828
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 v1, 0x0

    .line 836
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 870
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 872
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mFrozenPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 895
    new-instance v2, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v2}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 908
    invoke-static {}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    .line 922
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 961
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 964
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mInstrumentation"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 971
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 974
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 981
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 987
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 1001
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    .line 1008
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1014
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 1020
    new-instance v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 1026
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 1028
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1035
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 1036
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 1038
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 1039
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 1041
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 1054
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 1057
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1058
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 1060
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1061
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 1070
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 1075
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 1091
    new-instance v3, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v3}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 1093
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    .line 1156
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 1158
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    const/4 v3, 0x1

    .line 1159
    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 1183
    new-instance v4, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v4}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 1185
    new-instance v4, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v4}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 1217
    new-instance v4, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1315
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 1863
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1864
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 1865
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 1866
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 1867
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1868
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1869
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 1870
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1871
    iput-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1872
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1873
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1874
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1875
    new-instance v5, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v5, v9}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1876
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1877
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1878
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1880
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->apexManager:Lcom/android/server/pm/ApexManager;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1881
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->artManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 1882
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->availableFeatures:Landroid/util/ArrayMap;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1883
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->backgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 1884
    iget v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defParseFlags:I

    iput v5, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1885
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 1886
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->legacyPermissionManagerInternal:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 1887
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexManager:Lcom/android/server/pm/dex/DexManager;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1888
    iget-boolean v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->factoryTest:Z

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 1889
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalManager:Landroid/os/incremental/IncrementalManager;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 1890
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installerService:Lcom/android/server/pm/PackageInstallerService;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1891
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1892
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 1893
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1894
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverSettingsComponent:Landroid/content/ComponentName;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 1895
    iget-boolean v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreNmr1Upgrade:Z

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 1896
    iget-boolean v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreNupgrade:Z

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNUpgrade:Z

    .line 1897
    iget-boolean v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreQupgrade:Z

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 1898
    iget-boolean v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUpgrade:Z

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 1899
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->Metrics:Landroid/util/DisplayMetrics;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1900
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moduleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 1901
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 1902
    iget-boolean v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->onlyCore:Z

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1903
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 1904
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 1905
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    .line 1906
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->pendingPackageBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1907
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->testUtilityService:Landroid/content/pm/TestUtilityService;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 1908
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->processLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 1909
    iget-object v11, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->protectedPackages:Lcom/android/server/pm/ProtectedPackages;

    iput-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 1910
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->separateProcesses:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1911
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->viewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    .line 1912
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredVerifierPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 1914
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->samsungVerifierPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    .line 1916
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredInstallerPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 1917
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredUninstallerPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 1918
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredPermissionControllerPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 1919
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->setupWizardPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 1920
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageManagerPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 1921
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultTextClassifierPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 1922
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->systemTextClassifierPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 1923
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->retailDemoPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 1924
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->recentsPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 1925
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->ambientContextDetectionPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 1926
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->configuratorPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 1927
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 1928
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incidentReportApproverPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 1929
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->servicesExtensionPackageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 1930
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sharedSystemSharedLibraryPackageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 1931
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfigSignaturePackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 1932
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 1933
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredSdkSandboxPackage:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 1936
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 1938
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 1939
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->enableFreeCacheV2:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mEnableFreeCacheV2:Z

    .line 1940
    iget v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 1941
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appInstallDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 1942
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isEngBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 1943
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUserDebugBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 1944
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1945
    new-instance v0, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1947
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->broadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1948
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appDataHelper:Lcom/android/server/pm/AppDataHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 1949
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1950
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->removePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1951
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initAndSystemPackageHelper:Lcom/android/server/pm/InitAppsHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 1952
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->deletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 1953
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->preferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 1954
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1955
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexOptHelper:Lcom/android/server/pm/DexOptHelper;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 1956
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->suspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 1957
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->distractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 1959
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 1961
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

    .line 1962
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 1963
    new-instance p1, Lcom/samsung/android/server/pm/install/SkippingApks;

    invoke-direct {p1}, Lcom/samsung/android/server/pm/install/SkippingApks;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 1965
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 1966
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1968
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p2, "EMPackageHandler"

    invoke-direct {p1, p2, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mEMPackageHanderThread:Lcom/android/server/ServiceThread;

    .line 1970
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1971
    new-instance p2, Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    move-object v5, p2

    move-object v6, v4

    move-object v8, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/EmergencyModePackageHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/ProtectedPackages;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    .line 1972
    invoke-virtual {p2}, Lcom/android/server/pm/EmergencyModePackageHandler;->getEMPackageHanderObj()Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    .line 1973
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p2

    const-wide/32 v0, 0x927c0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 1974
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-virtual {p1}, Lcom/android/server/pm/EmergencyModePackageHandler;->getPendingBroadcastsForBurst()Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 1976
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz p1, :cond_2e9

    .line 1977
    const-class p1, Lcom/android/server/SpegService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SpegService;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    .line 1979
    :cond_2e9
    new-instance p1, Lcom/android/server/pm/AsecInstallHelper;

    invoke-direct {p1, p0}, Lcom/android/server/pm/AsecInstallHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    .line 1981
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz p1, :cond_2fb

    .line 1982
    new-instance p1, Lcom/android/server/pm/SProtect;

    invoke-direct {p1, p0, v4}, Lcom/android/server/pm/SProtect;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSProtect:Lcom/android/server/pm/SProtect;

    :cond_2fb
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZZLjava/lang/String;ZZILjava/lang/String;)V
    .registers 34

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 1989
    const-class v1, Landroid/content/pm/TestUtilityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 807
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 812
    new-instance v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 817
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 820
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 825
    new-instance v2, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 828
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 v10, 0x0

    .line 836
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 870
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 872
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mFrozenPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 895
    new-instance v2, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v2}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 908
    invoke-static {}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    .line 922
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 961
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 964
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mInstrumentation"

    invoke-direct {v4, v3, v3, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 971
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 974
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 981
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 987
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 1001
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v11, 0x0

    .line 1008
    iput v11, v9, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1014
    iput v11, v9, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 1020
    new-instance v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 1026
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 1028
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1035
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 1036
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 1038
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 1039
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 1041
    iput-boolean v11, v9, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 1054
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 1057
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1058
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 1060
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1061
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 1070
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 1075
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 1091
    new-instance v3, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v3}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 1093
    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    .line 1156
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 1158
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    const/4 v12, 0x1

    .line 1159
    iput v12, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 1183
    new-instance v3, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v3}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 1185
    new-instance v3, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v3}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 1217
    new-instance v3, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v3, v9}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1315
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    move/from16 v3, p5

    .line 1990
    iput-boolean v3, v9, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    move/from16 v3, p6

    .line 1991
    iput-boolean v3, v9, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    move/from16 v3, p7

    .line 1992
    iput v3, v9, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    move-object/from16 v3, p8

    .line 1993
    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1994
    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1995
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->disablePackageCaches()V

    .line 1997
    new-instance v13, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v3, "PackageManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v13, v3, v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 1999
    new-instance v3, Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-direct {v3}, Lcom/android/server/pm/PendingPackageBroadcasts;-><init>()V

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 2001
    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 2002
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2003
    iput-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2004
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    const/4 v15, 0x3

    .line 2005
    invoke-static {v3, v15}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    const-string v4, "PackageManager"

    const-string v5, "!@Boot_EBS_F: boot_progress_pms_start"

    .line 2006
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0xbf4

    .line 2007
    invoke-static {v6, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2010
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v5, p3

    .line 2011
    iput-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    move/from16 v5, p2

    .line 2012
    iput-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 2013
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2014
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const-string v7, "fw.free_cache_v2"

    .line 2015
    invoke-static {v7, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v9, Lcom/android/server/pm/PackageManagerService;->mEnableFreeCacheV2:Z

    .line 2018
    invoke-virtual {v2, v12}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->enableAndConfigure(Z)V

    .line 2022
    new-instance v2, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;-><init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mPmBackupController:Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    .line 2024
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object v2

    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mPmBackupController:Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    invoke-virtual {v2, v7}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->registerController(Lcom/samsung/android/server/pm/rescueparty/BackupController;)V

    .line 2028
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/Installer;)V

    invoke-static {v2}, Lcom/samsung/android/server/pm/install/PdpUtils;->waitUntilInstalldConnected(Ljava/util/function/Supplier;)Z

    .line 2032
    new-instance v2, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-direct {v2, v4}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 2033
    invoke-virtual {v2}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->waitToReadAIDwhenTssAndNonActivated()V

    .line 2034
    new-instance v2, Lcom/samsung/android/server/pm/install/SkippingApks;

    invoke-direct {v2}, Lcom/samsung/android/server/pm/install/SkippingApks;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 2035
    invoke-virtual {v2}, Lcom/samsung/android/server/pm/install/SkippingApks;->initSkippingApkList()V

    .line 2036
    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->setOmcAndTssInit()V

    .line 2041
    invoke-virtual {v6}, Lcom/android/server/pm/Installer;->removeNotTargetedPreloadApksIfNeeded()Z

    .line 2044
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v2, :cond_1d0

    .line 2045
    invoke-static {v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    :cond_1d0
    const-string v2, "createSubComponents"

    .line 2049
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2051
    sput-object v10, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 2052
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v2

    if-eqz v2, :cond_1e7

    .line 2053
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 2054
    new-instance v2, Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {v2, v4, v9, v3}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V

    sput-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 2058
    :cond_1e7
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {v6, v9}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v2, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2059
    invoke-static {v1, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2060
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/TestUtilityService;

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 2061
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2062
    new-instance v1, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v1, v6}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 2063
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 2064
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2065
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v7

    iput-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2066
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 2067
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 2068
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 2069
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v8

    .line 2070
    new-instance v15, Lcom/android/server/pm/PackageManagerService$2;

    invoke-direct {v15, v9, v8}, Lcom/android/server/pm/PackageManagerService$2;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V

    iput-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    .line 2083
    invoke-virtual {v13}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v8, "addSharedUsers"

    .line 2085
    invoke-virtual {v13, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v8, "android.uid.system"

    const/16 v15, 0x3e8

    const/16 v11, 0x8

    .line 2086
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.phone"

    const/16 v15, 0x3e9

    .line 2088
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.log"

    const/16 v15, 0x3ef

    .line 2090
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.nfc"

    const/16 v15, 0x403

    .line 2092
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.dsms"

    const/16 v15, 0x1d4e

    .line 2095
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.bluetooth"

    const/16 v15, 0x3ea

    .line 2098
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.shell"

    const/16 v15, 0x7d0

    .line 2100
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.se"

    const/16 v15, 0x42c

    .line 2102
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.networkstack"

    const/16 v15, 0x431

    .line 2104
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.uwb"

    const/16 v15, 0x43b

    .line 2106
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.spass"

    const/16 v15, 0x149e

    .line 2108
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.sharelive"

    const/16 v15, 0x13a2

    .line 2110
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.mdxkit"

    const/16 v15, 0x13a1

    .line 2112
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.mediashare"

    const/16 v15, 0x138f

    .line 2114
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.fileshare"

    const/16 v15, 0x138d

    .line 2116
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.aware"

    const/16 v15, 0x13a3

    .line 2118
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.advmodem"

    const/16 v15, 0x1399

    .line 2120
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.ipsgeofence"

    const/16 v15, 0x139e

    .line 2122
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.networkdiagnostic"

    const/16 v15, 0x139f

    .line 2124
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.samsungcloud"

    const/16 v15, 0x1391

    .line 2126
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.bcmgr"

    const/16 v15, 0x138e

    .line 2129
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.cmhservice"

    const/16 v15, 0x138c

    .line 2133
    invoke-virtual {v7, v8, v15, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2137
    sget v8, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v15, 0x1f

    if-ge v8, v15, :cond_2e9

    const-string v8, "android.uid.sendhelpmessage"

    const/16 v10, 0x138b

    .line 2138
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    :cond_2e9
    const-string v8, "android.uid.nsflp"

    const/16 v10, 0x1395

    .line 2142
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2146
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v8

    if-eqz v8, :cond_2fd

    const-string v8, "android.uid.knoxcore"

    const/16 v10, 0x1482

    .line 2147
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2151
    :cond_2fd
    sget v8, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    if-ge v8, v15, :cond_308

    const-string v8, "android.uid.intelligenceservice"

    const/16 v10, 0x1392

    .line 2152
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    :cond_308
    const-string v8, "android.uid.spay"

    const/16 v10, 0x4b0

    .line 2155
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.adaptive_brightness"

    const/16 v10, 0x139d

    .line 2158
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string v8, "android.uid.smds"

    const/16 v10, 0x1394

    .line 2162
    invoke-virtual {v7, v8, v10, v12, v11}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2166
    invoke-virtual {v13}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v8, "debug.separate_processes"

    .line 2168
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_366

    .line 2170
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_366

    const-string v10, "*"

    .line 2171
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_344

    const/4 v8, 0x2

    .line 2172
    iput v8, v9, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    const/4 v8, 0x0

    .line 2173
    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    const-string v8, "PackageManager"

    const-string v10, "Running with debug.separate_processes: * (ALL)"

    .line 2174
    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36c

    :cond_344
    const/4 v10, 0x0

    .line 2176
    iput v10, v9, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    const-string v10, ","

    .line 2177
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    const-string v10, "PackageManager"

    .line 2178
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Running with debug.separate_processes: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36c

    :cond_366
    const/4 v8, 0x0

    .line 2182
    iput v8, v9, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    const/4 v8, 0x0

    .line 2183
    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2192
    :goto_36c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 2193
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 2194
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundDexOptService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 2195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 2196
    new-instance v8, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;-><init>(Landroid/os/Looper;)V

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 2197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getViewCompiler()Lcom/android/server/pm/dex/ViewCompiler;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    .line 2198
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 2200
    const-class v10, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/display/DisplayManager;

    const/4 v11, 0x0

    .line 2201
    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v5, "get system config"

    .line 2203
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v10

    .line 2205
    invoke-virtual {v10}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 2206
    invoke-virtual {v13}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2208
    new-instance v11, Lcom/android/server/pm/ProtectedPackages;

    invoke-direct {v11, v4}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v11, v9, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 2210
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 2211
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 2213
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry;

    .line 2214
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v15

    new-instance v12, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v12, v9}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v5, v4, v2, v15, v12}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2216
    new-instance v2, Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-direct {v2}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 2218
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v12, "app"

    invoke-direct {v2, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 2220
    new-instance v2, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v2, v9}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2221
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2222
    invoke-interface {v5, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V

    .line 2224
    new-instance v2, Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v2, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 2225
    new-instance v12, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v12, v9}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 2226
    new-instance v15, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {v15, v9, v12}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 2227
    new-instance v15, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v15, v9, v12}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object/from16 p6, v13

    .line 2228
    new-instance v13, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v13, v9, v15, v12}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v13, v9, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 2230
    invoke-virtual {v8, v13}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 2231
    new-instance v8, Lcom/android/server/pm/PreferredActivityHelper;

    invoke-direct {v8, v9}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2232
    new-instance v12, Lcom/android/server/pm/ResolveIntentHelper;

    .line 2233
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v19

    move-object/from16 p2, v10

    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v10, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 p3, v7

    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v7, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v16, v12

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move-object/from16 v22, v1

    move-object/from16 v23, v10

    move-object/from16 v24, v7

    invoke-direct/range {v16 .. v24}, Lcom/android/server/pm/ResolveIntentHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2235
    new-instance v1, Lcom/android/server/pm/DexOptHelper;

    invoke-direct {v1, v9}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 2236
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper;

    invoke-direct {v1, v9, v0, v2, v11}, Lcom/android/server/pm/SuspendPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 2240
    new-instance v5, Lcom/android/server/pm/AsecInstallHelper;

    invoke-direct {v5, v9}, Lcom/android/server/pm/AsecInstallHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    .line 2241
    new-instance v7, Lcom/android/server/pm/StorageEventHelper;

    invoke-direct {v7, v9, v13, v15, v5}, Lcom/android/server/pm/StorageEventHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/AsecInstallHelper;)V

    iput-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 2246
    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v5, :cond_487

    .line 2247
    new-instance v5, Lcom/android/server/pm/SProtect;

    invoke-direct {v5, v9, v4}, Lcom/android/server/pm/SProtect;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;)V

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mSProtect:Lcom/android/server/pm/SProtect;

    .line 2251
    :cond_487
    new-instance v4, Lcom/android/server/pm/DistractingPackageHelper;

    invoke-direct {v4, v9, v0, v2, v1}, Lcom/android/server/pm/DistractingPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V

    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 2254
    monitor-enter v3

    .line 2258
    :try_start_48f
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {v1}, Lcom/android/server/pm/SnapshotStatistics;-><init>()V

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 2259
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    const/4 v1, 0x1

    .line 2261
    invoke-virtual {v9, v1}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 2262
    monitor-exit v3
    :try_end_4a6
    .catchall {:try_start_48f .. :try_end_4a6} :catchall_b4c

    .line 2264
    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2266
    monitor-enter v14

    .line 2268
    :try_start_4a9
    iget-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v12
    :try_end_4ac
    .catchall {:try_start_4a9 .. :try_end_4ac} :catchall_b45

    .line 2269
    :try_start_4ac
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2270
    new-instance v1, Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-direct {v1}, Lcom/android/server/pm/ProcessLoggingHandler;-><init>()V

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2271
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-wide/32 v7, 0x927c0

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 2274
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "EMPackageHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mEMPackageHanderThread:Lcom/android/server/ServiceThread;

    .line 2276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2277
    new-instance v13, Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object v5, v6

    move-object v6, v15

    move-object v7, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/EmergencyModePackageHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/ProtectedPackages;Landroid/os/Looper;)V

    iput-object v13, v9, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    .line 2278
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler;->getEMPackageHanderObj()Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    .line 2279
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 2280
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mEmergencyModePackageHandler:Lcom/android/server/pm/EmergencyModePackageHandler;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler;->getPendingBroadcastsForBurst()Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 2284
    new-instance v0, Lcom/android/server/pm/AutoDisableHandler;

    iget-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v9}, Lcom/android/server/pm/AutoDisableHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler;

    .line 2288
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2289
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_515
    if-ge v2, v1, :cond_525

    .line 2291
    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/SharedLibrariesImpl;->addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_515

    :cond_525
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :goto_528
    if-ge v4, v1, :cond_553

    .line 2298
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2299
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 2300
    iget-object v7, v6, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x0

    :goto_53a
    if-ge v8, v7, :cond_550

    .line 2302
    iget-object v11, v6, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    aget-object v11, v11, v8

    .line 2303
    invoke-interface {v10, v11, v2, v3}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v11

    if-eqz v11, :cond_54d

    .line 2305
    invoke-interface {v10, v5, v2, v3}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v13

    .line 2306
    invoke-virtual {v13, v11}, Landroid/content/pm/SharedLibraryInfo;->addDependency(Landroid/content/pm/SharedLibraryInfo;)V

    :cond_54d
    add-int/lit8 v8, v8, 0x1

    goto :goto_53a

    :cond_550
    add-int/lit8 v4, v4, 0x1

    goto :goto_528

    .line 2311
    :cond_553
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()Z

    const-string/jumbo v0, "loadFallbacks"

    move-object/from16 v1, p6

    .line 2313
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2314
    invoke-static {}, Landroid/content/pm/FallbackCategoryProvider;->loadFallbacks()V

    .line 2315
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2317
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->validateRoleFile()V

    const-string/jumbo v0, "read user settings"

    .line 2319
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2320
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2321
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, v3}, Lcom/android/server/pm/UserManagerInternal;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mPmBackupController:Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    .line 2320
    invoke-virtual {v0, v10, v2, v3}, Lcom/android/server/pm/Settings;->readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z

    move-result v0

    if-nez v0, :cond_585

    const/4 v0, 0x1

    goto :goto_586

    :cond_585
    const/4 v0, 0x0

    :goto_586
    iput-boolean v0, v9, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 2326
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2328
    iget-boolean v0, v9, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_5a6

    const-string/jumbo v0, "setFirstBoot: "

    .line 2329
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_595
    .catchall {:try_start_4ac .. :try_end_595} :catchall_b3e

    .line 2331
    :try_start_595
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->setFirstBoot()V
    :try_end_59a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_595 .. :try_end_59a} :catch_59b
    .catchall {:try_start_595 .. :try_end_59a} :catchall_b3e

    goto :goto_5a3

    :catch_59b
    move-exception v0

    :try_start_59c
    const-string v2, "PackageManager"

    const-string v3, "Could not set First Boot: "

    .line 2333
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2335
    :goto_5a3
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2338
    :cond_5a6
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 2339
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP()V

    .line 2341
    iget-boolean v0, v9, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v0, :cond_5bf

    iget-boolean v0, v9, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_5bf

    .line 2342
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->requestCopyPreoptedFiles()V

    .line 2345
    :cond_5bf
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x104030b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d6

    .line 2348
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    .line 2353
    :cond_5d6
    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_5d9
    .catchall {:try_start_59c .. :try_end_5d9} :catchall_b3e

    .line 2354
    :try_start_5d9
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    iget-boolean v4, v9, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/NfcFeatureManager;->updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/install/SkippingApks;Z)V

    .line 2355
    monitor-exit v2
    :try_end_5e3
    .catchall {:try_start_5d9 .. :try_end_5e3} :catchall_b37

    .line 2358
    :try_start_5e3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v0, "PackageManager"

    const-string v4, "!@Boot_EBS_F: boot_progress_pms_system_scan_start"

    .line 2360
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xbfe

    .line 2361
    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v0, "BOOTCLASSPATH"

    .line 2364
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SYSTEMSERVERCLASSPATH"

    .line 2365
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_608

    const-string v0, "PackageManager"

    const-string v5, "No BOOTCLASSPATH found!"

    .line 2368
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_608
    if-nez v4, :cond_611

    const-string v0, "PackageManager"

    const-string v4, "No SYSTEMSERVERCLASSPATH found!"

    .line 2372
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_611
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 2376
    iget-object v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v5, p4

    .line 2377
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_623

    const/4 v4, 0x1

    goto :goto_624

    :cond_623
    const/4 v4, 0x0

    :goto_624
    iput-boolean v4, v9, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v4, :cond_649

    const/4 v5, 0x4

    .line 2379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_649
    if-nez v4, :cond_64f

    .line 2384
    iget-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v5, :cond_67d

    :cond_64f
    const-string/jumbo v5, "sys.boot.is_upgrade"

    const-string v6, "1"

    .line 2385
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 2387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PM]Build Info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ro.omc.build.id"

    .line 2388
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2387
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2391
    :cond_67d
    new-instance v5, Lcom/android/server/pm/InitAppsHelper;

    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2392
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemPartitions()Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/android/server/pm/InitAppsHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    if-eqz v4, :cond_698

    .line 2395
    iget v5, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v6, 0x16

    if-gt v5, v6, :cond_698

    const/4 v5, 0x1

    goto :goto_699

    :cond_698
    const/4 v5, 0x0

    :goto_699
    iput-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-eqz v4, :cond_6a5

    .line 2400
    iget v5, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_6a5

    const/4 v5, 0x1

    goto :goto_6a6

    :cond_6a5
    const/4 v5, 0x0

    :goto_6a6
    iput-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mIsPreNUpgrade:Z

    if-eqz v4, :cond_6b2

    .line 2402
    iget v5, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v6, 0x19

    if-ge v5, v6, :cond_6b2

    const/4 v5, 0x1

    goto :goto_6b3

    :cond_6b2
    const/4 v5, 0x0

    :goto_6b3
    iput-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    if-eqz v4, :cond_6bf

    .line 2403
    iget v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_6bf

    const/4 v4, 0x1

    goto :goto_6c0

    :cond_6bf
    const/4 v4, 0x0

    :goto_6c0
    iput-boolean v4, v9, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 2405
    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2406
    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    .line 2410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v5

    if-eqz v5, :cond_6f7

    .line 2411
    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 2412
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 2413
    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6e1

    .line 2417
    :cond_6f7
    iget-boolean v5, v9, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    const-string/jumbo v5, "persist.sys.clear_package_cache_needed"

    const/4 v6, 0x0

    .line 2421
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_724

    const-string v5, "Clear pkg caches due to BR allowlist updated"

    .line 2422
    invoke-static {v5}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 2423
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    if-eqz v5, :cond_719

    .line 2424
    invoke-static {v5}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_719
    const-string/jumbo v5, "persist.sys.clear_package_cache_needed"

    const/4 v6, 0x0

    .line 2426
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    :cond_724
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->deleteContentsIfNeeded(Ljava/io/File;)V

    .line 2433
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->isPackageCacheCorrupted(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_738

    .line 2434
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    invoke-static {v5}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->deletePackageCaches(Ljava/io/File;)V

    .line 2436
    :cond_738
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->setPackageScanStarted(Landroid/content/Context;Z)V

    .line 2438
    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    if-eqz v5, :cond_74b

    .line 2439
    new-instance v5, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 2442
    :cond_74b
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .line 2443
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningCachingPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v6

    .line 2444
    iget-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v19, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/pm/InitAppsHelper;->initSystemApps(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v7

    iput-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 2446
    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v7, v6, v5, v2, v3}, Lcom/android/server/pm/InitAppsHelper;->initNonSystemApps(Lcom/android/server/pm/parsing/PackageParser2;[IJ)V

    .line 2447
    invoke-virtual {v6}, Lcom/android/server/pm/parsing/PackageParser2;->close()V

    .line 2450
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 2454
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 2455
    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/resolution/ComponentResolver;->fixProtectedFilterPriorities(Ljava/lang/String;)V

    .line 2457
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040397

    .line 2458
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2457
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 2459
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104032f

    .line 2460
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2459
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 2461
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040335

    .line 2462
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2461
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    const v6, 0x1040313

    .line 2464
    invoke-virtual {v9, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2463
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2465
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104035d

    .line 2466
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2465
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 2467
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->getRetailDemoPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 2468
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2469
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/SystemConfig;->getOverlayConfigSignaturePackage()Ljava/lang/String;

    move-result-object v6

    .line 2468
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    const v6, 0x1040389

    .line 2471
    invoke-virtual {v9, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2470
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    const v6, 0x1040312

    .line 2473
    invoke-virtual {v9, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2472
    invoke-virtual {v9, v10, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 2478
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2479
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    .line 2478
    invoke-virtual {v6, v8, v8, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2481
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Lcom/android/server/pm/Settings;->getAllSharedUsersLPw()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_80f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_866

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 2485
    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2488
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v8

    .line 2489
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v11

    const/4 v13, 0x0

    .line 2488
    invoke-interface {v8, v11, v13}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v8

    .line 2486
    invoke-static {v7, v13, v8}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_85b

    .line 2490
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_85b

    .line 2491
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    :goto_83c
    if-ltz v11, :cond_85b

    .line 2492
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_844
    .catchall {:try_start_5e3 .. :try_end_844} :catchall_b3e

    .line 2494
    :try_start_844
    iget-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2495
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v16
    :try_end_84a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_844 .. :try_end_84a} :catch_854
    .catchall {:try_start_844 .. :try_end_84a} :catchall_b3e

    move-object/from16 p1, v6

    :try_start_84c
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2494
    invoke-virtual {v15, v13, v6}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_853
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_84c .. :try_end_853} :catch_856
    .catchall {:try_start_84c .. :try_end_853} :catchall_b3e

    goto :goto_856

    :catch_854
    move-object/from16 p1, v6

    :catch_856
    :goto_856
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v6, p1

    goto :goto_83c

    :cond_85b
    move-object/from16 p1, v6

    .line 2502
    :try_start_85d
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->fixSeInfoLocked()V

    .line 2503
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    move-object/from16 v6, p1

    goto :goto_80f

    .line 2508
    :cond_866
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    .line 2509
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v6}, Lcom/android/server/pm/CompilerStats;->read()V

    const-string v6, "PackageManager"

    const-string v7, "!@Boot_EBS_F: boot_progress_pms_end"

    .line 2511
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc12

    .line 2513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2512
    invoke-static {v6, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v6, "PackageManager"

    .line 2514
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to scan packages: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15
    :try_end_890
    .catchall {:try_start_85d .. :try_end_890} :catchall_b3e

    move-object/from16 p6, v14

    sub-long v13, v15, v2

    long-to-float v8, v13

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v8, v11

    :try_start_898
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2514
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v6, :cond_8d2

    const-string v6, "PackageManager"

    .line 2525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build fingerprint changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; regranting permissions for internal storage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_8d2
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v7, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-boolean v8, v9, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    invoke-interface {v6, v7, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 2531
    iget v6, v9, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2536
    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v6, :cond_90e

    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-nez v6, :cond_8eb

    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v6, :cond_90e

    .line 2537
    :cond_8eb
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8fa
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2538
    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v7}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    goto :goto_8fa

    .line 2547
    :cond_90e
    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_94a

    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v6, :cond_94a

    const-string v6, "PackageManager"

    const-string v8, "Build fingerprint changed; clearing code caches"

    .line 2548
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 2549
    :goto_91f
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_946

    .line 2550
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2551
    sget-object v11, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_943

    .line 2553
    iget-object v11, v9, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    const v13, 0x20027

    invoke-virtual {v11, v8, v7, v13}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    :cond_943
    add-int/lit8 v6, v6, 0x1

    goto :goto_91f

    .line 2559
    :cond_946
    sget-object v6, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 2563
    :cond_94a
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v6}, Lcom/android/server/pm/AppDataHelper;->fixAppsDataOnBoot()Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 2567
    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v6, :cond_980

    iget-boolean v6, v9, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    if-eqz v6, :cond_980

    const-string v6, "PackageManager"

    const-string v8, "Allowlisting all existing apps to hide their icons"

    .line 2568
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_966
    if-ge v8, v6, :cond_980

    .line 2571
    invoke-virtual {v4, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 2572
    invoke-virtual {v11}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v13

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-eqz v13, :cond_977

    goto :goto_97d

    .line 2575
    :cond_977
    sget-object v13, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z

    :goto_97d
    add-int/lit8 v8, v8, 0x1

    goto :goto_966

    :cond_980
    const/4 v4, 0x0

    .line 2581
    iput-boolean v4, v9, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    const/4 v4, 0x3

    .line 2584
    iput v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v6, 0x1

    .line 2588
    invoke-virtual {v4, v6}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2587
    invoke-static {v0, v4}, Lcom/samsung/android/server/pm/user/BmodeUtils;->restoreBmodeSettingsWhenUpgrading(ZLjava/util/List;)V

    const-string/jumbo v0, "write settings"

    .line 2592
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2593
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 2594
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "PackageManager"

    const-string v4, "!@Boot_EBS_F: boot_progress_pms_ready"

    .line 2595
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc1c

    .line 2597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2596
    invoke-static {v0, v13, v14}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2599
    iget-boolean v0, v9, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v0, :cond_9fa

    .line 2601
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getRequiredButNotReallyRequiredVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 2602
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getSamsungRequiredVerifier(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    .line 2604
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 2605
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 2607
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v13

    .line 2609
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v14

    .line 2611
    iget-object v15, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2613
    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    move-result-object v17

    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    move-object/from16 v16, v0

    move-object/from16 v18, v4

    .line 2611
    invoke-static/range {v13 .. v18}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v0

    .line 2616
    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 2618
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    const-string v0, "android.ext.shared"

    .line 2619
    invoke-virtual {v9, v10, v0, v7}, Lcom/android/server/pm/PackageManagerService;->getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    goto :goto_a07

    :cond_9fa
    const/4 v4, 0x0

    .line 2623
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 2625
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    .line 2627
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 2628
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 2629
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 2630
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 2635
    :goto_a07
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 2637
    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 2638
    invoke-interface {v10, v0, v6, v7, v8}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2639
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    .line 2637
    invoke-virtual {v4, v13, v14}, Lcom/android/server/pm/Settings;->setPermissionControllerVersion(J)V

    .line 2642
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 2645
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a2d
    :goto_a2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2646
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v11

    if-eqz v11, :cond_a40

    goto :goto_a2d

    .line 2649
    :cond_a40
    array-length v11, v5

    move v13, v8

    :goto_a42
    if-ge v13, v11, :cond_a2d

    aget v14, v5, v13

    .line 2651
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    if-eqz v15, :cond_a6e

    .line 2652
    invoke-interface {v15, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v16

    if-eqz v16, :cond_a6e

    .line 2653
    invoke-interface {v15, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v16

    if-nez v16, :cond_a65

    goto :goto_a6e

    .line 2656
    :cond_a65
    iget-object v8, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    :cond_a6e
    :goto_a6e
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_a42

    .line 2660
    :cond_a72
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 2661
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_aaa

    .line 2663
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_a9a

    const-string v4, "PackageManager"

    .line 2664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set ephemeral resolver: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_a9a
    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2667
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object v4

    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2669
    invoke-virtual {v9, v10, v0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    const/4 v4, 0x0

    goto :goto_aaf

    :cond_aaa
    const/4 v4, 0x0

    .line 2672
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2673
    iput-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 2675
    :goto_aaf
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 2685
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2686
    array-length v4, v5

    const/4 v11, 0x0

    :goto_ab9
    if-ge v11, v4, :cond_acf

    aget v8, v5, v11

    .line 2687
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v6, v7, v8}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .line 2688
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    .line 2687
    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_ab9

    .line 2690
    :cond_acf
    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/dex/DexManager;->load(Ljava/util/Map;)V

    .line 2691
    iget-boolean v0, v9, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v0, :cond_ae4

    const/16 v0, 0xef

    const/16 v4, 0xd

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 2692
    invoke-static {v0, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 2699
    :cond_ae4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2701
    monitor-exit v12
    :try_end_aeb
    .catchall {:try_start_898 .. :try_end_aeb} :catchall_b43

    .line 2702
    :try_start_aeb
    monitor-exit p6
    :try_end_aec
    .catchall {:try_start_aeb .. :try_end_aec} :catchall_b4a

    .line 2705
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 2707
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->enablePackageCaches()V

    const-string v0, "GC"

    .line 2712
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2713
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 2714
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2719
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 2721
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->readConfigUseRoundIcon(Landroid/content/res/Resources;)V

    .line 2723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    .line 2725
    new-instance v0, Lcom/android/server/pm/FrozenPackageInterceptor;

    iget-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/FrozenPackageInterceptor;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

    const-string v0, "PackageManager"

    const-string v1, "Fix for b/169414761 is applied"

    .line 2727
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_b37
    move-exception v0

    move-object/from16 p6, v14

    .line 2355
    :goto_b3a
    :try_start_b3a
    monitor-exit v2
    :try_end_b3b
    .catchall {:try_start_b3a .. :try_end_b3b} :catchall_b3c

    :try_start_b3b
    throw v0

    :catchall_b3c
    move-exception v0

    goto :goto_b3a

    :catchall_b3e
    move-exception v0

    move-object/from16 p6, v14

    .line 2701
    :goto_b41
    monitor-exit v12
    :try_end_b42
    .catchall {:try_start_b3b .. :try_end_b42} :catchall_b43

    :try_start_b42
    throw v0

    :catchall_b43
    move-exception v0

    goto :goto_b41

    :catchall_b45
    move-exception v0

    move-object/from16 p6, v14

    .line 2702
    :goto_b48
    monitor-exit p6
    :try_end_b49
    .catchall {:try_start_b42 .. :try_end_b49} :catchall_b4a

    throw v0

    :catchall_b4a
    move-exception v0

    goto :goto_b48

    :catchall_b4c
    move-exception v0

    .line 2262
    :try_start_b4d
    monitor-exit v3
    :try_end_b4e
    .catchall {:try_start_b4d .. :try_end_b4e} :catchall_b4c

    throw v0
.end method

.method public static decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;
    .registers 7

    :try_start_0
    const-string v0, "X.509"

    .line 1562
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1563
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    .line 1564
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_11
    if-ge v2, v3, :cond_29

    .line 1565
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1566
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1567
    aput-object v4, v1, v2
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_26} :catch_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    return-object v1

    :catch_2a
    move-exception p0

    .line 1571
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static extrasForInstallResult(Lcom/android/server/pm/PackageInstalledInfo;)Landroid/os/Bundle;
    .registers 4

    .line 1577
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const/16 v1, -0x70

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 p0, 0x0

    goto :goto_34

    .line 1587
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1588
    iget-object p0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_19

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string p0, "android.intent.extra.REPLACING"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_33

    .line 1579
    :cond_20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1580
    iget-object v1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mOrigPermission:Ljava/lang/String;

    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object p0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mOrigPackage:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    move-object p0, v0

    :goto_34
    return-object p0
.end method

.method public static getDefaultTimeouts()Ljava/lang/String;
    .registers 5

    .line 9024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "incfs_default_timeouts"

    const-string v4, ""

    .line 9026
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 9029
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9030
    throw v2
.end method

.method public static getKnownDigestersList()Ljava/lang/String;
    .registers 5

    .line 9034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string/jumbo v3, "known_digesters_list"

    const-string v4, ""

    .line 9036
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 9039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9040
    throw v2
.end method

.method public static getPruneUnusedSharedLibrariesDelay()J
    .registers 3

    .line 1469
    sget-wide v0, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    const-string v2, "debug.pm.prune_unused_shared_libraries_delay"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 9

    .line 4032
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.sdksandbox.SdkSandboxService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4039
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 4034
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object p0

    .line 4041
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x0

    .line 4042
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 4044
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There should exactly one sdk sandbox package; found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": matches="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invalidatePackageInfoCache()V
    .registers 0

    .line 1213
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 1214
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    return-void
.end method

.method private synthetic lambda$deletePackageIfUnused$52(Ljava/lang/String;)V
    .registers 9

    .line 5214
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method public static synthetic lambda$forEachInstalledPackage$57(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4

    .line 8854
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 8855
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 8856
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public static synthetic lambda$main$10(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 13

    .line 1694
    new-instance p5, Lcom/android/server/pm/UserManagerService;

    new-instance v3, Lcom/android/server/pm/UserDataPreparer;

    invoke-direct {v3, p1, p2, p0, p3}, Lcom/android/server/pm/UserDataPreparer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Z)V

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p6

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V

    return-object p5
.end method

.method public static synthetic lambda$main$11(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;
    .registers 12

    .line 1697
    new-instance p4, Lcom/android/server/pm/Settings;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 1698
    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    move-result-object v2

    .line 1699
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    move-object v0, p4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    return-object p4
.end method

.method public static synthetic lambda$main$12(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 2

    .line 1701
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 1702
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 1701
    invoke-static {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$main$13(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;
    .registers 2

    const-string/jumbo p0, "platform_compat"

    .line 1703
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0
.end method

.method public static synthetic lambda$main$14(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;
    .registers 2

    .line 1704
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$main$15(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;
    .registers 5

    .line 1705
    new-instance p1, Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v1

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "*dexopt*"

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic lambda$main$16(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .registers 5

    .line 1707
    new-instance p1, Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v1

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic lambda$main$17(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;
    .registers 4

    .line 1709
    new-instance p1, Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v1

    .line 1710
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/pm/dex/ArtManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic lambda$main$18(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;
    .registers 2

    .line 1711
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$main$19(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ViewCompiler;
    .registers 3

    .line 1712
    new-instance p1, Lcom/android/server/pm/dex/ViewCompiler;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/dex/ViewCompiler;-><init>(Ljava/lang/Object;Lcom/android/server/pm/Installer;)V

    return-object p1
.end method

.method public static synthetic lambda$main$20(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;
    .registers 2

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "incremental"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public static synthetic lambda$main$21(Landroid/content/Context;)Landroid/app/role/RoleManager;
    .registers 2

    .line 1715
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public static synthetic lambda$main$22()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 1716
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method public static synthetic lambda$main$23(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 3

    .line 1715
    new-instance p1, Lcom/android/server/pm/DefaultAppProvider;

    new-instance p2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;-><init>()V

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/DefaultAppProvider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-object p1
.end method

.method public static synthetic lambda$main$24(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;
    .registers 2

    .line 1717
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$main$25(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 9

    .line 1718
    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v6
.end method

.method public static synthetic lambda$main$26(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 9

    .line 1721
    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v6
.end method

.method public static synthetic lambda$main$27(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 9

    .line 1724
    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v6
.end method

.method public static synthetic lambda$main$28(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;
    .registers 5

    .line 1728
    new-instance v0, Lcom/android/server/pm/PackageInstallerService;

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/pm/PackageInstallerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static synthetic lambda$main$29(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .registers 4

    .line 1730
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/pm/InstantAppResolverConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic lambda$main$30(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 2

    .line 1732
    new-instance p1, Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/pm/ModuleInfoProvider;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static synthetic lambda$main$31(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 2

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$main$32(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .registers 3

    return-object p0
.end method

.method public static synthetic lambda$main$33(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;
    .registers 5

    .line 1736
    new-instance p0, Lcom/android/server/ServiceThread;

    const-string v0, "PackageManager"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1738
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 1739
    new-instance v0, Lcom/android/server/pm/PackageHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method public static synthetic lambda$main$34(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BackgroundDexOptService;
    .registers 4

    .line 1744
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method public static synthetic lambda$main$35(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;
    .registers 2

    const-string p0, "backup"

    .line 1745
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$main$36(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 3

    .line 1747
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-object v0
.end method

.method public static synthetic lambda$main$37(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 1783
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic lambda$main$38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 9

    .line 1759
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1760
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1762
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_25

    const-string p0, "PackageManager"

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find package setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    monitor-exit v0

    return-void

    .line 1767
    :cond_25
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1769
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v4

    .line 1768
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    .line 1770
    invoke-static {v3, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_4f

    const-string p0, "PackageManager"

    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    monitor-exit v0

    return-void

    .line 1776
    :cond_4f
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1777
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v4

    .line 1776
    invoke-static {v3, v1, v4}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v1

    .line 1779
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    const-string v4, "PackageManager"

    .line 1780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating seInfo for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1782
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;

    invoke-direct {v4, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 1784
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 1786
    :cond_93
    monitor-exit v0

    return-void

    :catchall_95
    move-exception p0

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public static synthetic lambda$main$8(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;
    .registers 3

    .line 1691
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-object v0
.end method

.method public static synthetic lambda$main$9(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 3

    .line 1693
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object p1

    .line 1692
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$39()Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 2234
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method private synthetic lambda$new$40()Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 2234
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method private synthetic lambda$notifyFirstLaunch$44(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 3655
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_39

    .line 3656
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PostInstallData;

    .line 3657
    iget-object v4, v2, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget v5, v4, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-eq v5, v3, :cond_1a

    goto :goto_36

    .line 3660
    :cond_1a
    iget-object v3, v4, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v3, v0

    .line 3662
    :goto_27
    iget-object v4, v2, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    array-length v5, v4

    if-ge v3, v5, :cond_36

    .line 3663
    aget v4, v4, v3

    if-ne p2, v4, :cond_33

    return-void

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3677
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-interface {v1, p1, p2, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 3679
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_4c

    :cond_48
    new-array v2, v3, [I

    aput p2, v2, v0

    :goto_4c
    if-eqz v1, :cond_53

    new-array v1, v3, [I

    aput p2, v1, v0

    goto :goto_55

    .line 3680
    :cond_53
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 3681
    :goto_55
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0, p1, p3, v2, v1}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    return-void
.end method

.method private synthetic lambda$postPreferredActivityChangedBroadcast$46(I)V
    .registers 2

    .line 3905
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    return-void
.end method

.method private synthetic lambda$requestChecksumsInternal$4()Landroid/content/Context;
    .registers 1

    .line 1551
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic lambda$requestChecksumsInternal$5(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    return-object p0
.end method

.method private synthetic lambda$requestChecksumsInternal$6()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 1554
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method private synthetic lambda$requestChecksumsInternal$7(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 15

    .line 1550
    new-instance v6, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1553
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v6, v0, v1, v2, p1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    move-object v0, p2

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 1555
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void
.end method

.method private synthetic lambda$requestFileChecksums$0()Landroid/content/Context;
    .registers 1

    .line 1496
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic lambda$requestFileChecksums$1(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    return-object p0
.end method

.method private synthetic lambda$requestFileChecksums$2()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 1499
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method private synthetic lambda$requestFileChecksums$3(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 15

    .line 1495
    new-instance v6, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1498
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v6, v0, v1, v2, p1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    move-object v0, p2

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 1500
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void
.end method

.method public static synthetic lambda$resetComponentEnabledSettingsIfNeededLPw$45(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .registers 5

    .line 3873
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 3874
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private synthetic lambda$sendPackageAddedForNewUsers$42(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V
    .registers 14

    .line 3539
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic lambda$sendPackageAddedForNewUsers$43([ILjava/lang/String;Z)V
    .registers 8

    .line 3543
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    .line 3544
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v3, p2, p3, v2}, Lcom/android/server/pm/BroadcastHelper;->sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method private synthetic lambda$sendPackageBroadcast$41(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 22

    move-object v0, p0

    .line 3491
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$sendPackageChangedBroadcast$48(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .registers 18

    move-object v0, p0

    .line 4693
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic lambda$setEnabledOverlayPackages$56(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 10

    .line 8698
    invoke-virtual {p4, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object p0

    .line 8699
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    .line 8700
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    const/4 p0, 0x0

    move v0, p0

    .line 8702
    :goto_d
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 8703
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8705
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    move v3, p0

    .line 8706
    :goto_20
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 8707
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v4

    .line 8708
    invoke-interface {v4, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v4

    .line 8709
    invoke-interface {v4, v1, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3d
    return-void
.end method

.method private synthetic lambda$setPackageStoppedState$54(IZZLjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 6

    .line 5390
    invoke-interface {p5, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p1

    .line 5391
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    if-eqz p3, :cond_1b

    .line 5394
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz p2, :cond_17

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p4}, Lcom/android/server/SpegService;->checkSpegState(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    :cond_17
    const/4 p0, 0x0

    .line 5396
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    :cond_1b
    return-void
.end method

.method private synthetic lambda$setPackageStoppedState$55(Ljava/lang/String;I)V
    .registers 4

    .line 5427
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 5428
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-eqz p0, :cond_19

    .line 5429
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 5430
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 5431
    invoke-virtual {p0, p1, v0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingGlobally(Ljava/lang/String;Z)V

    :cond_19
    return-void
.end method

.method public static synthetic lambda$setSystemAppHiddenUntilInstalled$53(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 4

    .line 5246
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 5247
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 5248
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object p0

    .line 5249
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method private synthetic lambda$systemReady$49(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 5035
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "incfs_default_timeouts"

    .line 5036
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "known_digesters_list"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_16
    const/4 p1, 0x0

    .line 5038
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    :cond_19
    return-void
.end method

.method private synthetic lambda$systemReady$50(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 5061
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->isObsoleteUnknownSourcePackage(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$systemReady$51(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 5065
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->checkUnknownSourcePackage(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$updateComponentLabelIcon$47(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 5

    .line 4185
    invoke-interface {p4, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    .line 4186
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;ZZ)Landroid/util/Pair;
    .registers 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/Installer;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationService;",
            "ZZ)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation

    move-object/from16 v5, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    .line 1675
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->checkProperties()V

    .line 1676
    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v0, "PackageManagerTiming"

    const-wide/32 v1, 0x40000

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string v0, "create package manager"

    .line 1678
    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1679
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    move-object v8, v2

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    .line 1680
    new-instance v17, Ljava/lang/Object;

    move-object/from16 v10, v17

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 1682
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManagerBg"

    const/16 v6, 0xa

    const/4 v11, 0x1

    invoke-direct {v0, v1, v6, v11}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1684
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1685
    new-instance v1, Landroid/os/Handler;

    move-object v12, v1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1687
    new-instance v44, Lcom/android/server/pm/PackageManagerServiceInjector;

    move-object/from16 v6, v44

    new-instance v0, Lcom/android/server/pm/PackageAbiHelperImpl;

    move-object v11, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;-><init>()V

    sget-object v13, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;

    move-object v14, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;

    move-object v15, v0

    invoke-direct {v0, v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;

    move-object/from16 v16, v0

    move-object/from16 v45, v6

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v46, v3

    move-object/from16 v3, v17

    move-object/from16 v47, v7

    move-object v7, v4

    move/from16 v4, p4

    move-object/from16 v48, v8

    move-object v8, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLcom/android/server/pm/PackageManagerTracedLock;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;

    move-object/from16 v17, v0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;

    move-object/from16 v18, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;

    move-object/from16 v19, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;

    move-object/from16 v21, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;

    move-object/from16 v22, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    move-object/from16 v23, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;

    move-object/from16 v24, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;

    move-object/from16 v25, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;

    move-object/from16 v26, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;

    move-object/from16 v27, v0

    invoke-direct {v0, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;

    move-object/from16 v28, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;

    move-object/from16 v29, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;

    move-object/from16 v30, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;

    move-object/from16 v31, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;

    move-object/from16 v32, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;

    move-object/from16 v33, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;

    move-object/from16 v34, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;

    move-object/from16 v35, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    move-object/from16 v36, v0

    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;

    move-object/from16 v37, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    move-object/from16 v38, v0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>(Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper-IA;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    move-object/from16 v39, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;-><init>()V

    .line 1743
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;

    move-object/from16 v40, v0

    invoke-direct {v0, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    move-object/from16 v41, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    move-object/from16 v42, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;

    move-object/from16 v43, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;-><init>()V

    move-object/from16 v6, v45

    move-object/from16 v7, v47

    move-object/from16 v8, v48

    invoke-direct/range {v6 .. v43}, Lcom/android/server/pm/PackageManagerServiceInjector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Ljava/lang/Object;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    .line 1749
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1753
    new-instance v0, Lcom/android/server/pm/PackageManagerService;

    sget-object v22, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    sget-boolean v23, Landroid/os/Build;->IS_ENG:Z

    sget-boolean v24, Landroid/os/Build;->IS_USERDEBUG:Z

    sget-object v26, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v19, v44

    move/from16 v20, p4

    move/from16 v21, p3

    invoke-direct/range {v18 .. v26}, Lcom/android/server/pm/PackageManagerService;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZZLjava/lang/String;ZZILjava/lang/String;)V

    .line 1756
    invoke-virtual/range {v46 .. v46}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1758
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1789
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v3

    const-wide/32 v4, 0x88e3d87

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1791
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v3

    const-wide/32 v4, 0xa0f6c63

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1794
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->installAllowlistedSystemPackages()V

    .line 1795
    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v3, "package"

    .line 1796
    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1797
    new-instance v3, Lcom/android/server/pm/PackageManagerNative;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v4, "package_native"

    .line 1798
    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1799
    const-class v3, Lcom/android/server/pm/PackageManagerLocal;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;

    invoke-direct {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl-IA;)V

    invoke-static {v3, v4}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1800
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized makeExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 4

    const-class v0, Lcom/android/server/pm/PackageManagerService;

    monitor-enter v0

    .line 5318
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sLocaleOverlaysExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_19

    .line 5319
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const-string/jumbo v2, "package-locale-overlay-thread"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->sLocaleOverlaysExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 5322
    :cond_19
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sLocaleOverlaysExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onChange(Lcom/android/server/utils/Watchable;)V
    .registers 1

    .line 1402
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static onChanged()V
    .registers 1

    const/4 v0, 0x0

    .line 1410
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->onChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 4

    .line 3340
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v1

    .line 3339
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void
.end method

.method public static reportSettingsProblem(ILjava/lang/String;)V
    .registers 2

    .line 3333
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method

.method public static toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    .line 3345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAllPackageProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 9171
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageProperty;->addAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V
    .registers 10

    .line 3933
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3936
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 3937
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {p1, v1, v0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3939
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result p1

    if-nez p1, :cond_29

    const-string p0, "PackageManager"

    const-string p1, "Cannot set a crossProfile intent filter with no filter actions"

    .line 3940
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3943
    :cond_29
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p1

    .line 3944
    :try_start_2c
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v0, p2, p3, p5, p6}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;II)V

    .line 3946
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3947
    invoke-virtual {p3, p4}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p3

    .line 3948
    invoke-virtual {p3, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_55

    .line 3951
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p6, 0x0

    :goto_42
    if-ge p6, p5, :cond_55

    .line 3953
    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3954
    monitor-exit p1

    return-void

    :cond_52
    add-int/lit8 p6, p6, 0x1

    goto :goto_42

    .line 3958
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3959
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_61

    .line 3960
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void

    :catchall_61
    move-exception p0

    .line 3959
    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V
    .registers 3

    .line 9447
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 9448
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 9449
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addInstrumentation(Landroid/content/ComponentName;Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)V
    .registers 3

    .line 9175
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUnknownSourceApp(Ljava/lang/String;)V
    .registers 3

    .line 9807
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    if-nez v0, :cond_5

    return-void

    .line 9810
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UnknownSourceAppManager;->addUnknownSourceApp(Ljava/lang/String;)V

    .line 9811
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    invoke-virtual {p0}, Lcom/android/server/pm/UnknownSourceAppManager;->writeUnknownPackageXmlAsync()V

    return-void
.end method

.method public final applyUpdatedSystemOverlayPaths()V
    .registers 3

    .line 8757
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    const-string v0, "PackageManager"

    const-string v1, "Skipped the AndroidApplication overlay paths update - no app yet"

    .line 8758
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 8760
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 8761
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 8763
    :goto_14
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-eqz v0, :cond_24

    .line 8764
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 8765
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    :cond_24
    return-void
.end method

.method public bindLocaleServiceAndCallOnPackageInstalled(IILjava/lang/String;Z)V
    .registers 12

    if-nez p3, :cond_d

    const-string p3, "PackageManager"

    const-string v0, "bindLocaleServiceAndCallOnPackageInstalled() called with null packageName"

    .line 9858
    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9859
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZ)V

    return-void

    .line 9862
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v1, 0x80

    const/4 v3, 0x0

    invoke-interface {v0, p3, v1, v2, v3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 9864
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_a1

    const-string v1, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_a1

    .line 9873
    :cond_28
    new-instance v0, Lcom/android/server/pm/LocaleOverlayServiceConnection;

    invoke-direct {v0}, Lcom/android/server/pm/LocaleOverlayServiceConnection;-><init>()V

    .line 9874
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.localeoverlaymanager"

    const-string v4, "com.samsung.android.localeoverlaymanager.ResourceOverlayService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 9878
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    .line 9879
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v3, v0

    .line 9878
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 9880
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    .line 9882
    :goto_56
    invoke-virtual {v0}, Lcom/android/server/pm/LocaleOverlayServiceConnection;->getLocaleOverlayService()Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object v3

    if-nez v3, :cond_71

    .line 9883
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_71

    .line 9884
    monitor-enter v0

    const-wide/16 v3, 0x64

    .line 9886
    :try_start_67
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6d
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6d

    :catchall_6b
    move-exception p0

    goto :goto_6f

    .line 9889
    :catch_6d
    :goto_6d
    :try_start_6d
    monitor-exit v0

    goto :goto_56

    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6b

    throw p0

    .line 9893
    :cond_71
    invoke-virtual {v0}, Lcom/android/server/pm/LocaleOverlayServiceConnection;->getLocaleOverlayService()Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object v1

    if-nez v1, :cond_83

    const-string p3, "PackageManager"

    const-string/jumbo v0, "mLocaleOverlayService null"

    .line 9894
    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9895
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZ)V

    return-void

    .line 9900
    :cond_83
    :try_start_83
    new-instance v1, Lcom/android/server/pm/OverlayInstallObserver;

    invoke-direct {v1, p1, p2, p4, p0}, Lcom/android/server/pm/OverlayInstallObserver;-><init>(IIZLcom/android/server/pm/PackageManagerService;)V

    .line 9901
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/pm/OverlayInstallObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9902
    invoke-virtual {v0}, Lcom/android/server/pm/LocaleOverlayServiceConnection;->getLocaleOverlayService()Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object v0

    invoke-interface {v0, p3, p1, v1}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;->applyLocalesForPackage(Ljava/lang/String;ILcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;)Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_98} :catch_99

    goto :goto_a0

    :catch_99
    move-exception p3

    .line 9904
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZ)V

    .line 9905
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a0
    return-void

    .line 9870
    :cond_a1
    :goto_a1
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZ)V

    return-void
.end method

.method public bindLocaleServiceAndCallOnPackageInstalled(Landroid/os/Message;)V
    .registers 5

    .line 9844
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 9845
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 9846
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PostInstallData;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 9848
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZ)V

    return-void

    .line 9851
    :cond_13
    iget-object v1, v1, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstalledInfo;->mName:Ljava/lang/String;

    .line 9852
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/pm/PackageManagerService;->bindLocaleServiceAndCallOnPackageInstalled(IILjava/lang/String;Z)V

    return-void
.end method

.method public canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 3

    .line 8941
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 8942
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_1e

    .line 8945
    :cond_d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    .line 8946
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p0

    .line 8945
    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 4

    .line 8620
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    if-nez p1, :cond_12

    if-eqz p2, :cond_12

    .line 8623
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1c

    :cond_12
    if-nez p2, :cond_1d

    if-eqz p1, :cond_1d

    .line 8624
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1c
    return v0

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 11

    .line 5328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5329
    invoke-interface {p1, v6}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_eb

    .line 5332
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_e3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "checkPackageStartable"

    move-object v0, p1

    move v1, v6

    move v2, p3

    .line 5335
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5339
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    const-string v1, "Package "

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-nez p3, :cond_4b

    .line 5340
    invoke-static {p2}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_4b

    .line 5341
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is masked by sprotect!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5345
    :cond_4b
    :goto_4b
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    invoke-interface {p1, p0, p2, v6, p3}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_c9

    const/4 p1, 0x2

    if-eq p0, p1, :cond_af

    const/4 p1, 0x3

    if-eq p0, p1, :cond_95

    const/4 p1, 0x4

    if-eq p0, p1, :cond_7b

    const/4 p1, 0x5

    if-eq p0, p1, :cond_61

    return-void

    .line 5356
    :cond_61
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not dualdar aware!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5353
    :cond_7b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not encryption aware!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5351
    :cond_95
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is currently frozen!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5349
    :cond_af
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not a system app!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5347
    :cond_c9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5333
    :cond_e3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "User doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5330
    :cond_eb
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 3295
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p2, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkUnknownSourcePackage(Ljava/lang/String;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 9749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9752
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 9753
    :try_start_a
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const/4 v15, 0x0

    if-nez v0, :cond_17

    .line 9755
    monitor-exit v2

    return v15

    .line 9758
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 9759
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-nez v5, :cond_25

    goto/16 :goto_c4

    :cond_25
    const-string v5, "com.google.android.packageinstaller"

    .line 9763
    iget-object v6, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 9765
    monitor-exit v2

    return v15

    .line 9768
    :cond_31
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 9769
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    .line 9770
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    .line 9771
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_78

    move v0, v15

    .line 9772
    :goto_4a
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_78

    .line 9773
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_75

    .line 9774
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 9778
    :cond_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_a .. :try_end_79} :catchall_c6

    .line 9780
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 9781
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9782
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    .line 9783
    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9786
    :try_start_8b
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v1

    .line 9787
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 9791
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    move-object v5, v0

    .line 9786
    invoke-interface/range {v3 .. v14}, Landroid/content/pm/IASKSManager;->checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a7} :catch_a8

    goto :goto_c0

    :catch_a8
    move-exception v0

    const-string v1, "PackageManager"

    .line 9793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during checkUnknownSourcePackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v15

    :goto_c0
    if-eqz v0, :cond_c3

    const/4 v15, 0x1

    :cond_c3
    return v15

    .line 9760
    :cond_c4
    :goto_c4
    :try_start_c4
    monitor-exit v2

    return v15

    :catchall_c6
    move-exception v0

    .line 9778
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method public cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V
    .registers 7

    .line 5124
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5125
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3d

    .line 5126
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5127
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3a

    .line 5128
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserNeedsBadgingCache;->delete(I)V

    .line 5129
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserRemoved(I)V

    .line 5130
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->removeUserLPw(I)V

    .line 5131
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(I)V

    .line 5133
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->remove(I)V

    .line 5135
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 5136
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->onUserDeleted(I)V

    .line 5137
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_3d

    .line 5138
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->onUserRemoved(I)V

    return-void

    :catchall_3a
    move-exception p0

    .line 5127
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p0

    :catchall_3d
    move-exception p0

    .line 5137
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .registers 10

    const-string v0, "PackageManager"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    const-string p0, "Attempt to delete null packageName."

    .line 3819
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3824
    :cond_b
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 3826
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package named \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' doesn\'t exist."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3829
    :cond_2b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p2}, Lcom/android/server/SpegService;->checkSpegState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "SPEG"

    const-string v3, "Skip permissions reset"

    .line 3830
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 3832
    :cond_41
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 3835
    :goto_46
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, p3, v3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 3838
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3839
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v3, p3, v0}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 3841
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 3842
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal;

    .line 3844
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_78

    invoke-virtual {v3, p3}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v3

    if-eqz v3, :cond_78

    const/4 v1, 0x3

    goto :goto_7f

    .line 3846
    :cond_78
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    move v1, v5

    .line 3851
    :cond_7f
    :goto_7f
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3, v1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    return v5
.end method

.method public clearPackageAfterSpeg(Ljava/lang/String;I)Z
    .registers 4

    .line 3808
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    if-eqz p2, :cond_19

    invoke-virtual {p2, p1}, Lcom/android/server/SpegService;->checkSpegState(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_19

    .line 3812
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 3809
    :cond_19
    :goto_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Clear package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPEG"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3913
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    return-void
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateWrite;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .line 9413
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9416
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 9418
    :goto_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    if-nez v0, :cond_1d

    .line 9422
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 9423
    invoke-virtual {v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v2

    .line 9422
    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v0

    .line 9425
    :cond_1d
    sget-object p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v0, p1, :cond_23

    .line 9426
    monitor-exit v1

    return-object v0

    .line 9429
    :cond_23
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object p0

    if-nez p0, :cond_2f

    .line 9431
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    monitor-exit v1

    return-object p0

    .line 9433
    :cond_2f
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9436
    invoke-interface {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->onChanged()V

    .line 9437
    monitor-exit v1

    return-object p1

    :catchall_37
    move-exception p0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .line 9390
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 9391
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 9392
    invoke-virtual {v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v2

    .line 9391
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p1

    .line 9393
    sget-object v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq p1, v1, :cond_15

    .line 9394
    monitor-exit v0

    return-object p1

    .line 9397
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9398
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 9399
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public createEncAppData(Ljava/lang/String;I)Z
    .registers 9

    .line 9532
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 9534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-wide/16 v2, 0x0

    move-object v1, p1

    move v5, p2

    .line 9533
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 9536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No application info: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9539
    :cond_2a
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 9541
    :try_start_30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/server/pm/Installer;->createEncAppData(Ljava/lang/String;III)Z

    move-result p0
    :try_end_38
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_30 .. :try_end_38} :catch_39
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    return p0

    :catch_39
    :catchall_39
    return v1
.end method

.method public createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/InstallArgs;
    .registers 4

    const/4 v0, 0x0

    .line 2751
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService;->createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/server/pm/InstallArgs;

    move-result-object p0

    return-object p0
.end method

.method public createInstallArgsForExisting(Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/server/pm/InstallArgs;
    .registers 5

    .line 2756
    invoke-static {p3}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 2760
    new-instance p3, Lcom/android/server/pm/AsecInstallArgs;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0, p0}, Lcom/android/server/pm/AsecInstallArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLcom/android/server/pm/PackageManagerService;)V

    return-object p3

    .line 2762
    :cond_d
    new-instance p3, Lcom/android/server/pm/FileInstallArgs;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/server/pm/FileInstallArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-object p3
.end method

.method public final createLiveComputer()Lcom/android/server/pm/ComputerLocked;
    .registers 4

    .line 1389
    new-instance v0, Lcom/android/server/pm/ComputerLocked;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComputerLocked;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V

    return-object v0
.end method

.method public createNewUser(ILjava/util/Set;[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5152
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V

    .line 5155
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_26

    .line 5156
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p2

    .line 5157
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 5158
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageListLocked(I)V

    .line 5159
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->onUserCreated(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V

    .line 5160
    monitor-exit p2

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p2
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw p0

    :catchall_26
    move-exception p0

    .line 5155
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 4

    .line 3718
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/DeletePackageHelper;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public deleteOatArtifactsOfDisabledPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 8963
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8964
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 8965
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 8966
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_46

    .line 8968
    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 8969
    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v1

    .line 8967
    invoke-static {v0, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8970
    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_45

    aget-object v3, v0, v2

    .line 8972
    :try_start_24
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v3, v5}, Lcom/android/server/pm/Installer;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_42

    :catch_2b
    move-exception v3

    const-string v4, "PackageManager"

    .line 8974
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed deleting oat files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    .line 8966
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .registers 3

    .line 8950
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 8951
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_1c

    .line 8954
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 8955
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/server/pm/dex/ArtUtils;->createArtPackageInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Lcom/android/server/pm/dex/ArtPackageInfo;

    move-result-object p1

    .line 8954
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->deleteOptimizedFiles(Lcom/android/server/pm/dex/ArtPackageInfo;)J

    move-result-wide p0

    return-wide p0

    :cond_1c
    :goto_1c
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .registers 15

    .line 9599
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p0

    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/PersonaServiceHelper;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/android/server/pm/Settings;ZZ)V

    return-void
.end method

.method public final deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 5

    .line 5201
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 5205
    :cond_7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 5206
    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 5207
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 5214
    :cond_22
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .registers 11

    .line 3724
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    return-void
.end method

.method public deletePackageXForKnox(Ljava/lang/String;II)I
    .registers 13

    .line 9701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackageXForKnox: pkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, user{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, flags{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9702
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v4, -0x1

    const/4 v8, 0x1

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result p0

    return p0
.end method

.method public deletePreloadsFileCache()V
    .registers 3

    .line 5220
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CLEAR_APP_CACHE"

    const-string v1, "deletePreloadsFileCache"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5222
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object p0

    .line 5223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting preloaded file cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    return-void
.end method

.method public final disableSkuSpecificApps()V
    .registers 9

    .line 5080
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 5082
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 5084
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return-void

    :cond_21
    const-string/jumbo v2, "ro.boot.hardware.sku"

    .line 5087
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5088
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    .line 5091
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5092
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_3c
    if-ge v4, v2, :cond_67

    aget-object v5, v0, v4

    const/4 v6, 0x1

    .line 5093
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/pm/PackageManagerService;->setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 5094
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 5095
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v5, v3, v7}, Lcom/android/server/pm/PackageManagerService;->setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z

    goto :goto_52

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_67
    return-void
.end method

.method public final enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V
    .registers 5

    .line 8772
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.UPGRADE_RUNTIME_PERMISSIONS"

    .line 8775
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    .line 8778
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    return-void
.end method

.method public final enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V
    .registers 5

    .line 3620
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUSPEND_APPS"

    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_33

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_33

    .line 3624
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-ne p0, p2, :cond_14

    goto :goto_33

    .line 3625
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot call for user "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V
    .registers 9

    if-eqz p3, :cond_66

    .line 3576
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_66

    .line 3580
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3582
    invoke-interface {p1, v0, v1, v2, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v0, p3, :cond_1c

    return-void

    .line 3588
    :cond_1c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUSPEND_APPS"

    invoke-virtual {p0, v0, p5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    invoke-interface {p1, p2, v1, v2, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-ne p0, p3, :cond_2d

    move v0, p1

    goto :goto_2e

    :cond_2d
    move v0, p5

    :goto_2e
    const/16 v1, 0x7d0

    if-ne p3, v1, :cond_39

    .line 3595
    invoke-static {p0, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    move p1, p5

    :goto_3a
    if-nez p1, :cond_66

    if-eqz v0, :cond_3f

    goto :goto_66

    .line 3598
    :cond_3f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Calling package "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    return-void
.end method

.method public final enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 6

    .line 3966
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_66

    .line 3967
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x1482

    if-ne p0, v0, :cond_11

    goto :goto_66

    .line 3970
    :cond_11
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 3971
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 3975
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const-wide/16 v0, 0x0

    .line 3976
    invoke-interface {p1, p2, v0, v1, p0}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    return-void

    .line 3978
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on user "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3972
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not own package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    return-void
.end method

.method public ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return-object p0

    .line 4103
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    .line 4105
    :try_start_c
    invoke-interface {p1, p2, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_5b

    const-wide/16 v2, 0x0

    .line 4108
    invoke-interface {p1, p2, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_37

    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "145981139"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 4110
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_37
    const-string v2, "PackageManager"

    .line 4113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required system package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4b

    const-string p1, ", but found with extended search."

    goto :goto_4d

    :cond_4b
    const-string p1, "."

    .line 4114
    :goto_4d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4113
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_c .. :try_end_57} :catchall_5f

    .line 4118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_5f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4119
    throw p0
.end method

.method public final filterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5

    .line 8805
    invoke-interface {p1, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 8807
    invoke-interface {p1, p0, p3, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-nez p1, :cond_18

    .line 8808
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public finishPackageInstall(IZ)V
    .registers 6

    const-string v0, "Only the system is allowed to finish installs"

    .line 5303
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restore"

    .line 5309
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5311
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5313
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final flushPackageRestrictionsAsUserInternalLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4670
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4671
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 4672
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4673
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 4674
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4676
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 8853
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/util/function/Consumer;)V

    .line 8859
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 8831
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    .line 8832
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_21

    .line 8834
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 8835
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 8836
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method public forEachPackageSetting(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8817
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    .line 8820
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 8822
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 8844
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_13

    .line 8846
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 8847
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 8826
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3115
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x900

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 3124
    :catch_12
    :goto_12
    :try_start_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 13

    .line 3241
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 3242
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 3244
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_43

    .line 3247
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3249
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v6, 0x0

    add-long/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v6, v2, v3, v0}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    .line 3250
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object p0

    .line 3254
    iget p2, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 p3, -0x6

    if-ne p2, p3, :cond_31

    const/4 p2, -0x1

    .line 3256
    iput p2, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 3259
    :cond_31
    iget p0, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_33
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1b .. :try_end_33} :catch_37
    .catchall {:try_start_1b .. :try_end_33} :catchall_35

    :try_start_33
    monitor-exit v4

    return p0

    :catchall_35
    move-exception p0

    goto :goto_41

    :catch_37
    move-exception p0

    const-string p2, "PackageManager"

    const-string p3, "Failed to free cache"

    .line 3261
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3263
    monitor-exit v4

    goto :goto_43

    :goto_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_35

    throw p0

    :cond_43
    :goto_43
    return p1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3134
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3135
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3136
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-ltz v1, :cond_17

    return-void

    .line 3138
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mEnableFreeCacheV2:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_fc

    .line 3139
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    and-int/2addr p4, v3

    if-eqz p4, :cond_27

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    if-eqz v1, :cond_41

    if-nez v3, :cond_35

    const-string/jumbo p4, "persist.sys.preloads.file_cache_expired"

    .line 3146
    invoke-static {p4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_41

    .line 3147
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 3148
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_41

    return-void

    :cond_41
    if-eqz v1, :cond_53

    if-eqz v3, :cond_53

    .line 3153
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    invoke-static {p4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 3154
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    cmp-long p4, v2, p2

    if-ltz p4, :cond_53

    return-void

    .line 3158
    :cond_53
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter p4

    .line 3160
    :try_start_56
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v3, 0x100

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_5d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_56 .. :try_end_5d} :catch_61
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5e

    goto :goto_61

    :catchall_5e
    move-exception p0

    goto/16 :goto_fa

    .line 3163
    :catch_61
    :goto_61
    :try_start_61
    monitor-exit p4
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5e

    .line 3164
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    cmp-long p4, v2, p2

    if-ltz p4, :cond_6b

    return-void

    .line 3166
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p4

    if-eqz v1, :cond_8b

    .line 3168
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 3169
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "unused_static_shared_lib_min_cache_period"

    sget-wide v5, Lcom/android/server/pm/PackageManagerService;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-object v3, p4

    move-wide v4, p2

    .line 3168
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z

    move-result v2

    if-eqz v2, :cond_8b

    return-void

    :cond_8b
    const-wide/32 v8, 0x240c8400

    if-eqz v1, :cond_a8

    .line 3180
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 3182
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "installed_instant_app_min_cache_period"

    .line 3181
    invoke-static {v3, v4, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-object v3, p4

    move-wide v4, p2

    .line 3180
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result v2

    if-eqz v2, :cond_a8

    return-void

    .line 3191
    :cond_a8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3193
    :try_start_ab
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v4, 0x300

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_b2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ab .. :try_end_b2} :catch_b5
    .catchall {:try_start_ab .. :try_end_b2} :catchall_b3

    goto :goto_b5

    :catchall_b3
    move-exception p0

    goto :goto_f8

    .line 3197
    :catch_b5
    :goto_b5
    :try_start_b5
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b3

    .line 3198
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_bf

    return-void

    :cond_bf
    if-eqz v1, :cond_d9

    .line 3205
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 3207
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "uninstalled_instant_app_min_cache_period"

    .line 3206
    invoke-static {v1, v3, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-object v3, p4

    move-wide v4, p2

    .line 3205
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result p4

    if-eqz p4, :cond_d9

    return-void

    .line 3216
    :cond_d9
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManagerInternal;

    .line 3217
    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/storage/StorageManagerInternal;

    .line 3218
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_f2

    .line 3220
    invoke-virtual {p4, p1, v1, v2}, Landroid/os/storage/StorageManagerInternal;->freeCache(Ljava/lang/String;J)V

    .line 3224
    :cond_f2
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->freeStageDirs(Ljava/lang/String;)V

    goto :goto_108

    .line 3197
    :goto_f8
    :try_start_f8
    monitor-exit v2
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_b3

    throw p0

    .line 3163
    :goto_fa
    :try_start_fa
    monitor-exit p4
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_5e

    throw p0

    .line 3226
    :cond_fc
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter p4

    .line 3228
    :try_start_ff
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_104
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ff .. :try_end_104} :catch_107
    .catchall {:try_start_ff .. :try_end_104} :catchall_105

    goto :goto_107

    :catchall_105
    move-exception p0

    goto :goto_130

    .line 3231
    :catch_107
    :goto_107
    :try_start_107
    monitor-exit p4
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_105

    .line 3233
    :goto_108
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_111

    return-void

    .line 3235
    :cond_111
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to free "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on storage device at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3231
    :goto_130
    :try_start_130
    monitor-exit p4
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_105

    throw p0
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5

    .line 5105
    new-instance v0, Lcom/android/server/pm/PackageFreezer;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method public freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 4

    const/4 v0, -0x1

    .line 5101
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_a

    .line 5116
    new-instance p1, Lcom/android/server/pm/PackageFreezer;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-object p1

    .line 5118
    :cond_a
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public freezePackageForDelete(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5

    const/4 v0, -0x1

    .line 5110
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public getActiveLauncherPackageName(I)Ljava/lang/String;
    .registers 2

    .line 9204
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppInstallDir()Ljava/io/File;
    .registers 1

    .line 9226
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    return-object p0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 1

    .line 9155
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    return-object p0
.end method

.method public getCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "none"

    .line 8881
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 8882
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 8883
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 8884
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_69

    if-eqz v2, :cond_65

    if-nez p0, :cond_1a

    goto :goto_65

    .line 8890
    :cond_1a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 8892
    invoke-static {v2, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p1

    .line 8893
    invoke-static {v2, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p0

    .line 8891
    invoke-static {p1, p0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 8894
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 8895
    array-length p1, p0

    const/4 v1, 0x0

    :goto_32
    if-ge v1, p1, :cond_60

    aget-object v0, p0, v1

    .line 8897
    :try_start_36
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getCompilerFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_41

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :catch_41
    move-exception p0

    const-string p1, "PackageManager"

    .line 8899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get compiler filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "none"

    return-object p0

    :cond_60
    return-object v0

    :cond_61
    const-string/jumbo p0, "none"

    return-object p0

    :cond_65
    :goto_65
    const-string/jumbo p0, "none"

    return-object p0

    :catchall_69
    move-exception p0

    .line 8884
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 9310
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getDefParseFlags()I
    .registers 1

    .line 9234
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    return p0
.end method

.method public getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .registers 1

    .line 9151
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method public final getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .line 3797
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_10

    const-string v0, "device_policy"

    .line 3800
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3799
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 3802
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public getDexManager()Lcom/android/server/pm/dex/DexManager;
    .registers 1

    .line 3405
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object p0
.end method

.method public getDisabledPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8797
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public final getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 12

    .line 2949
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2950
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v3, 0x0

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    .line 2951
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 2955
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_1f
    const-string v6, "PackageManager"

    if-ge v4, v1, :cond_68

    .line 2957
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2958
    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v9, "android.permission.DOMAIN_VERIFICATION_AGENT"

    .line 2959
    invoke-virtual {p0, v9, v8, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4c

    .line 2962
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Domain verification agent found but does not hold permission: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :cond_4c
    if-eqz v5, :cond_54

    .line 2967
    iget v8, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v9, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v8, v9, :cond_65

    .line 2968
    :cond_54
    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    invoke-interface {p1, v8, v3}, Lcom/android/server/pm/Computer;->isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v8

    if-eqz v8, :cond_60

    move-object v5, v7

    goto :goto_65

    :cond_60
    const-string v7, "Domain verification agent found but not enabled"

    .line 2972
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_68
    if-eqz v5, :cond_73

    .line 2978
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_73
    const-string p0, "Domain verification agent not found"

    .line 2980
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3041
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    const-string v1, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    if-eqz v0, :cond_d

    const-string v2, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE_TEST"

    .line 3042
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 3045
    :cond_d
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_11
    const v2, 0xc0200

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    move v0, v3

    goto :goto_1b

    :cond_19
    const/high16 v0, 0x100000

    :goto_1b
    or-int/2addr v0, v2

    .line 3053
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 3054
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.category.DEFAULT"

    .line 3055
    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3056
    new-instance v4, Ljava/io/File;

    const-string v5, "foo.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3058
    array-length v11, v1

    const/4 v12, 0x0

    move v13, v3

    move-object v4, v12

    :goto_3e
    if-ge v13, v11, :cond_72

    aget-object v14, v1, v13

    .line 3059
    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    int-to-long v7, v0

    const/4 v9, 0x0

    const-string v6, "application/vnd.android.package-archive"

    move-object v4, v2

    move-object v5, v10

    .line 3060
    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v4

    .line 3062
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 3063
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_6f

    .line 3064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instant App installer not found with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    add-int/lit8 v13, v13, 0x1

    goto :goto_3e

    .line 3070
    :cond_72
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3071
    :cond_76
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 3072
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3073
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_76

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-eqz v1, :cond_93

    goto :goto_76

    .line 3078
    :cond_93
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_76

    .line 3080
    :cond_97
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_9e

    return-object v12

    .line 3082
    :cond_9e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_b2

    .line 3083
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 3085
    :cond_b2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be at most one ephemeral installer; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 14

    .line 2985
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2986
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700d1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2987
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "PackageManager"

    if-nez v0, :cond_21

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_21

    .line 2988
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_20

    const-string p0, "Ephemeral resolver NOT found; empty package list"

    .line 2989
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-object v1

    .line 2994
    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/high16 v0, 0xc0000

    .line 2998
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v11, 0x0

    if-nez v3, :cond_2f

    const/high16 v3, 0x100000

    goto :goto_30

    :cond_2f
    move v3, v11

    :goto_30
    or-int/2addr v0, v3

    .line 2999
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    .line 3000
    invoke-interface/range {v3 .. v10}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object p1

    .line 3002
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_51

    .line 3004
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_50

    const-string p0, "Ephemeral resolver NOT found; no matching intent filters"

    .line 3005
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-object v1

    .line 3010
    :cond_51
    new-instance v3, Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_5a
    if-ge v11, v0, :cond_be

    .line 3012
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 3014
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_67

    goto :goto_93

    .line 3018
    :cond_67
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3019
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ", info:"

    if-nez v5, :cond_96

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v5, :cond_96

    .line 3020
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_93

    .line 3021
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ephemeral resolver not in allowed package list; pkg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    add-int/lit8 v11, v11, 0x1

    goto :goto_5a

    .line 3027
    :cond_96
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p1, :cond_b4

    .line 3028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ephemeral resolver found; pkg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_b4
    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v4, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 3033
    :cond_be
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_c7

    const-string p0, "Ephemeral resolver NOT found"

    .line 3034
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    return-object v1
.end method

.method public final getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 9

    .line 3092
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 3093
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 3094
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/32 v3, 0xc0000

    const/4 v5, 0x0

    move-object v0, p1

    .line 3096
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 3098
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p0, 0x0

    return-object p0

    :cond_27
    const/4 p1, 0x0

    .line 3101
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 9163
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public final getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 10

    .line 2917
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2919
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2923
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    .line 2920
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2925
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_20
    if-ge v3, v0, :cond_43

    .line 2927
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2928
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    .line 2929
    invoke-virtual {p0, v7, v6, v1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_37

    goto :goto_40

    :cond_37
    if-eqz v4, :cond_3f

    .line 2935
    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v6, v7, :cond_40

    :cond_3f
    move-object v4, v5

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_43
    if-eqz v4, :cond_4e

    .line 2941
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_4e
    const-string p0, "PackageManager"

    const-string p1, "Intent filter verifier not found"

    .line 2943
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    .line 9180
    new-instance v14, Lcom/android/server/pm/KnownPackages;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v19, v14

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v17, v14

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v14, "com.android.companiondevicemanager"

    move-object/from16 v0, v19

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 9200
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8982
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_b

    .line 8984
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 8987
    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 8988
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_21

    .line 8993
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 8990
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown MIME group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 3

    .line 3269
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    return-object p0
.end method

.method public getModuleMetadataPackageName()Ljava/lang/String;
    .registers 1

    .line 9222
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 2

    .line 8867
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 2

    .line 8871
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p0

    return-object p0
.end method

.method public getPackageFromComponentString(I)Ljava/lang/String;
    .registers 3

    .line 4086
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4087
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return-object v0

    .line 4090
    :cond_e
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 4094
    :cond_15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInstallerPackageName()Ljava/lang/String;
    .registers 1

    .line 3303
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9462
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 9463
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllPackages()Ljava/util/List;

    move-result-object v0

    .line 9464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9471
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_ee

    goto :goto_48

    :sswitch_19
    const-string/jumbo v2, "pkg_clearable_system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_48

    :cond_23
    const/4 v3, 0x3

    goto :goto_48

    :sswitch_25
    const-string/jumbo v2, "pkg_sys"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_48

    :cond_2f
    const/4 v3, 0x2

    goto :goto_48

    :sswitch_31
    const-string/jumbo v2, "pkg_not_clearable_system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_48

    :cond_3b
    const/4 v3, 0x1

    goto :goto_48

    :sswitch_3d
    const-string/jumbo v2, "pkg_not_system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    packed-switch v3, :pswitch_data_100

    goto/16 :goto_ed

    .line 9498
    :pswitch_4d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_51
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9499
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_68

    goto :goto_51

    .line 9503
    :cond_68
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 9505
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowClearUserData()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 9506
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 9473
    :pswitch_78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7c
    :goto_7c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9474
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_93

    goto :goto_7c

    .line 9478
    :cond_93
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 9479
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 9484
    :pswitch_9d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a1
    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9485
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_b8

    goto :goto_a1

    .line 9489
    :cond_b8
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 9491
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAllowClearUserData()Z

    move-result v2

    if-nez v2, :cond_a1

    .line 9492
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 9512
    :pswitch_c8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_cc
    :goto_cc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9513
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_e3

    goto :goto_cc

    .line 9517
    :cond_e3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v2

    if-nez v2, :cond_cc

    .line 9518
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_ed
    :goto_ed
    return-object v1

    :sswitch_data_ee
    .sparse-switch
        -0x650cb292 -> :sswitch_3d
        -0x49349f3a -> :sswitch_31
        -0x1ed72626 -> :sswitch_25
        0x44024a5a -> :sswitch_19
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_9d
        :pswitch_78
        :pswitch_4d
    .end packed-switch
.end method

.method public getPackageProperty()Lcom/android/server/pm/PackageProperty;
    .registers 1

    .line 9159
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object p0
.end method

.method public getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8789
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUsage()Lcom/android/server/pm/PackageUsage;
    .registers 1

    .line 9218
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    return-object p0
.end method

.method public getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .registers 3

    .line 9048
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    if-nez v0, :cond_a

    .line 9050
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v0

    .line 9051
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    :cond_a
    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4

    .line 3107
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    .line 3108
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    .line 9705
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object p0
.end method

.method public getPlatformPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    .line 9318
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p0
.end method

.method public final getRequiredButNotReallyRequiredVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10

    .line 2798
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2800
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2804
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    .line 2801
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 2805
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    const/4 p1, 0x0

    .line 2806
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2807
    :cond_2d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3c

    const-string p0, "PackageManager"

    const-string p1, "There should probably be a verifier, but, none were found"

    .line 2808
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2811
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one verifier; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 2861
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.DEFAULT"

    .line 2862
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "content://com.example/foo.apk"

    .line 2863
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    move-object v0, p1

    .line 2865
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 2869
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4f

    const/4 p1, 0x0

    .line 2870
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2871
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2874
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2872
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The installer must be a privileged app"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2876
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one installer; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 2897
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.DEFAULT"

    .line 2898
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    move-object v0, p1

    .line 2900
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 2903
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_43

    const/4 p1, 0x0

    .line 2904
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2905
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2908
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2906
    :cond_3b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The permissions manager must be a privileged app"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2910
    :cond_43
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one permissions manager; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 4

    .line 2849
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040397

    .line 2851
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2850
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2852
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    return-object p0

    .line 2853
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Required services extension package is missing, check config_servicesExtensionPackage."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    int-to-long v0, p3

    .line 2836
    invoke-interface {p1, p2, v0, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 2840
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    .line 2842
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected a package for shared library "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2838
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing required shared library:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 13

    .line 2881
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 2882
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "package"

    const-string v1, "foo.bar"

    const/4 v3, 0x0

    .line 2883
    invoke-static {v0, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2885
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const-wide/32 v4, 0x1c0000

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    .line 2885
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 2888
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2889
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    .line 2893
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2890
    :cond_44
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one uninstaller; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResolveComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 9147
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getRetailDemoPackageName()Ljava/lang/String;
    .registers 9

    .line 4051
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104038b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4052
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4055
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_65

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_65

    .line 4059
    :cond_20
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p0, :cond_65

    .line 4061
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 4062
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    if-eqz v2, :cond_65

    :try_start_36
    const-string v2, "SHA-256"

    .line 4064
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 4065
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_43
    if-ge v6, v4, :cond_65

    aget-object v7, p0, v6

    .line 4068
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    .line 4067
    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v7, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v7

    .line 4066
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_57} :catch_5d

    if-eqz v7, :cond_5a

    return-object v0

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :catch_5d
    move-exception p0

    const-string v0, "PackageManager"

    const-string v1, "Unable to verify signatures as getting the retail demo package name"

    .line 4073
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return-object v3
.end method

.method public getSafeMode()Z
    .registers 1

    .line 9143
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return p0
.end method

.method public final getSamsungRequiredVerifier(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10

    .line 2816
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.PACKAGE_NEEDS_VERIFICATION2"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2818
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    .line 2819
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 2823
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    const/4 p1, 0x0

    .line 2824
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2825
    :cond_2d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3c

    const-string p0, "PackageManager"

    const-string p1, "There should probably be a Samsung verifier, but, none were found"

    .line 2826
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2829
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one Samsung verifier; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSdkSandboxPackageName()Ljava/lang/String;
    .registers 1

    .line 3299
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()I
    .registers 1

    .line 9167
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    return p0
.end method

.method public getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 3705
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3706
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3707
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    return-object p0

    .line 3709
    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    return-object p0

    .line 3712
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 3998
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.SETUP_WIZARD"

    .line 3999
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4004
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0200

    move-object v0, p1

    .line 4001
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 4005
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    const/4 p1, 0x0

    .line 4006
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 4008
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There should probably be exactly one setup wizard; found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": matches="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 4015
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4020
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0200

    move-object v0, p1

    .line 4017
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 4021
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_29

    const/4 p1, 0x0

    .line 4022
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 4024
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There should probably be exactly one storage manager; found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": matches="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 4024
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9352
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 9353
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object p0

    .line 9356
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    const/4 v1, 0x0

    if-ltz v0, :cond_31

    .line 9357
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanPartition;

    .line 9358
    invoke-virtual {v1, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/high16 p0, 0x20000

    or-int/2addr p0, p2

    .line 9360
    iget p1, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v1, p0, p1

    goto :goto_32

    .line 9364
    :cond_23
    invoke-virtual {v1, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsApp(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 9366
    iget p0, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v1, p2, p0

    goto :goto_32

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_31
    move p3, v1

    .line 9370
    :goto_32
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSystemPackageScanFlags(Ljava/io/File;)I
    .registers 6

    .line 9334
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 9335
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object p0

    .line 9337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    const/high16 v1, 0x10000

    if-ltz v0, :cond_2c

    .line 9338
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 9339
    invoke-virtual {v2, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 9340
    iget p0, v2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v1, p0

    .line 9341
    invoke-virtual {v2, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/high16 p0, 0x20000

    or-int/2addr v1, p0

    goto :goto_2c

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2c
    :goto_2c
    return v1
.end method

.method public grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V
    .registers 11

    .line 8912
    invoke-interface {p1, p5}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 8913
    invoke-static {p2, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    if-eqz v0, :cond_34

    .line 8914
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_34

    .line 8919
    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8918
    invoke-interface {p1, v0, p2, p5}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_29

    if-nez p6, :cond_1e

    return-void

    .line 8928
    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 8929
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 8928
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccess(ILandroid/content/Intent;II)Z

    move-result p0

    goto :goto_2f

    .line 8931
    :cond_29
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0, v1, p5, p7}, Lcom/android/server/pm/AppsFilterImpl;->grantImplicitAccess(IIZ)Z

    move-result p0

    :goto_2f
    if-eqz p0, :cond_34

    .line 8936
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    :cond_34
    :goto_34
    return-void
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 5

    .line 3278
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isDisallowedByPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3283
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3284
    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/FeatureInfo;

    if-nez p0, :cond_19

    .line 3286
    monitor-exit v0

    return v1

    .line 3288
    :cond_19
    iget p0, p0, Landroid/content/pm/FeatureInfo;->version:I

    if-lt p0, p2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    monitor-exit v0

    return v1

    :catchall_20
    move-exception p0

    .line 3290
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final installAllowlistedSystemPackages()V
    .registers 5

    .line 1805
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    .line 1807
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1808
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    :cond_19
    return-void
.end method

.method public installExistingPackageForPersona(ILjava/lang/String;)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v12, p2

    .line 9626
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PackageManager"

    .line 9633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verifying app can be installed or not for user - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "application_policy"

    .line 9635
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 9634
    invoke-static {v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    const/16 v13, -0x6e

    if-eqz v2, :cond_6e

    .line 9637
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 9638
    :try_start_36
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 9639
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_6b

    if-eqz v4, :cond_6e

    .line 9641
    :try_start_43
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 9643
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    .line 9642
    invoke-interface {v2, v12, v3, v4, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "PackageManager"

    const-string v3, "This app installation is not allowed"

    .line 9644
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_6a} :catch_6e

    return v13

    :catchall_6b
    move-exception v0

    .line 9639
    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    .line 9653
    :catch_6e
    :cond_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 9656
    :try_start_72
    new-instance v4, Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-direct {v4, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 9659
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_104

    .line 9661
    :try_start_7b
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_8d

    const/4 v0, -0x3

    .line 9664
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_101

    .line 9684
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 9667
    :cond_8d
    :try_start_8d
    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_ab

    .line 9669
    invoke-virtual {v3, v11, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 9671
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    const-string v5, "android.intent.extra.UID"

    .line 9672
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-static {v1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v3, v11

    goto :goto_ac

    :cond_ab
    move v3, v6

    .line 9675
    :goto_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_8d .. :try_end_ad} :catchall_101

    if-eqz v3, :cond_ce

    :try_start_af
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v11, [I

    aput v1, v9, v6

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    move v0, v11

    move-object/from16 v11, v17

    .line 9678
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    :try_end_cd
    .catchall {:try_start_af .. :try_end_cd} :catchall_104

    goto :goto_cf

    :cond_ce
    move v0, v11

    .line 9684
    :goto_cf
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9687
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v1

    if-eqz v1, :cond_100

    const-string v1, "PackageManager"

    .line 9688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installExistingPackageForPersona  packageName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9689
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_100

    .line 9690
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_100

    return v13

    :cond_100
    return v0

    :catchall_101
    move-exception v0

    .line 9675
    :try_start_102
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    :try_start_103
    throw v0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    :catchall_104
    move-exception v0

    .line 9684
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9685
    throw v0
.end method

.method public installLocaleOverlaysForUpdateRemovedPackage(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 9837
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/pm/PackageManagerService;->bindLocaleServiceAndCallOnPackageInstalled(IILjava/lang/String;Z)V

    return-void
.end method

.method public final isAppSeparationModeEnabled()Z
    .registers 5

    .line 9578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p0, 0x0

    .line 9580
    :try_start_5
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 9581
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p0, p0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 9582
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 9583
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_30

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    .line 9589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9590
    throw p0
.end method

.method public isCallerVerifier(Lcom/android/server/pm/Computer;I)Z
    .registers 8

    .line 3729
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3731
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_12

    .line 3732
    invoke-interface {p1, v1, v3, v4, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne p2, v1, :cond_12

    return v2

    .line 3737
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSamsungVerifierPackage:Ljava/lang/String;

    if-eqz p0, :cond_1d

    .line 3738
    invoke-interface {p1, p0, v3, v4, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p2, p0, :cond_1d

    return v2

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceUpgrading()Z
    .registers 2

    .line 2792
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    const/4 v0, 0x0

    if-nez p0, :cond_e

    const-string/jumbo p0, "persist.pm.mock-upgrade"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isExpectingBetter(Ljava/lang/String;)Z
    .registers 2

    .line 9230
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InitAppsHelper;->isExpectingBetter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFirstBoot()Z
    .registers 1

    .line 2781
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    return p0
.end method

.method public isHistoricalPackageUsageAvailable()Z
    .registers 1

    .line 8863
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->isHistoricalPackageUsageAvailable()Z

    move-result p0

    return p0
.end method

.method public isKidsHome()Z
    .registers 3

    .line 745
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string v1, "com.sec.android.app.kidshome"

    .line 747
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0
.end method

.method public final isObsoleteUnknownSourcePackage(Ljava/lang/String;)Z
    .registers 4

    .line 9730
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 9731
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_e

    .line 9733
    monitor-exit v0

    return p1

    .line 9736
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 9737
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_26

    if-nez v1, :cond_1b

    goto :goto_26

    .line 9740
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_28

    const-string p0, "com.google.android.packageinstaller"

    .line 9741
    iget-object v0, v1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    .line 9738
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit v0

    return p1

    :catchall_28
    move-exception p0

    .line 9740
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public isOnlyCoreApps()Z
    .registers 1

    .line 2786
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    return p0
.end method

.method public isOverlayMutable(Ljava/lang/String;)Z
    .registers 2

    .line 9330
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageDeviceAdmin(Ljava/lang/String;I)Z
    .registers 7

    .line 3763
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 3766
    :try_start_7
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_13

    .line 3769
    :cond_f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3774
    :goto_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    const/4 v2, -0x1

    if-ne p2, v2, :cond_25

    .line 3780
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    goto :goto_29

    :cond_25
    new-array p0, v3, [I

    aput p2, p0, v1

    :goto_29
    move p2, v1

    .line 3784
    :goto_2a
    array-length v2, p0

    if-ge p2, v2, :cond_39

    .line 3785
    aget v2, p0, p2

    invoke-interface {v0, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_39

    if-eqz v2, :cond_36

    return v3

    :cond_36
    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :catch_39
    :cond_39
    return v1
.end method

.method public isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 7

    .line 3748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.MANAGE_USERS"

    .line 3749
    invoke-interface {p1, v1, v0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_20

    .line 3755
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3756
    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1b

    return v3

    .line 3759
    :cond_1b
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_20
    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "128599183"

    aput-object p2, p1, v3

    const/4 p2, 0x1

    .line 3751
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, ""

    aput-object v0, p1, p2

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3752
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "android.permission.MANAGE_USERS permission is required to call this API"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .registers 3

    .line 9604
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 9605
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    .line 9606
    monitor-exit v0

    return p0

    :cond_e
    const/4 p0, 0x0

    .line 9608
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 9609
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isPreNMR1Upgrade()Z
    .registers 1

    .line 9326
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    return p0
.end method

.method public isPreNUpgrade()Z
    .registers 1

    .line 9322
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNUpgrade:Z

    return p0
.end method

.method public isStorageLow()Z
    .registers 4

    .line 5186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5189
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz p0, :cond_18

    .line 5191
    invoke-interface {p0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    .line 5196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_18
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5197
    throw p0
.end method

.method public isSystemReady()Z
    .registers 1

    .line 9314
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return p0
.end method

.method public final isUpdateAllowedByMdm(Landroid/content/pm/PackageManager$ComponentEnabledSetting;I)Z
    .registers 11

    .line 4197
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4198
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    const-string v2, "application_policy"

    .line 4200
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 4199
    invoke-static {v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "PackageManager"

    if-nez v2, :cond_1e

    :try_start_18
    const-string p1, "ApplicationPolicy is null"

    .line 4203
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_1e
    if-eq v1, v3, :cond_22

    if-nez v1, :cond_6b

    .line 4206
    :cond_22
    invoke-interface {v2, v0, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 4207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This app can not be enabled due to EDM policy. packageName = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 4212
    :cond_3d
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 4213
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 4214
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 4215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4214
    invoke-interface {v2, v6, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 4216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This component can not be enabled due to EDM policy. componentName = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_6a} :catch_6b

    return v4

    .line 4226
    :catch_6b
    :cond_6b
    :goto_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4228
    :try_start_6f
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_fb

    if-ne v1, v3, :cond_fb

    .line 4229
    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 4230
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 4231
    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_fb

    .line 4232
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 4233
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eq p1, p2, :cond_fb

    .line 4234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to enable admin for CL container: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4237
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0
    :try_end_b4
    .catchall {:try_start_6f .. :try_end_b4} :catchall_ff

    if-eqz p0, :cond_ec

    .line 4240
    :try_start_b6
    invoke-interface {p0, p2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_ec

    .line 4241
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ec

    .line 4243
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4242
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ec

    const-string p0, "Can enable admin inside container to support AfW feature"

    .line 4244
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_d1} :catch_d3
    .catchall {:try_start_b6 .. :try_end_d1} :catchall_ff

    move p0, v3

    goto :goto_ed

    :catch_d3
    move-exception p0

    .line 4250
    :try_start_d4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    move p0, v4

    :goto_ed
    if-nez p0, :cond_fb

    const-string p0, "Cannot enable this package inside the container."

    .line 4255
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f7
    .catchall {:try_start_d4 .. :try_end_f7} :catchall_ff

    .line 4265
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_fb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_ff
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4266
    throw p0
.end method

.method public isUserRestricted(ILjava/lang/String;)Z
    .registers 3

    .line 3564
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    .line 3565
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User is restricted: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_25
    return p1
.end method

.method public killApplication(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 3471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3473
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_11

    if-eqz p0, :cond_d

    .line 3476
    :try_start_a
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 3481
    :catch_d
    :cond_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3482
    throw p0
.end method

.method public killApplication(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    .line 3463
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V
    .registers 6

    .line 8727
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_35

    const-string v0, "android"

    .line 8728
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    if-nez p2, :cond_15

    .line 8730
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 8731
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_31

    .line 8733
    :cond_15
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 8735
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 8738
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    goto :goto_67

    .line 8741
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    if-nez p2, :cond_48

    .line 8743
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 8744
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_64

    .line 8747
    :cond_48
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 8749
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 8751
    :goto_64
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    :cond_67
    :goto_67
    return-void
.end method

.method public notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 3654
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 6

    const-string p0, "PackageManager"

    if-eqz p2, :cond_41

    .line 1428
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result of install: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 1432
    iget-object v1, p1, Lcom/android/server/pm/PackageInstalledInfo;->mName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    iget-object p1, p1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnMsg:Ljava/lang/String;

    invoke-interface {p2, v1, v2, p1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_3b} :catch_3c

    goto :goto_41

    :catch_3c
    const-string p1, "Observer no longer exists."

    .line 1435
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return-void
.end method

.method public notifyInstallObserver(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_b

    .line 1415
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    goto :goto_13

    .line 1416
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    :goto_13
    if-eqz p1, :cond_20

    .line 1419
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/PackageInstalledInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    :cond_20
    return-void
.end method

.method public notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V
    .registers 4

    .line 9443
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V

    return-void
.end method

.method public notifyPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 3498
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPackageChangeObservers(Landroid/content/pm/PackageChangeEvent;)V
    .registers 7

    const-wide/32 v0, 0x40000

    :try_start_3
    const-string/jumbo v2, "notifyPackageChangeObservers"

    .line 3688
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3689
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_31

    .line 3690
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageChangeObserver;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2e

    .line 3692
    :try_start_1e
    invoke-interface {v3, p1}, Landroid/content/pm/IPackageChangeObserver;->onPackageChanged(Landroid/content/pm/PackageChangeEvent;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_2e

    goto :goto_12

    :catch_22
    move-exception v3

    :try_start_23
    const-string v4, "PackageManager"

    .line 3694
    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 3697
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 3699
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 3697
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 3699
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3700
    throw p0
.end method

.method public notifyPackageChanged(Ljava/lang/String;I)V
    .registers 3

    .line 3503
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 3508
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public final notifyPackageUseInternal(Ljava/lang/String;I)V
    .registers 6

    .line 3394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3395
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 3396
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-nez p0, :cond_11

    .line 3398
    monitor-exit v2

    return-void

    .line 3400
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3401
    monitor-exit v2

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onNewUserCreated(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    .line 5168
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->readPermissionStateForUser(I)Z

    move-result p2

    if-nez p2, :cond_17

    .line 5169
    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserCreated(I)V

    .line 5170
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 5171
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    :cond_17
    return-void
.end method

.method public overlaysInstallComplete(IIZ)V
    .registers 5

    const/4 v0, 0x0

    .line 9817
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZLjava/lang/Runnable;)V

    return-void
.end method

.method public overlaysInstallComplete(IIZLjava/lang/Runnable;)V
    .registers 6

    if-eqz p4, :cond_7

    .line 9822
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz p3, :cond_f

    .line 9829
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->overlaysInstallComplete(I)V

    goto :goto_1c

    .line 9831
    :cond_f
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p4, 0xa

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 9832
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1c
    return-void
.end method

.method public final parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .registers 15

    .line 9057
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v0

    .line 9058
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v1

    .line 9060
    invoke-static {v0, v1}, Lcom/android/server/pm/PerPackageReadTimeouts;->parseDigestersList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9062
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 9063
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    return-object p0

    .line 9066
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    .line 9067
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9068
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2e
    if-ge v4, v2, :cond_ae

    .line 9069
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PerPackageReadTimeouts;

    .line 9070
    iget-object v6, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 9071
    invoke-interface {p1, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-nez v6, :cond_40

    goto/16 :goto_ab

    .line 9079
    :cond_40
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_49

    goto :goto_ab

    .line 9087
    :cond_49
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 9088
    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v8

    iget-object v10, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v10, v10, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ab

    .line 9089
    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v8

    iget-object v10, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v10, v10, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_66

    goto :goto_ab

    .line 9096
    :cond_66
    iget-object v8, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    if-eqz v8, :cond_77

    .line 9097
    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    invoke-virtual {v7, v8}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v7

    if-nez v7, :cond_77

    goto :goto_ab

    .line 9105
    :cond_77
    array-length v7, p0

    move v8, v3

    :goto_79
    if-ge v8, v7, :cond_ab

    aget v9, p0, v8

    .line 9106
    invoke-interface {v6, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10

    if-nez v10, :cond_88

    goto :goto_a8

    .line 9109
    :cond_88
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    .line 9110
    new-instance v10, Landroid/os/incremental/PerUidReadTimeouts;

    invoke-direct {v10}, Landroid/os/incremental/PerUidReadTimeouts;-><init>()V

    .line 9111
    iput v9, v10, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 9112
    iget-object v9, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v11, v9, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    iput-wide v11, v10, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 9113
    iget-wide v11, v9, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    iput-wide v11, v10, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 9114
    iget-wide v11, v9, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    iput-wide v11, v10, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    .line 9115
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    :cond_ab
    :goto_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 9118
    :cond_ae
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/incremental/PerUidReadTimeouts;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/incremental/PerUidReadTimeouts;

    return-object p0
.end method

.method public performFstrimIfNeeded()V
    .registers 12

    const-string v0, "Only the system can request fstrim"

    .line 3349
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 3353
    :try_start_5
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_79

    const-string v1, "PackageManager"

    if-eqz v0, :cond_73

    const/4 v2, 0x0

    .line 3356
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 3357
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fstrim_mandatory_interval"

    const-wide/32 v5, 0xf731400

    .line 3356
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    if-lez v5, :cond_4b

    .line 3361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->lastMaintenance()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v3, v7, v3

    if-lez v3, :cond_4b

    .line 3364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No disk maintenance in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; running immediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    :cond_4b
    if-eqz v2, :cond_79

    .line 3369
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 3370
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v1}, Lcom/android/server/pm/DexOptHelper;->isDexOptDialogShown()Z

    move-result v1
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_59} :catch_79

    if-eqz v1, :cond_6f

    .line 3372
    :try_start_5b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 3373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10401ae

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3372
    invoke-interface {v1, p0, v6}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6f} :catch_6f

    .line 3379
    :catch_6f
    :cond_6f
    :try_start_6f
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->runMaintenance()V

    goto :goto_79

    :cond_73
    const-string/jumbo p0, "storageManager service unavailable!"

    .line 3382
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :cond_79
    :goto_79
    return-void
.end method

.method public postPreferredActivityChangedBroadcast(I)V
    .registers 4

    .line 3905
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 3328
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 3329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .line 3328
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final readPermissionStateForUser(I)Z
    .registers 4

    .line 5176
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionStateTEMP()V

    .line 5178
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->readPermissionStateForUserSyncLPr(I)V

    .line 5179
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP()V

    .line 5180
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 5181
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock",
            "mSnapshotLock"
        }
    .end annotation

    .line 1373
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    if-nez p1, :cond_8

    const/4 p1, -0x1

    goto :goto_c

    .line 1374
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result p1

    :goto_c
    move v5, p1

    .line 1375
    new-instance p1, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 1376
    new-instance v6, Lcom/android/server/pm/ComputerEngine;

    invoke-direct {v6, p1, p2}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    .line 1377
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    .line 1379
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    if-eqz v0, :cond_23

    .line 1380
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics;->rebuild(JJI)V

    :cond_23
    return-object v6
.end method

.method public recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .registers 2

    .line 9379
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p0}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->initialState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p0

    return-object p0
.end method

.method public final registerObservers(Z)V
    .registers 4

    .line 1816
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_9

    .line 1817
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1819
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    if-eqz v0, :cond_12

    .line 1820
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1822
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_1b

    .line 1823
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1825
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v0, :cond_24

    .line 1826
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1828
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz v0, :cond_2d

    .line 1829
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1831
    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    if-eqz v0, :cond_36

    .line 1832
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstantAppRegistry;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1834
    :cond_36
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v0, :cond_3f

    .line 1835
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1837
    :cond_3f
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v0, :cond_48

    .line 1838
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1840
    :cond_48
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    if-eqz v0, :cond_51

    .line 1841
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1843
    :cond_51
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_5a

    .line 1844
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_5a
    if-eqz p1, :cond_6c

    .line 1849
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    if-nez v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    :goto_69
    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    :cond_6c
    return-void
.end method

.method public removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V
    .registers 4

    .line 3613
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v0

    .line 3614
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    return-void
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 4

    .line 9565
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9567
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Installer;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result p0
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_9} :catch_c
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    goto :goto_11

    :catchall_a
    move-exception p0

    goto :goto_13

    :catch_c
    move-exception p0

    .line 9569
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 9571
    :goto_11
    monitor-exit v0

    return p0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_a

    throw p0
.end method

.method public removeEncUserDir(I)Z
    .registers 3

    .line 9551
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9553
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->removeEncUserDir(I)Z

    move-result p0
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_9} :catch_c
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    goto :goto_11

    :catchall_a
    move-exception p0

    goto :goto_13

    :catch_c
    move-exception p0

    .line 9555
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 9557
    :goto_11
    monitor-exit v0

    return p0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_a

    throw p0
.end method

.method public removeUnknownSourceApp(Ljava/lang/String;)V
    .registers 3

    .line 9799
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    if-nez v0, :cond_5

    return-void

    .line 9802
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UnknownSourceAppManager;->removeUnknownSourceApp(Ljava/lang/String;)V

    .line 9803
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    invoke-virtual {p0}, Lcom/android/server/pm/UnknownSourceAppManager;->writeUnknownPackageXmlAsync()V

    return-void
.end method

.method public requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 23

    .line 1510
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    invoke-static/range {p10 .. p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-wide/16 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move/from16 v5, p8

    .line 1515
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1521
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 1524
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1525
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    .line 1527
    :cond_32
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_36
    move-object v9, v1

    goto :goto_39

    :cond_38
    move-object v9, v2

    .line 1533
    :goto_39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6d

    .line 1539
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_6d

    const/4 v3, 0x0

    .line 1540
    array-length v1, v1

    :goto_54
    if-ge v3, v1, :cond_6d

    .line 1541
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    new-instance v5, Ljava/io/File;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_6d
    if-eqz p6, :cond_73

    .line 1546
    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v2

    :cond_73
    move-object v10, v2

    .line 1549
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p10

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1518
    :cond_89
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object v2, p2

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object v1, p0

    .line 1482
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1486
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    .line 1487
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p5, :cond_1c

    .line 1488
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v3

    move-object v7, v3

    goto :goto_1d

    :cond_1c
    move-object v7, v0

    .line 1491
    :goto_1d
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, p1

    .line 1492
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;

    move-object v0, v10

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p2

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3b
    move-object v4, p1

    .line 1483
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 24

    move-object v0, p0

    move-object/from16 v2, p1

    .line 3310
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v14, Landroid/content/pm/InstantAppRequest;

    iget-object v11, v2, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    iget-object v12, v2, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v13, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3315
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 3863
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_b7

    .line 3864
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isResetEnabledSettingsOnAppDataCleared()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_b7

    .line 3867
    :cond_16
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-nez v1, :cond_1f

    return-void

    .line 3871
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3872
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v3, v1, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V

    const/4 v4, 0x0

    move v5, v4

    .line 3877
    :goto_2b
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_43

    .line 3878
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_43
    move v5, v4

    .line 3880
    :goto_44
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5c

    .line 3881
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_5c
    move v5, v4

    .line 3883
    :goto_5d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_75

    .line 3884
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_75
    move v5, v4

    .line 3886
    :goto_76
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8e

    .line 3887
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 3889
    :cond_8e
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_95

    return-void

    :cond_95
    const/4 v0, 0x1

    new-array v3, v0, [I

    aput p2, v3, v4

    .line 3894
    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 3895
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 3898
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponents(ILjava/lang/String;Ljava/util/List;)V

    .line 3899
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_b7

    .line 3900
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b7
    :goto_b7
    return-void
.end method

.method public resolveUserIds(I)[I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 3430
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    goto :goto_10

    :cond_a
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    :goto_10
    return-object p0
.end method

.method public restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V
    .registers 4

    .line 3920
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 3924
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    return-void
.end method

.method public scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 5

    .line 1442
    iget-object v0, p1, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1443
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x18

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1445
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/InstallArgs;)V
    .registers 4

    .line 1449
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1450
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 5

    .line 1461
    iget-object v0, p1, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1d

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1465
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public schedulePruneUnusedStaticSharedLibraries(Z)V
    .registers 6

    .line 1454
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1455
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_10

    .line 1456
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getPruneUnusedSharedLibrariesDelay()J

    move-result-wide v2

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 1455
    :goto_12
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final scheduleWritePackageListLocked(I)V
    .registers 5

    .line 1607
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1608
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1609
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1610
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1611
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1c
    return-void
.end method

.method public scheduleWritePackageRestrictions(I)V
    .registers 7

    .line 1621
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_26

    .line 1623
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1624
    :try_start_9
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget v3, p1, v2

    .line 1625
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1627
    :cond_21
    monitor-exit v0

    goto :goto_3c

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw p0

    .line 1629
    :cond_26
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2f

    return-void

    .line 1632
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1633
    :try_start_32
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1634
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_4e

    .line 1636
    :goto_3c
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 1637
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4d
    return-void

    :catchall_4e
    move-exception p0

    .line 1634
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_8

    .line 1616
    :cond_4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1617
    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void
.end method

.method public scheduleWriteSettings()V
    .registers 5

    .line 1600
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1601
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1602
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    return-void
.end method

.method public final sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 6

    .line 3554
    new-instance v0, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    .line 3555
    iput-object p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 3556
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    const/4 p0, 0x1

    new-array p1, p0, [I

    const/4 v1, 0x0

    aput p3, p1, v1

    .line 3557
    iput-object p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    new-array p1, p0, [I

    aput p3, p1, v1

    .line 3558
    iput-object p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 3559
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 3560
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageRemovedInfo;->sendPackageRemovedBroadcasts(ZZ)V

    return-void
.end method

.method public sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[II)V
    .registers 22

    move-object v8, p0

    move-object v0, p1

    move-object v9, p2

    move-object/from16 v10, p6

    .line 3533
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 3536
    :cond_12
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const/16 v2, 0x3e8

    .line 3537
    invoke-interface {p1, p2, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3538
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3536
    invoke-virtual {v1, p1, v2, v10, v3}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v7

    .line 3539
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_4b

    .line 3541
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 3542
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;

    move/from16 v2, p4

    invoke-direct {v1, p0, v10, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4b
    return-void
.end method

.method public sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 16

    .line 3513
    invoke-interface {p3, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 3514
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    .line 3515
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 3516
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_17

    :cond_13
    new-array v5, v3, [I

    aput p4, v5, v2

    :goto_17
    move-object v7, v5

    if-eqz v1, :cond_1f

    new-array v1, v3, [I

    aput p4, v1, v2

    goto :goto_21

    .line 3517
    :cond_1f
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_21
    move-object v8, v1

    const/4 v5, 0x0

    .line 3519
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v9, p5

    .line 3518
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[II)V

    .line 3523
    new-instance p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 3524
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p3

    iput p3, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 3525
    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 3526
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    return-void
.end method

.method public sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    .line 3491
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;

    move-object v0, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    move-object v2, p2

    const/16 v1, 0x3e8

    .line 4681
    invoke-interface {p1, p2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_b

    return-void

    .line 4686
    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4688
    invoke-interface {p1, p2, v3, v1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1a

    .line 4689
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_1e

    :cond_1a
    new-array v6, v5, [I

    aput v3, v6, v4

    :goto_1e
    move-object v7, v6

    if-eqz v1, :cond_27

    new-array v5, v5, [I

    aput v3, v5, v4

    move-object v8, v5

    goto :goto_2a

    .line 4690
    :cond_27
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    move-object v8, v3

    .line 4691
    :goto_2a
    invoke-interface {p1, p2, v7, v1}, Lcom/android/server/pm/Computer;->getBroadcastAllowList(Ljava/lang/String;[IZ)Landroid/util/SparseArray;

    move-result-object v9

    move-object v1, p0

    .line 4693
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;

    move-object v0, v11

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendPackageChangedBroadcastEMPkgHndlr(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 9721
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-string v6, "EmergencyMode"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 9722
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 10

    .line 3984
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3985
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_29

    .line 3988
    :cond_d
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3989
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move v4, v0

    goto :goto_18

    :cond_17
    move v4, p2

    .line 3991
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 3992
    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 3993
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;IILandroid/content/ComponentName;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 9209
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public setDefaultBrowser(Ljava/lang/String;ZI)V
    .registers 4

    .line 9214
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(Ljava/lang/String;ZI)Z

    return-void
.end method

.method public setEnableRollbackCode(II)V
    .registers 5

    .line 3631
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3632
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3633
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3634
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 8635
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v11

    .line 8636
    :try_start_d
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 8637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    .line 8638
    invoke-interface {v13, v8}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    if-nez v14, :cond_1e

    const/4 v1, 0x0

    goto :goto_22

    .line 8640
    :cond_1e
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    :goto_22
    if-eqz v8, :cond_d3

    if-nez v1, :cond_28

    goto/16 :goto_d3

    .line 8646
    :cond_28
    invoke-interface {v14, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    if-eqz v2, :cond_3a

    .line 8648
    monitor-exit v11

    return v16

    .line 8651
    :cond_3a
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_af

    .line 8653
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_48
    :goto_48
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 8656
    invoke-interface {v13, v6, v1, v2}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    if-nez v2, :cond_5e

    goto :goto_48

    :cond_5e
    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    move-object v1, v13

    move-object v15, v6

    move/from16 v6, p1

    .line 8662
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6d

    goto :goto_48

    .line 8666
    :cond_6d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_72
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/VersionedPackage;

    .line 8668
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-nez v4, :cond_89

    goto :goto_72

    .line 8673
    :cond_89
    invoke-interface {v4, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 8674
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v4

    .line 8675
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/overlay/OverlayPaths;

    .line 8673
    invoke-virtual {v0, v4, v9}, Lcom/android/server/pm/PackageManagerService;->canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 8677
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 8678
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    .line 8680
    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_a9
    if-eqz v2, :cond_48

    .line 8685
    invoke-virtual {v12, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 8691
    :cond_af
    invoke-interface {v14, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/pm/PackageManagerService;->canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 8694
    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8697
    :cond_c0
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v1, v8, v7, v9, v12}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 8713
    monitor-exit v11
    :try_end_ca
    .catchall {:try_start_d .. :try_end_ca} :catchall_ec

    if-nez v7, :cond_cf

    .line 8718
    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/PackageManagerService;->maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V

    .line 8721
    :cond_cf
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    return v16

    :cond_d3
    :goto_d3
    :try_start_d3
    const-string v0, "PackageManager"

    .line 8642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 8643
    monitor-exit v11

    return v0

    :catchall_ec
    move-exception v0

    .line 8713
    monitor-exit v11
    :try_end_ee
    .catchall {:try_start_d3 .. :try_end_ee} :catchall_ec

    throw v0
.end method

.method public setEnabledSettingEMPkgHndlr(Ljava/util/ArrayList;IIILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9713
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9714
    new-instance v2, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v2, v1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 9716
    :cond_1e
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public final setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4609
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v0

    .line 4610
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4612
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2e

    if-eqz v0, :cond_15

    if-ne v0, v5, :cond_16

    :cond_15
    const/4 p5, 0x0

    .line 4619
    :cond_16
    invoke-virtual {p2, v0, p4, p5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    const/4 p3, 0x3

    if-eq v0, p3, :cond_1e

    if-ne v0, v3, :cond_2c

    :cond_1e
    const-string p3, "android.permission.SUSPEND_APPS"

    .line 4622
    invoke-virtual {p0, p3, v1, p4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_2c

    .line 4627
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 4628
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    :cond_2c
    move p1, v5

    goto :goto_6e

    .line 4633
    :cond_2e
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_6a

    if-eq v0, v5, :cond_65

    if-eq v0, v3, :cond_60

    .line 4645
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed setComponentEnabledSetting: component "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested an invalid new component state: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    goto :goto_6e

    .line 4639
    :cond_60
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_6e

    .line 4636
    :cond_65
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/PackageSetting;->enableComponentLPw(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_6e

    .line 4642
    :cond_6a
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result p1

    :goto_6e
    if-nez p1, :cond_71

    return v4

    :cond_71
    new-array p1, v5, [I

    aput p4, p1, v4

    .line 4655
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 4656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 4658
    :try_start_7c
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_83

    .line 4660
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_83
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4661
    throw p0
.end method

.method public final setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v15, p2

    .line 4273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-string/jumbo v6, "set enabled"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, v8

    move/from16 v3, p2

    .line 4276
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    if-nez p3, :cond_41

    .line 4281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_43

    :cond_41
    move-object/from16 v14, p3

    :goto_43
    const-string v1, ""

    const-string v2, "1000/system"

    .line 4285
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x2

    const/4 v12, 0x1

    if-eqz v2, :cond_64

    .line 4286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stackTrace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4289
    :cond_64
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_6c
    const/4 v10, 0x4

    const/4 v3, 0x3

    if-ge v2, v11, :cond_eb

    .line 4291
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v4

    if-eqz v4, :cond_9c

    if-eq v4, v12, :cond_9c

    if-eq v4, v13, :cond_9c

    if-eq v4, v3, :cond_9c

    if-ne v4, v10, :cond_85

    goto :goto_9c

    .line 4297
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid new component state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4300
    :cond_9c
    :goto_9c
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    const-string v4, "PackageManager"

    .line 4301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnabledSetting : userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4302
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cmp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " newState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingPackage = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4301
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_eb
    if-le v11, v12, :cond_19a

    .line 4308
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4309
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4310
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move/from16 v5, v16

    :goto_fe
    if-ge v5, v11, :cond_19a

    .line 4312
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4313
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4314
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v17

    if-eqz v17, :cond_171

    .line 4315
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    .line 4316
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_155

    .line 4320
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4324
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_131

    .line 4326
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17a

    .line 4327
    :cond_131
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v10, v12

    .line 4328
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v6

    and-int/2addr v6, v12

    if-ne v10, v6, :cond_13e

    goto :goto_17a

    .line 4329
    :cond_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A conflict of the DONT_KILL_APP flag between components in the package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4317
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is duplicated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4333
    :cond_171
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17e

    .line 4337
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_17a
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x4

    goto :goto_fe

    .line 4334
    :cond_17e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is duplicated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4342
    :cond_19a
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a6

    move v1, v12

    goto :goto_1a8

    :cond_1a6
    move/from16 v1, v16

    .line 4344
    :goto_1a8
    new-array v10, v11, [Z

    .line 4345
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([ZZ)V

    .line 4347
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v11}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4349
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 4350
    :try_start_1b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    move/from16 v5, v16

    :goto_1bb
    if-ge v5, v11, :cond_2fb

    .line 4353
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4354
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4355
    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d4

    move v12, v3

    move-object/from16 v20, v4

    move/from16 v21, v8

    goto/16 :goto_2f0

    .line 4360
    :cond_1d4
    invoke-interface {v4, v8}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 4359
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 4361
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v13}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-nez v12, :cond_260

    if-eqz v1, :cond_20d

    .line 4366
    invoke-interface {v4, v3, v8, v15}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v12

    if-eqz v12, :cond_1ed

    goto :goto_20d

    .line 4374
    :cond_1ed
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v12, v15, v13}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f6

    goto :goto_260

    .line 4375
    :cond_1f6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot disable a protected package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4367
    :cond_20d
    :goto_20d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to change component state; pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4368
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4370
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-nez v3, :cond_240

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_255

    .line 4371
    :cond_240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_255
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_260
    :goto_260
    if-nez v3, :cond_295

    .line 4380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v1

    if-eqz v1, :cond_280

    .line 4381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown component: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_291

    .line 4382
    :cond_280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_291
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_295
    const/16 v12, 0x7d0

    if-ne v8, v12, :cond_2e8

    .line 4385
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v12

    and-int/lit16 v12, v12, 0x100

    if-nez v12, :cond_2e8

    .line 4388
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v12

    move-object/from16 v20, v4

    .line 4389
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v4

    .line 4390
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v21

    if-nez v21, :cond_2c5

    move/from16 v21, v8

    const/4 v8, 0x3

    if-eq v12, v8, :cond_2bc

    if-eqz v12, :cond_2bc

    const/4 v8, 0x1

    if-ne v12, v8, :cond_2c5

    goto :goto_2bd

    :cond_2bc
    const/4 v8, 0x1

    :goto_2bd
    const/4 v12, 0x3

    if-eq v4, v12, :cond_2ed

    if-eqz v4, :cond_2ed

    if-ne v4, v8, :cond_2c5

    goto :goto_2ed

    .line 4401
    :cond_2c5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell cannot change component state for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e8
    move-object/from16 v20, v4

    move/from16 v21, v8

    const/4 v12, 0x3

    .line 4406
    :cond_2ed
    :goto_2ed
    invoke-interface {v9, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f0
    add-int/lit8 v5, v5, 0x1

    move v3, v12

    move-object/from16 v4, v20

    move/from16 v8, v21

    const/4 v12, 0x1

    const/4 v13, 0x2

    goto/16 :goto_1bb

    :cond_2fb
    move/from16 v3, v16

    :goto_2fd
    if-ge v3, v11, :cond_310

    .line 4413
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4414
    invoke-virtual {v0, v4, v15}, Lcom/android/server/pm/PackageManagerService;->isUpdateAllowedByMdm(Landroid/content/pm/PackageManager$ComponentEnabledSetting;I)Z

    move-result v4

    if-nez v4, :cond_30d

    .line 4416
    aput-boolean v16, v10, v3

    :cond_30d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2fd

    :cond_310
    move/from16 v3, v16

    :goto_312
    if-ge v3, v11, :cond_39d

    .line 4424
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4426
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v5

    if-nez v5, :cond_322

    goto/16 :goto_399

    .line 4430
    :cond_322
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4431
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_33d

    .line 4432
    sget-object v6, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 4433
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_335

    goto :goto_33d

    .line 4434
    :cond_335
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot disable a system-generated component"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4437
    :cond_33d
    :goto_33d
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_34f

    .line 4438
    invoke-static {v6, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_399

    :cond_34f
    if-eqz v6, :cond_379

    .line 4440
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v6

    const/16 v8, 0x10

    if-ge v6, v8, :cond_35a

    goto :goto_379

    .line 4441
    :cond_35a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_379
    :goto_379
    const-string v6, "PackageManager"

    .line 4444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed setComponentEnabledSetting: component class "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist in "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    aput-boolean v16, v10, v3

    :cond_399
    :goto_399
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_312

    .line 4450
    :cond_39d
    monitor-exit v2
    :try_end_39e
    .catchall {:try_start_1b5 .. :try_end_39e} :catchall_5f7

    move/from16 v1, v16

    :goto_3a0
    if-ge v1, v11, :cond_413

    .line 4454
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4456
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-eqz v3, :cond_3b0

    :cond_3ae
    :goto_3ae
    const/4 v12, 0x1

    goto :goto_40d

    .line 4458
    :cond_3b0
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4459
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v4

    .line 4460
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5

    .line 4461
    :try_start_3c1
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v6

    if-ne v6, v4, :cond_3cb

    .line 4463
    aput-boolean v16, v10, v1

    .line 4464
    monitor-exit v5

    goto :goto_3ae

    .line 4466
    :cond_3cb
    monitor-exit v5
    :try_end_3cc
    .catchall {:try_start_3c1 .. :try_end_3cc} :catchall_410

    .line 4470
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_3e0

    .line 4472
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v6

    if-eqz v6, :cond_3e0

    .line 4473
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_3e0

    const/4 v8, 0x1

    goto :goto_3e2

    :cond_3e0
    move/from16 v8, v16

    :goto_3e2
    if-eqz v8, :cond_3ae

    const/4 v12, 0x1

    if-eqz v4, :cond_3e9

    if-ne v4, v12, :cond_40d

    .line 4477
    :cond_3e9
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/InstallPackageHelper;->enableCompressedPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-nez v3, :cond_40d

    const-string v3, "PackageManager"

    .line 4478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed setApplicationEnabledSetting: failed to enable commpressed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4479
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4478
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    aput-boolean v16, v10, v1

    :cond_40d
    :goto_40d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a0

    :catchall_410
    move-exception v0

    .line 4466
    :try_start_411
    monitor-exit v5
    :try_end_412
    .catchall {:try_start_411 .. :try_end_412} :catchall_410

    throw v0

    :cond_413
    const/4 v12, 0x1

    .line 4486
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13, v11}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4487
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8

    .line 4488
    :try_start_41c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v18

    move/from16 v6, v16

    move/from16 v19, v6

    move/from16 v20, v19

    move/from16 v21, v20

    :goto_428
    if-ge v6, v11, :cond_572

    .line 4497
    aget-boolean v1, v10, v6

    if-nez v1, :cond_433

    move/from16 v24, v6

    move-object/from16 v23, v10

    goto :goto_45a

    .line 4501
    :cond_433
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4502
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4503
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v4, v22

    move-object/from16 v23, v10

    move-object v10, v5

    move/from16 v5, p2

    move/from16 v24, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_469

    :goto_45a
    move-object/from16 v26, v8

    move-object v3, v9

    move v5, v11

    move-object v7, v13

    move-object v2, v14

    move v4, v15

    move-object/from16 p3, v23

    const/16 v17, 0x2

    const/16 v23, 0x4

    goto/16 :goto_562

    .line 4509
    :cond_469
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_473

    move/from16 v19, v12

    .line 4516
    :cond_473
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    const-string v3, "com.sec.android.app.camera"

    .line 4517
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_497

    const-string v3, "com.vlingo.midas"

    .line 4518
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_488

    goto :goto_497

    :cond_488
    move/from16 v17, v2

    move-object/from16 v26, v8

    move-object v3, v9

    move-object v6, v10

    move v5, v11

    move-object v7, v13

    move-object v2, v14

    move v4, v15

    move-object/from16 p3, v23

    const/16 v23, 0x4

    goto :goto_4e2

    :cond_497
    :goto_497
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 4520
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v17, "PackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has changed "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " enabled to "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v25, ""
    :try_end_4c3
    .catchall {:try_start_41c .. :try_end_4c3} :catchall_5f0

    move-object/from16 v26, v8

    move v8, v3

    move-object v3, v9

    move v9, v4

    move-object v12, v10

    move-object/from16 v4, v23

    const/16 v23, 0x4

    move v10, v5

    move v5, v11

    move v11, v6

    move-object v6, v12

    move-object/from16 v12, v17

    move-object v7, v13

    const/16 v17, 0x2

    move-object v13, v2

    move-object v2, v14

    move-object/from16 v14, v25

    move-object/from16 p3, v4

    move v4, v15

    move/from16 v15, p2

    .line 4519
    :try_start_4df
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4525
    :goto_4e2
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1, v4}, Lcom/android/server/pm/PmHook;->enableDisableApplicationLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4529
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v1

    if-eqz v1, :cond_4f4

    .line 4530
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f5

    :cond_4f4
    move-object v1, v6

    .line 4533
    :goto_4f5
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_4ff

    const/4 v12, 0x1

    goto :goto_501

    :cond_4ff
    move/from16 v12, v16

    :goto_501
    if-eqz v12, :cond_530

    .line 4535
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v8, v4, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->get(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_50d

    const/4 v12, 0x1

    goto :goto_50f

    :cond_50d
    move/from16 v12, v16

    :goto_50f
    if-eqz v12, :cond_516

    .line 4538
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4540
    :cond_516
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51f

    .line 4541
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51f
    if-eqz v12, :cond_526

    .line 4544
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v1, v4, v6, v8}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->put(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 4546
    :cond_526
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v8

    invoke-virtual {v1, v4, v6, v8}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->putNewState(ILjava/lang/String;I)V

    goto :goto_556

    .line 4550
    :cond_530
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_559

    .line 4551
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_545

    .line 4552
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4553
    :cond_545
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54e

    .line 4554
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4556
    :cond_54e
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4559
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v1, v4, v6}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(ILjava/lang/String;)V

    :goto_556
    const/16 v20, 0x1

    goto :goto_562

    .line 4561
    :cond_559
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v8, v4, v6, v1}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x1

    const/16 v21, 0x1

    :goto_562
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v10, p3

    move-object v14, v2

    move-object v9, v3

    move v15, v4

    move v11, v5

    move-object v13, v7

    move-object/from16 v8, v26

    const/4 v12, 0x1

    move-object/from16 v7, p1

    goto/16 :goto_428

    :cond_572
    move-object/from16 v26, v8

    move-object v3, v9

    move-object v7, v13

    move v4, v15

    if-nez v20, :cond_57b

    .line 4567
    monitor-exit v26

    return-void

    :cond_57b
    if-eqz v19, :cond_581

    .line 4571
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    goto :goto_584

    .line 4573
    :cond_581
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :goto_584
    if-eqz v21, :cond_5a4

    .line 4576
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5a4

    .line 4581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_59c

    const-wide/16 v1, 0x3e8

    goto :goto_59e

    :cond_59c
    const-wide/16 v1, 0x2710

    .line 4584
    :goto_59e
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4587
    :cond_5a4
    monitor-exit v26
    :try_end_5a5
    .catchall {:try_start_4df .. :try_end_5a5} :catchall_5f5

    .line 4589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4591
    :try_start_5a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    move/from16 v11, v16

    .line 4592
    :goto_5af
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v11, v1, :cond_5e7

    .line 4593
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 4594
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    .line 4596
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    .line 4595
    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v15, v3

    move-object v3, v5

    move v4, v13

    move-object v5, v6

    move v6, v12

    move-object v12, v7

    move-object v7, v14

    .line 4597
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    :try_end_5e0
    .catchall {:try_start_5a9 .. :try_end_5e0} :catchall_5eb

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p2

    move-object v7, v12

    move-object v3, v15

    goto :goto_5af

    .line 4601
    :cond_5e7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5eb
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4602
    throw v0

    :catchall_5f0
    move-exception v0

    move-object/from16 v26, v8

    .line 4587
    :goto_5f3
    :try_start_5f3
    monitor-exit v26
    :try_end_5f4
    .catchall {:try_start_5f3 .. :try_end_5f4} :catchall_5f5

    throw v0

    :catchall_5f5
    move-exception v0

    goto :goto_5f3

    :catchall_5f7
    move-exception v0

    .line 4450
    :try_start_5f8
    monitor-exit v2
    :try_end_5f9
    .catchall {:try_start_5f8 .. :try_end_5f9} :catchall_5f7

    throw v0
.end method

.method public setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9122
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9123
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 9124
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9125
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9127
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 9128
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 9130
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_2d

    .line 9131
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    .line 9133
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .registers 5

    .line 9614
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 9615
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_15

    .line 9617
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const/4 p0, 0x1

    .line 9618
    monitor-exit v0

    return p0

    :cond_15
    const/4 p0, 0x0

    .line 9620
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 9622
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 5365
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 5366
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 5367
    invoke-interface {v7, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f5

    .line 5368
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_2b

    move v0, v12

    goto :goto_2c

    :cond_2b
    move v0, v13

    :goto_2c
    if-nez v0, :cond_64

    .line 5372
    invoke-interface {v7, v11}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_64

    .line 5373
    :cond_39
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5375
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "stop package"

    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, p4

    .line 5378
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5382
    invoke-interface/range {p1 .. p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_7a

    move-object v0, v15

    goto :goto_7e

    .line 5384
    :cond_7a
    invoke-interface {v14, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    :goto_7e
    if-eqz v14, :cond_f5

    .line 5386
    invoke-interface {v7, v14, v11, v10}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 5387
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v1

    if-eq v1, v9, :cond_f5

    .line 5388
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v7

    .line 5389
    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move v4, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/pm/PackageManagerService;IZZLjava/lang/String;)V

    invoke-virtual {v6, v15, v8, v11}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 5400
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_b3

    .line 5401
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    if-eqz v0, :cond_b1

    invoke-virtual {v0, v8}, Lcom/android/server/SpegService;->checkSpegState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    goto :goto_b2

    :cond_b1
    move v12, v13

    :goto_b2
    move v13, v12

    :cond_b3
    if-eqz v7, :cond_f2

    if-nez v13, :cond_f2

    .line 5406
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c2

    .line 5408
    invoke-virtual {v6, v8, v0, v10}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5410
    :cond_c2
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_f2

    if-nez v10, :cond_f2

    if-eqz v8, :cond_f2

    .line 5411
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 5412
    invoke-virtual {v0, v8}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 5413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monetized App "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " opened for first time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MONETIZED_APP_OPENED"

    .line 5414
    invoke-virtual {v6, v8, v0, v10}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5419
    :cond_f2
    invoke-virtual {v6, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_f5
    if-nez v9, :cond_101

    .line 5426
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v1, v6, v8, v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_101
    return-void
.end method

.method public setPlatformPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 10

    .line 9269
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 9271
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const-wide/16 v2, 0x0

    .line 9275
    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 9278
    iget-boolean p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-nez p2, :cond_63

    .line 9279
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9280
    const-class p1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 9281
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo p2, "system:ui"

    .line 9282
    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 9283
    iput p2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v1, 0x3

    .line 9284
    iput v1, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/16 v1, 0x1020

    .line 9285
    iput v1, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const v1, 0x1030226

    .line 9287
    iput v1, p1, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v1, 0x1

    .line 9288
    iput-boolean v1, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 9289
    iput-boolean v1, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/4 v1, 0x2

    .line 9290
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v1, 0xdb0

    .line 9291
    iput v1, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 9297
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9298
    iput p2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9299
    iput p2, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 9300
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 9301
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 9304
    :cond_63
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 9305
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_6b

    .line 9306
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    return-void

    :catchall_6b
    move-exception p0

    .line 9305
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .registers 8

    .line 5229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_f

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_1c

    .line 5233
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SUSPEND_APPS"

    const-string/jumbo v3, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5237
    :cond_1c
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 5238
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_2f

    goto :goto_4d

    .line 5241
    :cond_2f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isCoreApp()Z

    move-result p1

    if-eqz p1, :cond_44

    if-eqz v0, :cond_3c

    goto :goto_44

    .line 5242
    :cond_3c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system or phone callers can modify core apps"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    const/4 p1, 0x0

    .line 5245
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    :cond_4d
    :goto_4d
    return-void
.end method

.method public setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z
    .registers 15

    .line 5255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    if-eq v0, v3, :cond_11

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    if-nez v0, :cond_1e

    .line 5259
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SUSPEND_APPS"

    const-string/jumbo v5, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5263
    :cond_1e
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 5265
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_31

    goto :goto_84

    .line 5268
    :cond_31
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isCoreApp()Z

    move-result v3

    if-eqz v3, :cond_46

    if-eqz v0, :cond_3e

    goto :goto_46

    .line 5269
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system or phone callers can modify core apps"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5272
    :cond_46
    :goto_46
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-ne p1, p3, :cond_51

    return v1

    .line 5276
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_67

    .line 5280
    :try_start_57
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    const/high16 v6, 0x400000

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_7f

    .line 5298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 5291
    :cond_67
    :try_start_67
    new-instance p1, Landroid/content/pm/VersionedPackage;

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 5293
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p2

    const/4 p3, 0x4

    .line 5291
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_7b
    .catchall {:try_start_67 .. :try_end_7b} :catchall_7f

    .line 5298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_7f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5299
    throw p0

    :cond_84
    :goto_84
    return v1
.end method

.method public setUpCustomResolverActivity(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    .line 9238
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    const/4 v1, 0x1

    .line 9239
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    const-wide/16 v3, 0x0

    .line 9243
    sget-object v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 9247
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9248
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 9249
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 9250
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 9251
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 p2, 0x0

    iput p2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/16 v2, 0x120

    .line 9252
    iput v2, p1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 9254
    iput p2, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 9255
    iput-boolean v1, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 9256
    iput-boolean v1, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 9257
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9258
    iput p2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9259
    iput p2, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 9260
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 9261
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 9262
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    const-string p1, "PackageManager"

    .line 9263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing default ResolverActivity with custom activity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9265
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_4 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public final setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V
    .registers 5

    const-string v0, "PackageManager"

    if-nez p1, :cond_14

    .line 3435
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p1, :cond_d

    const-string p1, "Clear ephemeral installer activity"

    .line 3436
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 p1, 0x0

    .line 3438
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3439
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    return-void

    .line 3443
    :cond_14
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_30

    .line 3444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ephemeral installer activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3444
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_30
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3449
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v0, v0, 0x120

    iput v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v0, 0x1

    .line 3451
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3452
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 3453
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3454
    iput v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 3455
    iput v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 3456
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    const p1, 0x588000

    .line 3457
    iput p1, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 3459
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    return-void
.end method

.method public shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z
    .registers 3

    .line 9137
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 9138
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 9139
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public shutdown()V
    .registers 4

    .line 3409
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0}, Lcom/android/server/pm/CompilerStats;->writeNow()V

    .line 3410
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->writePackageDexUsageNow()V

    .line 3411
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog;->writeNow()V

    .line 3413
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 3414
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    .line 3416
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    .line 3417
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 3418
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3419
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettings()V

    .line 3421
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_4f

    .line 3423
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 3424
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 3425
    invoke-virtual {p0}, Landroid/content/pm/ShortcutServiceInternal;->shutdown()V

    return-void

    :catchall_4f
    move-exception p0

    .line 3421
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public snapshotComputer()Lcom/android/server/pm/Computer;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1331
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1334
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0

    .line 1337
    :cond_b
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1338
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v1, :cond_26

    .line 1340
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_26

    .line 1341
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0

    .line 1344
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1346
    :try_start_29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Computer;

    .line 1347
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eqz v3, :cond_41

    .line 1353
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v5

    if-ne v5, v4, :cond_41

    .line 1354
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1357
    :cond_41
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_59

    .line 1361
    :try_start_44
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1364
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 1365
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1366
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_56

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_59

    return-object p0

    :catchall_56
    move-exception p0

    .line 1367
    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw p0

    :catchall_59
    move-exception p0

    .line 1368
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public systemReady()V
    .registers 10

    const-string v0, "Only the system can claim the system is ready"

    .line 4746
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4749
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4750
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 4751
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_16
    if-ltz v1, :cond_26

    .line 4752
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 4753
    invoke-static {v0, v4}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 4755
    :cond_26
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 4757
    :cond_28
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 4758
    new-instance v1, Lcom/android/server/pm/PackageManagerService$3;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/server/pm/PackageManagerService$3;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 4771
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_ephemeral_feature"

    .line 4772
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 4771
    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4774
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "instant_apps_enabled"

    .line 4775
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4774
    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4776
    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4779
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_8c

    .line 4780
    const-class v1, Lcom/android/server/SpegService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SpegService;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/SpegService;

    .line 4782
    new-instance v1, Lcom/android/server/pm/PackageManagerService$4;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/server/pm/PackageManagerService$4;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 4800
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioned"

    .line 4801
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4800
    invoke-virtual {v0, v4, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4802
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "user_setup_complete"

    .line 4803
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4802
    invoke-virtual {v0, v4, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4804
    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4809
    :cond_8c
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v0, :cond_9b

    .line 4810
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSProtect:Lcom/android/server/pm/SProtect;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SProtect;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 4814
    :cond_9b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->onSystemReady(Landroid/content/pm/PackageManagerInternal;)V

    .line 4818
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4819
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4818
    invoke-static {v0, v6, v1}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4821
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->disableSkuSpecificApps()V

    .line 4824
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4825
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "compatibility_mode"

    .line 4824
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_c6

    move v0, v3

    goto :goto_c7

    :cond_c6
    move v0, v6

    .line 4827
    :goto_c7
    invoke-static {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setCompatibilityModeEnabled(Z)V

    .line 4833
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 4834
    :try_start_cd
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;

    move-result-object v1

    move v4, v6

    .line 4835
    :goto_d6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_ee

    .line 4836
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d6

    .line 4839
    :cond_ee
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyLPw()V

    .line 4841
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_cd .. :try_end_f6} :catchall_39b

    .line 4843
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->systemReady()V

    .line 4846
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->needsOmcOrTssInit()Z

    move-result v0

    if-eqz v0, :cond_177

    :cond_109
    const-string/jumbo v0, "persist.omc.sales_code"

    .line 4848
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4849
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11d

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 4850
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4852
    :cond_11d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_177

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 4853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.verizon.mips.services"

    .line 4854
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.vzw.hss.myverizon"

    .line 4855
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.verizon.pushtotalkplus"

    .line 4856
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4858
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 4859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_14d
    :cond_14d
    :goto_14d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_177

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4861
    :try_start_159
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_14d

    .line 4863
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_14d

    const-string v8, "android:system_alert_window"

    .line 4864
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v8, v5, v4, v6}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_176} :catch_14d

    goto :goto_14d

    .line 4875
    :cond_177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->needsOmcOrTssInit()Z

    move-result v0

    if-eqz v0, :cond_1f1

    :cond_185
    const-string/jumbo v0, "persist.omc.sales_code"

    .line 4877
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4878
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_199

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 4879
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4881
    :cond_199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f1

    const-string v1, "DSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1af

    const-string v1, "DSG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 4882
    :cond_1af
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.dish.wireless.activation"

    .line 4883
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4885
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 4886
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1c7
    :cond_1c7
    :goto_1c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4888
    :try_start_1d3
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1c7

    .line 4890
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_1c7

    const-string v8, "android:system_alert_window"

    .line 4891
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v8, v5, v4, v6}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f0} :catch_1c7

    goto :goto_1c7

    .line 4902
    :cond_1f1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_200

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_1fe

    goto :goto_200

    :cond_1fe
    move v0, v6

    goto :goto_201

    :cond_200
    :goto_200
    move v0, v3

    .line 4903
    :goto_201
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->needsOmcOrTssInit()Z

    move-result v1

    if-nez v0, :cond_20b

    if-eqz v1, :cond_247

    .line 4905
    :cond_20b
    new-instance v4, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4906
    invoke-static {v5}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->createPmServiceProxy(Landroid/content/Context;)Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;-><init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;)V

    if-nez v1, :cond_21c

    if-eqz v0, :cond_21c

    move v0, v3

    goto :goto_21d

    :cond_21c
    move v0, v6

    :goto_21d
    const/4 v1, 0x5

    .line 4908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set up omc permissions (grantOnlyFirstBootOrUpgrade: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4911
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    .line 4910
    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->grantDefaultPermissions([IZ)V

    .line 4912
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->writeTssSettings()V

    .line 4917
    :cond_247
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 4918
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4920
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->systemReady()V

    .line 4921
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageDexOptimizer;->systemReady()V

    .line 4924
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 4925
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 4927
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onSystemReady()V

    .line 4930
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_296

    .line 4931
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

    .line 4932
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

    .line 4933
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4934
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const-string v5, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    invoke-virtual {v1, v4, v0, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4955
    :cond_296
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 4956
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v6}, Lcom/android/server/pm/UserManagerInternal;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    .line 4960
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v6

    :goto_2a7
    if-ge v4, v3, :cond_2c0

    .line 4962
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4963
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_2bd

    .line 4964
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    :cond_2bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a7

    .line 4969
    :cond_2c0
    array-length v1, v0

    move v3, v6

    :goto_2c2
    if-ge v3, v1, :cond_2ce

    aget v4, v0, v3

    .line 4970
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v5, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c2

    .line 4972
    :cond_2ce
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    if-ne v0, v1, :cond_2d7

    .line 4976
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->scheduleReadDefaultPermissionExceptions()V

    .line 4979
    :cond_2d7
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_2e4

    .line 4980
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->initializeSettingsForMonetization(ZZ)V

    .line 4983
    :cond_2e4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    if-eqz v0, :cond_2f9

    .line 4984
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$6;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4993
    :cond_2f9
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 4994
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4995
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerService$7;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5022
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/pm/ModuleInfoProvider;->systemReady()V

    .line 5027
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->restoreAndApplyStagedSessionIfNeeded()V

    .line 5029
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    const-string/jumbo v0, "package_manager_service"

    .line 5032
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 5033
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 5032
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 5042
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService;->systemReady()V

    .line 5045
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 5047
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackageInterceptor:Lcom/android/server/pm/FrozenPackageInterceptor;

    if-eqz v0, :cond_33c

    .line 5048
    invoke-virtual {v0}, Lcom/android/server/pm/FrozenPackageInterceptor;->registerListeners()V

    .line 5050
    :cond_33c
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    if-eqz v0, :cond_34e

    .line 5051
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    if-eqz v0, :cond_34e

    .line 5052
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V

    .line 5053
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->registerContentObserverForGoogleControlCore(Landroid/os/Handler;)V

    .line 5057
    :cond_34e
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_UNKNOWN_SOURCE_ENABLED:Z

    if-eqz v0, :cond_38c

    .line 5058
    new-instance v0, Lcom/android/server/pm/UnknownSourceAppManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/pm/UnknownSourceAppManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    .line 5059
    invoke-virtual {v0}, Lcom/android/server/pm/UnknownSourceAppManager;->loadListFromFile()Z

    move-result v0

    if-eqz v0, :cond_36c

    .line 5060
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UnknownSourceAppManager;->pruneUnknownSourcePackages(Ljava/util/function/Function;)V

    goto :goto_387

    .line 5062
    :cond_36c
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-nez v0, :cond_387

    .line 5063
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    const-wide/32 v2, 0x402000

    .line 5064
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 5063
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UnknownSourceAppManager;->buildListFromInstalledPackages(Ljava/util/List;Ljava/util/function/Function;)V

    .line 5067
    :cond_387
    :goto_387
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUnknownSourceAppManager:Lcom/android/server/pm/UnknownSourceAppManager;

    invoke-virtual {v0}, Lcom/android/server/pm/UnknownSourceAppManager;->writeUnknownPackageXmlSync()V

    .line 5071
    :cond_38c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->setPackageScanStarted(Landroid/content/Context;Z)V

    .line 5074
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->onSystemReady(Landroid/content/Context;)V

    return-void

    :catchall_39b
    move-exception p0

    .line 4841
    :try_start_39c
    monitor-exit v0
    :try_end_39d
    .catchall {:try_start_39c .. :try_end_39d} :catchall_39b

    throw p0
.end method

.method public unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 6

    .line 3607
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3608
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 3609
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    if-eqz p1, :cond_134

    .line 4130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4131
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4133
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 4135
    invoke-interface {v2, v1, v3, v4, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 4136
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    const-string v4, "The calling UID ("

    if-eqz v3, :cond_11a

    .line 4141
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040378

    .line 4142
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4143
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040379

    .line 4144
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_43

    .line 4146
    :cond_3b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "There is no package defined as allowed to change a component\'s label or icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    const-wide/32 v6, 0x100000

    .line 4150
    invoke-interface {v2, v3, v6, v7, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 4152
    invoke-interface {v2, v5, v6, v7, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    const/4 v6, -0x1

    if-eq v3, v6, :cond_57

    .line 4154
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_5f

    :cond_57
    if-eq v5, v6, :cond_100

    .line 4155
    invoke-static {v0, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 4160
    :cond_5f
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 4161
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_e9

    .line 4162
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 4163
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 4168
    :cond_7b
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->componentExists(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 4172
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 4173
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_92

    move-object v3, v2

    goto :goto_96

    .line 4175
    :cond_92
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :goto_96
    if-nez v0, :cond_9a

    move-object v0, v2

    goto :goto_9e

    .line 4176
    :cond_9a
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 4178
    :goto_9e
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 4179
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    return-void

    .line 4184
    :cond_ab
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 4188
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, v1, p1}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 4190
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_cc

    .line 4191
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_cc
    return-void

    .line 4169
    :cond_cd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Component "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4164
    :cond_e9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Changing the label is not allowed for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4156
    :cond_100
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is not allowed to change a component\'s label or icon"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4137
    :cond_11a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") does not match the target UID"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4127
    :cond_134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a component"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateInstantAppInstallerLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2771
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    .line 2772
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2773
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    .line 2776
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public updatePackagesIfNeeded()V
    .registers 1

    .line 3390
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper;->performPackageDexOptUpgradeIfNeeded()V

    return-void
.end method

.method public updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 3

    .line 3273
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ChangedPackagesTracker;->updateSequenceNumber(Ljava/lang/String;[I)V

    return-void
.end method

.method public final validateRoleFile()V
    .registers 10

    .line 2732
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_4f

    aget v3, p0, v2

    :try_start_d
    const-string v4, "com.android.role.persistence.RolesPersistenceImpl"

    .line 2734
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "readForUser"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 2735
    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2736
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_30} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_31

    goto :goto_4c

    :catch_31
    move-exception v3

    const-string v4, "Failed to use RolesPersistence class."

    .line 2742
    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 2743
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    :catch_3b
    const-string v4, "Failed to read roles.xml. Initiate the files."

    .line 2738
    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    const-string/jumbo v4, "runtime-permissions.xml"

    .line 2739
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerSamsungUtils;->deletePermissionApexFile(ILjava/lang/String;)V

    const-string/jumbo v4, "roles.xml"

    .line 2740
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerSamsungUtils;->deletePermissionApexFile(ILjava/lang/String;)V

    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_4f
    return-void
.end method

.method public verifyHoldLockToken(Landroid/os/IBinder;)V
    .registers 4

    .line 9010
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_34

    if-eqz p1, :cond_2b

    .line 9018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "holdLock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-ne p1, p0, :cond_23

    return-void

    .line 9019
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid holdLock() token"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9015
    :cond_2b
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "null holdLockToken"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9011
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "holdLock requires a debuggable build"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public waitForAppDataPrepared()V
    .registers 9

    const-string/jumbo v0, "prepackageinstaller"

    .line 4704
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v1, :cond_14

    .line 4705
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibilityIfNeeded(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    .line 4708
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4710
    :try_start_18
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 4713
    invoke-static {}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 4714
    new-instance v3, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    goto :goto_40

    .line 4717
    :cond_33
    new-instance v3, Lcom/samsung/android/server/pm/install/PrePackageInstaller;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/server/pm/install/PrePackageInstaller;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V

    .line 4720
    :goto_40
    invoke-virtual {v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->runPrePackageInstaller()Ljava/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string/jumbo v4, "wait for pre-installing"

    .line 4723
    invoke-static {v3, v4}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_18 .. :try_end_4c} :catchall_98

    .line 4727
    :cond_4c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 4729
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v0, :cond_68

    .line 4730
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4731
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 4730
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->clearNoninstalledDataApps(Lcom/android/server/utils/WatchedArrayMap;[I)V

    .line 4734
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install took "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4735
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrePackageInstaller"

    .line 4734
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_8e

    return-void

    :cond_8e
    const-string/jumbo v1, "wait for prepareAppData"

    .line 4741
    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4742
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    return-void

    :catchall_98
    move-exception v1

    .line 4727
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 4729
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v0, :cond_b5

    .line 4730
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4731
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    .line 4730
    invoke-virtual {v0, v2, p0}, Lcom/android/server/pm/InstallPackageHelper;->clearNoninstalledDataApps(Lcom/android/server/utils/WatchedArrayMap;[I)V

    .line 4733
    :cond_b5
    throw v1
.end method

.method public writePackageList(I)V
    .registers 5

    .line 1665
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1668
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public writePendingRestrictions()V
    .registers 6

    .line 1642
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1644
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_34

    .line 1645
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1646
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_13

    .line 1648
    :cond_29
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 1649
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_31

    .line 1650
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    return-void

    :catchall_31
    move-exception p0

    .line 1649
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0

    :catchall_34
    move-exception p0

    .line 1650
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public writeSettings()V
    .registers 4

    .line 1654
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 1658
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_22

    .line 1659
    :try_start_17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 1660
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1f

    .line 1661
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_22

    return-void

    :catchall_1f
    move-exception p0

    .line 1660
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0

    :catchall_22
    move-exception p0

    .line 1661
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public writeSettingsLPrTEMP()V
    .registers 3

    .line 9004
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 9005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;)V

    return-void
.end method
