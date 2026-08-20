.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$KeySetToValueMap;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field public static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field public static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field public static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field public static final ATTR_DISTRACTION_FLAGS:Ljava/lang/String; = "distraction_flags"

.field public static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field public static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field public static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field public static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field public static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field public static final ATTR_FIRST_INSTALL_TIME:Ljava/lang/String; = "first-install-time"

.field public static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field public static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field public static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field public static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field public static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field public static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field public static final ATTR_SPLASH_SCREEN_THEME:Ljava/lang/String; = "splash-screen-theme"

.field public static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field public static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field public static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field public static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_UNINSTALL_REASON:Ljava/lang/String; = "uninstall-reason"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field public static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field public static final DEBUG_KERNEL:Z = false

.field public static final DEBUG_MU:Z = false

.field public static final DEBUG_PARSER:Z = false

.field public static final DEBUG_STOPPED:Z = false

.field public static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field public static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x10000000

.field public static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x8000000

.field public static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x40000000

.field public static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field public static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field public static final TAG:Ljava/lang/String; = "PackageSettings"

.field public static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field public static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field public static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field public static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field public static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field public static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field public static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field public static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field public static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field public static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field public static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field public static final TAG_MIME_GROUP:Ljava/lang/String; = "mime-group"

.field public static final TAG_MIME_TYPE:Ljava/lang/String; = "mime-type"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field public static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field public static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field public static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field public static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field public static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field public static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_SUSPENDED_DIALOG_INFO:Ljava/lang/String; = "suspended-dialog-info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_SUSPEND_PARAMS:Ljava/lang/String; = "suspend-params"

.field public static final TAG_USES_SDK_LIB:Ljava/lang/String; = "uses-sdk-lib"

.field public static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field public static final TAG_VERSION:Ljava/lang/String; = "version"


# instance fields
.field public final mAppIds:Lcom/android/server/pm/AppIdSettingMap;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mBackup2SettingsFilename:Ljava/io/File;

.field public final mBackupSettingsFilename:Ljava/io/File;

.field public final mBackupStoppedPackagesFilename:Ljava/io/File;

.field public final mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field public final mKernelMappingFilename:Ljava/io/File;

.field public final mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field public final mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

.field public final mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPackageListFilename:Ljava/io/File;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
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
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPastSignatures:Lcom/android/server/utils/WatchedArrayList;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingPackages:Lcom/android/server/utils/WatchedArrayList;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final mReadMessages:Ljava/lang/StringBuilder;

.field public final mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mSettingsFilename:Ljava/io/File;

.field public final mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/Settings;",
            ">;"
        }
    .end annotation
.end field

.field public final mStoppedPackagesFilename:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field public final mVersion:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$EiksG317AcTYYvdTqdyrQzhweu4(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/Settings;->lambda$new$2(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_1iQxCUkiPLV4436LEhCEIgMp_o(Lcom/android/server/pm/PackageSetting;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/Settings;->lambda$new$1(Lcom/android/server/pm/PackageSetting;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJtCFwDbggk3nS0VgsEGaHap_gc(Lcom/android/server/pm/PackageSetting;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/Settings;->lambda$new$0(Lcom/android/server/pm/PackageSetting;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAmkmcgaY_j80FuENyprLfRyA98(Lcom/android/server/pm/Settings;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->lambda$pruneSharedUsersLPw$3(Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/Settings;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionDataProvider(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimePermissionsPersistence(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/Settings;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 30

    const/16 v0, 0x1e

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    .line 4621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v5, "SYSTEM"

    aput-object v5, v1, v2

    const/4 v5, 0x2

    .line 4622
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v7, "DEBUGGABLE"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const/4 v7, 0x4

    .line 4623
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    const-string v9, "HAS_CODE"

    const/4 v10, 0x5

    aput-object v9, v1, v10

    const/16 v9, 0x8

    .line 4624
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v1, v12

    const-string v13, "PERSISTENT"

    const/4 v14, 0x7

    aput-object v13, v1, v14

    const/16 v13, 0x10

    .line 4625
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v9

    const-string v16, "FACTORY_TEST"

    const/16 v17, 0x9

    aput-object v16, v1, v17

    const/16 v16, 0x20

    .line 4626
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0xa

    aput-object v18, v1, v19

    const-string v20, "ALLOW_TASK_REPARENTING"

    const/16 v21, 0xb

    aput-object v20, v1, v21

    const/16 v20, 0x40

    .line 4627
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v22, 0xc

    aput-object v20, v1, v22

    const-string v23, "ALLOW_CLEAR_USER_DATA"

    const/16 v24, 0xd

    aput-object v23, v1, v24

    const/16 v23, 0x80

    .line 4628
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v25, 0xe

    aput-object v23, v1, v25

    const-string v26, "UPDATED_SYSTEM_APP"

    const/16 v27, 0xf

    aput-object v26, v1, v27

    const/16 v26, 0x100

    .line 4629
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v1, v13

    const/16 v28, 0x11

    const-string v29, "TEST_ONLY"

    aput-object v29, v1, v28

    const/16 v28, 0x4000

    .line 4630
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x12

    aput-object v28, v1, v29

    const/16 v28, 0x13

    const-string v29, "VM_SAFE_MODE"

    aput-object v29, v1, v28

    const v28, 0x8000

    .line 4631
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x14

    aput-object v28, v1, v29

    const/16 v28, 0x15

    const-string v29, "ALLOW_BACKUP"

    aput-object v29, v1, v28

    const/high16 v28, 0x10000

    .line 4632
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x16

    aput-object v28, v1, v29

    const/16 v28, 0x17

    const-string v29, "KILL_AFTER_RESTORE"

    aput-object v29, v1, v28

    const/high16 v28, 0x20000

    .line 4633
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x18

    aput-object v28, v1, v29

    const/16 v28, 0x19

    const-string v29, "RESTORE_ANY_VERSION"

    aput-object v29, v1, v28

    const/high16 v28, 0x40000

    .line 4634
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1a

    aput-object v28, v1, v29

    const/16 v28, 0x1b

    const-string v29, "EXTERNAL_STORAGE"

    aput-object v29, v1, v28

    const/high16 v28, 0x100000

    .line 4635
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1c

    aput-object v28, v1, v29

    const/16 v28, 0x1d

    const-string v29, "LARGE_HEAP"

    aput-object v29, v1, v28

    sput-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const/16 v1, 0x30

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v28, 0x400

    .line 4639
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v1, v4

    const-string v4, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v4, v1, v2

    const/16 v2, 0x1000

    .line 4640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v2, v1, v8

    const/16 v2, 0x800

    .line 4641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v2, v1, v10

    const/high16 v2, 0x8000000

    .line 4642
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v2, v1, v14

    const/high16 v2, 0x20000000

    .line 4643
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v2, v1, v17

    const/16 v2, 0x2000

    .line 4644
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v19

    const-string v2, "BACKUP_IN_FOREGROUND"

    aput-object v2, v1, v21

    aput-object v6, v1, v22

    const-string v2, "CANT_SAVE_STATE"

    aput-object v2, v1, v24

    aput-object v18, v1, v25

    const-string v2, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v2, v1, v27

    aput-object v20, v1, v13

    const/16 v2, 0x11

    const-string v4, "DIRECT_BOOT_AWARE"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v15, v1, v2

    const/16 v2, 0x13

    const-string v4, "HAS_DOMAIN_URLS"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "HIDDEN"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    aput-object v23, v1, v2

    const/16 v2, 0x17

    const-string v3, "EPHEMERAL"

    aput-object v3, v1, v2

    const v2, 0x8000

    .line 4651
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const/16 v2, 0x19

    const-string v3, "ISOLATED_SPLIT_LOADING"

    aput-object v3, v1, v2

    const/high16 v2, 0x20000

    .line 4652
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const/16 v2, 0x1b

    const-string v3, "OEM"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v26, v1, v2

    const/16 v2, 0x1d

    const-string v3, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v3, v1, v2

    aput-object v11, v1, v0

    const/16 v0, 0x1f

    const-string v2, "PRIVILEGED"

    aput-object v2, v1, v0

    const/16 v0, 0x200

    .line 4655
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v16

    const/16 v0, 0x21

    const-string v2, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v2, v1, v0

    const/16 v0, 0x4000

    .line 4656
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const/16 v0, 0x23

    const-string v2, "STATIC_SHARED_LIBRARY"

    aput-object v2, v1, v0

    const/high16 v0, 0x40000

    .line 4657
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const/16 v0, 0x25

    const-string v2, "VENDOR"

    aput-object v2, v1, v0

    const/high16 v0, 0x80000

    .line 4658
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const/16 v0, 0x27

    const-string v2, "PRODUCT"

    aput-object v2, v1, v0

    const/high16 v0, 0x200000

    .line 4659
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const/16 v0, 0x29

    const-string v2, "SYSTEM_EXT"

    aput-object v2, v1, v0

    const/high16 v0, 0x10000

    .line 4660
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const/16 v0, 0x2b

    const-string v2, "VIRTUAL_PRELOAD"

    aput-object v2, v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 4661
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const/16 v0, 0x2d

    const-string v2, "ODM"

    aput-object v2, v1, v0

    const/high16 v0, -0x80000000

    .line 4662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const/16 v0, 0x2f

    const-string v2, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 713
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v2, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v2}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 427
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 432
    new-instance v3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 442
    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v4}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 486
    new-instance v5, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v5}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v5, v0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 492
    new-instance v6, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 497
    new-instance v7, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v7}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v7, v0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 501
    new-instance v8, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v8}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 507
    new-instance v9, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v9}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 510
    new-instance v10, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v10}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    .line 518
    new-instance v11, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v11}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v11, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 523
    new-instance v12, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v12}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    .line 529
    new-instance v13, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v13}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 533
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 536
    new-instance v14, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    new-instance v15, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    move-object/from16 v16, v12

    new-instance v12, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;)V

    move-object/from16 v17, v13

    new-instance v13, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v13}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v18, v11

    new-instance v11, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v19, v10

    new-instance v10, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v15, v12, v13, v11, v10}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;-><init>(Ljava/util/function/Supplier;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    new-instance v10, Lcom/samsung/android/server/pm/MetaDataHelper;

    invoke-direct {v10}, Lcom/samsung/android/server/pm/MetaDataHelper;-><init>()V

    .line 542
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v11

    invoke-direct {v14, v15, v10, v11}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;-><init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V

    iput-object v14, v0, Lcom/android/server/pm/Settings;->mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    .line 551
    new-instance v10, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v10}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 571
    new-instance v11, Lcom/android/server/pm/Settings$1;

    invoke-direct {v11, v0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v11, v0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 714
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v11}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v11, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 715
    new-instance v12, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v12}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 716
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v12}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 717
    new-instance v12, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v12}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 718
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v12}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/utils/WatchedArraySet;

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 719
    new-instance v12, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v12}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 720
    new-instance v12, Lcom/android/server/pm/KeySetManagerService;

    iget-object v13, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v12, v13, v11}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    const/4 v11, 0x0

    .line 726
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 727
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 728
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 729
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 730
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 731
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    .line 732
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 733
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 734
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 735
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 737
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v12, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 739
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v12}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 740
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 741
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 742
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 743
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 745
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v6, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 747
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-static {v7, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    .line 749
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v2}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 750
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {v2}, Lcom/android/server/pm/AppIdSettingMap;->snapshot()Lcom/android/server/pm/AppIdSettingMap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 751
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-static {v9, v2}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    .line 753
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v3, v19

    invoke-static {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 755
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 756
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot(Lcom/android/server/utils/WatchedSparseIntArray;)V

    .line 757
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 759
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-static {v10, v2}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    .line 761
    iput-object v11, v0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 763
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 764
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iput-object v1, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 767
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;-><init>(Lcom/android/server/pm/Settings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .registers 13

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 427
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 432
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 442
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 486
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 492
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 497
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 501
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 507
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 510
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    .line 518
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 523
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    .line 529
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 536
    new-instance v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    new-instance v1, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    new-instance v2, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;)V

    new-instance v3, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;-><init>(Ljava/util/function/Supplier;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    new-instance v2, Lcom/samsung/android/server/pm/MetaDataHelper;

    invoke-direct {v2}, Lcom/samsung/android/server/pm/MetaDataHelper;-><init>()V

    .line 542
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;-><init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    .line 551
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 571
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 655
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 656
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 658
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 659
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 661
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 662
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 665
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 667
    iput-object p5, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 668
    iput-object p6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 669
    new-instance p5, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p5}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 670
    new-instance p5, Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-direct {p5, p6}, Lcom/android/server/pm/permission/LegacyPermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 671
    new-instance p5, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance p6, Lcom/android/server/pm/Settings$3;

    invoke-direct {p6, p0}, Lcom/android/server/pm/Settings$3;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-direct {p5, p2, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Ljava/util/function/Consumer;)V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 679
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 681
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 682
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 683
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x1fd

    const/4 p5, -0x1

    invoke-static {p1, p3, p5, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 687
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 688
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 689
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-backup2.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    .line 690
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.list"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 p3, 0x1a0

    const/16 p5, 0x3e8

    const/16 p6, 0x408

    .line 691
    invoke-static {p1, p3, p5, p6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 693
    new-instance p1, Ljava/io/File;

    const-string p3, "/config/sdcardfs"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_149

    goto :goto_14a

    :cond_149
    const/4 p1, 0x0

    :goto_14a
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 697
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 698
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 700
    iput-object p4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 702
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 703
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 427
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 432
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 442
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 486
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 492
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 497
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 501
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 507
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 510
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    .line 518
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 523
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    .line 529
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 536
    new-instance v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    new-instance v1, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    new-instance v2, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;)V

    new-instance v3, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;-><init>(Ljava/util/function/Supplier;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    new-instance v2, Lcom/samsung/android/server/pm/MetaDataHelper;

    invoke-direct {v2}, Lcom/samsung/android/server/pm/MetaDataHelper;-><init>()V

    .line 542
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;-><init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    .line 551
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 571
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 614
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 615
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 617
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 618
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 620
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 621
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 624
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 627
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 628
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 629
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 630
    new-instance p1, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p1}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    const/4 p1, 0x0

    .line 631
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 632
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 633
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 634
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 635
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 636
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 637
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    .line 638
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 639
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 640
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 641
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 642
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 644
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 645
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static createMimeGroups(Ljava/util/Set;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_4
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .registers 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v14, p11

    if-eqz v0, :cond_65

    .line 1014
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v4, p0

    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    move-object/from16 v0, p5

    .line 1015
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v7, p6

    .line 1016
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v8, p7

    .line 1017
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v9, p8

    .line 1018
    invoke-virtual {v1, v9}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 1021
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-wide/from16 v11, p9

    .line 1022
    invoke-virtual {v1, v11, v12}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v13, p18

    .line 1023
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v6, p19

    .line 1024
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v5, p20

    .line 1025
    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v15, p21

    .line 1026
    invoke-virtual {v1, v15}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1028
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v10, p23

    .line 1029
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move/from16 v3, p12

    .line 1030
    invoke-virtual {v0, v14, v3}, Lcom/android/server/pm/SettingBase;->setPkgFlags(II)Lcom/android/server/pm/SettingBase;

    goto/16 :goto_173

    :cond_65
    move-object/from16 v4, p0

    move-object/from16 v0, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v11, p9

    move/from16 v3, p12

    move-object/from16 v13, p18

    move-object/from16 v6, p19

    move-object/from16 v5, p20

    move-object/from16 v10, p23

    .line 1032
    new-instance v15, Lcom/android/server/pm/PackageSetting;

    move-object v3, v15

    const/16 v16, 0x0

    move-object/from16 v10, v16

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move/from16 v15, v16

    .line 1037
    invoke-static/range {p22 .. p22}, Lcom/android/server/pm/Settings;->createMimeGroups(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move-object/from16 v19, p21

    move-object/from16 v21, p23

    invoke-direct/range {v3 .. v21}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V

    .line 1038
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_b1

    .line 1040
    iget v3, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :cond_b1
    const/16 v25, 0x1

    and-int/lit8 v3, p11, 0x1

    if-nez v3, :cond_124

    .line 1049
    invoke-static/range {p17 .. p17}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    const/16 v26, 0x0

    if-eqz p13, :cond_c5

    .line 1050
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move v15, v4

    goto :goto_c7

    :cond_c5
    move/from16 v15, v26

    :goto_c7
    if-eqz v3, :cond_124

    if-eqz p14, :cond_124

    .line 1053
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_cf
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_124

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz p13, :cond_f9

    const/4 v4, -0x1

    if-ne v15, v4, :cond_ef

    .line 1060
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v14, p17

    .line 1062
    invoke-static {v14, v4}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v4

    if-nez v4, :cond_f1

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_fb

    goto :goto_f1

    :cond_ef
    move-object/from16 v14, p17

    :cond_f1
    :goto_f1
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v15, v4, :cond_f6

    goto :goto_fb

    :cond_f6
    move/from16 v8, v26

    goto :goto_fd

    :cond_f9
    move-object/from16 v14, p17

    :cond_fb
    :goto_fb
    move/from16 v8, v25

    .line 1070
    :goto_fd
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    move-object v3, v0

    move/from16 v14, p15

    move/from16 v28, v15

    move/from16 v15, p16

    invoke-virtual/range {v3 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    move/from16 v15, v28

    goto :goto_cf

    :cond_124
    if-eqz v2, :cond_12c

    .line 1092
    iget v1, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_173

    :cond_12c
    if-eqz v1, :cond_173

    .line 1100
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;

    .line 1101
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1103
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    .line 1104
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 1106
    invoke-static/range {p17 .. p17}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_173

    .line 1108
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_156
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1109
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1111
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;

    move-result-object v4

    .line 1110
    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V

    .line 1113
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;

    move-result-object v4

    .line 1112
    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V

    goto :goto_156

    :cond_173
    :goto_173
    return-object v0
.end method

.method public static dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    if-nez p1, :cond_9

    const-string/jumbo p1, "unknown"

    .line 5384
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_9
    const-string v0, "["

    .line 5387
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base"

    .line 5388
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5389
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_25

    .line 5390
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5392
    :cond_25
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 5393
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitRevisionCodes()[I

    move-result-object p1

    const/4 v2, 0x0

    .line 5394
    :goto_2e
    array-length v3, v0

    if-ge v2, v3, :cond_4a

    const-string v3, ", "

    .line 5395
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5396
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5397
    aget v3, p1, v2

    if-eqz v3, :cond_47

    .line 5398
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_4a
    const-string p1, "]"

    .line 5401
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method public static getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4567
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4554
    invoke-static {p0, v0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 4583
    :try_start_5
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_12
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 4588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4589
    throw p0

    .line 4588
    :catch_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3

    const-string/jumbo v0, "no_debugging_features"

    .line 1293
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/pm/PackageSetting;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 3

    .line 539
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/pm/PackageSetting;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 540
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 541
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$pruneSharedUsersLPw$3(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 3

    const/4 v0, 0x1

    .line 993
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    return-void
.end method

.method public static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eqz p1, :cond_29

    if-nez v0, :cond_12

    .line 5444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5445
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ "

    .line 5446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/4 v1, 0x1

    .line 5448
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p1, v2

    .line 5450
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/16 v1, 0x7c

    .line 5452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_29
    if-eqz v0, :cond_35

    const/16 p0, 0x5d

    .line 5457
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    const-string p0, ""

    return-object p0
.end method

.method public static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 5

    const-string v0, "[ "

    .line 4609
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4610
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_23

    .line 4611
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_20

    add-int/lit8 v1, v0, 0x1

    .line 4613
    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " "

    .line 4614
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_23
    const-string p1, "]"

    .line 4617
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PreferredActivity;",
            ">;)V"
        }
    .end annotation

    .line 3469
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_19

    .line 3470
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredActivity;

    .line 3475
    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const-string v1, "Removing preference"

    .line 3477
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerSamsungUtils;->logPreferenceChange(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p9

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, " to "

    if-eqz v2, :cond_6f

    .line 1148
    invoke-static/range {p2 .. p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_69

    const/4 v0, 0x5

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shared user changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_37

    .line 1152
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_39

    :cond_37
    const-string v1, "<nothing>"

    :goto_39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1154
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating application package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1157
    :cond_69
    iget v1, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    goto :goto_73

    :cond_6f
    const/4 v1, -0x1

    .line 1160
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 1163
    :goto_73
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_12e

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    .line 1165
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_92

    const-string v13, " system"

    goto :goto_94

    :cond_92
    const-string v13, ""

    .line 1166
    :goto_94
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " code path from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; Retain data and using new"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "PackageManager"

    .line 1165
    invoke-static {v12, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_12b

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_126

    if-nez p1, :cond_126

    .line 1176
    invoke-static/range {p10 .. p10}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_126

    .line 1178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 1180
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-nez v13, :cond_f9

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v13

    if-eqz v13, :cond_ee

    goto :goto_f9

    .line 1185
    :cond_ee
    iget v13, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v11, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 1186
    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v10}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_d5

    .line 1181
    :cond_f9
    :goto_f9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is Premium container. do not set install flag. / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " / installed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v10}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_126
    move-object/from16 v1, p5

    .line 1194
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1196
    :cond_12b
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    :cond_12e
    move-object/from16 v1, p6

    .line 1199
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v3, p7

    .line 1200
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v3, p15

    .line 1201
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v3, p16

    .line 1202
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-eqz v5, :cond_156

    if-eqz v6, :cond_156

    .line 1204
    array-length v3, v5

    array-length v9, v6

    if-ne v3, v9, :cond_156

    .line 1206
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 1207
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    goto :goto_15d

    .line 1209
    :cond_156
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 1210
    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    :goto_15d
    if-eqz v7, :cond_16d

    if-eqz v8, :cond_16d

    .line 1214
    array-length v3, v7

    array-length v5, v8

    if-ne v3, v5, :cond_16d

    .line 1216
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1217
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    goto :goto_174

    .line 1219
    :cond_16d
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 1220
    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 1226
    :goto_174
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    and-int/lit8 v3, p8, 0x1

    or-int/2addr v1, v3

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/SettingBase;->setPkgFlags(II)Lcom/android/server/pm/SettingBase;

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18d

    move v2, v11

    :cond_18d
    if-eqz v2, :cond_192

    or-int/lit16 v1, v4, 0x200

    goto :goto_194

    :cond_192
    and-int/lit16 v1, v4, -0x201

    .line 1239
    :goto_194
    invoke-virtual {p0, v1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-void
.end method


# virtual methods
.method public addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .registers 4

    .line 4175
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4176
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 4178
    :cond_9
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 4179
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 4181
    :cond_12
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1b

    .line 4182
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII[",
            "Ljava/lang/String;",
            "[J[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p8

    .line 916
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v15}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    const/16 v20, 0x0

    if-eqz v1, :cond_2f

    .line 918
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-ne v0, v14, :cond_19

    return-object v1

    :cond_19
    const/4 v0, 0x6

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding duplicate package, keeping first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v20

    .line 925
    :cond_2f
    new-instance v12, Lcom/android/server/pm/PackageSetting;

    move-object v1, v12

    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v21, v12

    move/from16 v12, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v1 .. v19}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V

    move/from16 v1, p8

    move-object/from16 v2, v21

    .line 929
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 930
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    move-object/from16 v4, p1

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 931
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_6f
    return-object v20
.end method

.method public addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_91

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_45

    if-eq v0, p2, :cond_45

    .line 1324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but is now "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1328
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_84

    .line 1329
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-eq v0, v4, :cond_84

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1330
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1337
    :cond_84
    :goto_84
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1338
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 1339
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1344
    :cond_91
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    if-nez p2, :cond_a9

    if-eqz v0, :cond_b6

    if-eq v0, p1, :cond_b6

    .line 1347
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    goto :goto_b6

    :cond_a9
    if-eqz v0, :cond_b6

    if-eq v0, p2, :cond_b6

    .line 1351
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method public addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 800
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 7

    .line 938
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 940
    iget p0, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ne p0, p2, :cond_10

    return-object v0

    :cond_10
    const/4 p0, 0x6

    .line 943
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Adding duplicate shared user, keeping first: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    .line 947
    :cond_26
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 948
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 949
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p3, p2, v0, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 950
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3b
    return-object v1
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 29

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 3604
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p9

    .line 3603
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v2, 0x0

    goto :goto_25

    .line 3610
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_25
    const-string v3, "PackageSettings"

    const/4 v4, 0x1

    if-ge v2, v4, :cond_4b

    .line 3612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No potential matches found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3612
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3618
    :cond_4b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v12, v5, [Landroid/content/ComponentName;

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_56
    if-ge v6, v2, :cond_ad

    .line 3620
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3621
    new-instance v13, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v18, v2

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v12, v6

    .line 3623
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 3624
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 3628
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget v14, v1, Landroid/content/pm/ResolveInfo;->match:I

    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_a7

    .line 3629
    :cond_93
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_a7

    .line 3630
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v1, :cond_a7

    .line 3636
    aget-object v15, v12, v6

    :cond_a7
    :goto_a7
    add-int/lit8 v6, v6, 0x1

    move v4, v2

    move/from16 v2, v18

    goto :goto_56

    :cond_ad
    if-eqz v15, :cond_b2

    if-lez v14, :cond_b2

    const/4 v15, 0x0

    :cond_b2
    if-eqz v16, :cond_165

    if-nez v15, :cond_165

    .line 3676
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 3677
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 3678
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 3680
    :cond_c8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_e6

    .line 3681
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3682
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_d6

    :cond_e6
    const/high16 v1, 0x10000

    and-int/2addr v1, v8

    if-eqz v1, :cond_f0

    const-string v1, "android.intent.category.DEFAULT"

    .line 3686
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_f0
    if-eqz v9, :cond_f5

    .line 3689
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_f5
    if-eqz p6, :cond_102

    .line 3692
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_102
    if-eqz v10, :cond_107

    .line 3695
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    :cond_107
    if-eqz v11, :cond_10c

    .line 3698
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3700
    :cond_10c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_141

    .line 3702
    :try_start_112
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_119
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_112 .. :try_end_119} :catch_11e

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    goto :goto_145

    .line 3704
    :catch_11e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed mimetype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    :cond_141
    move-object/from16 v2, p4

    :goto_143
    move-object/from16 v1, p0

    :goto_145
    move/from16 v3, p9

    .line 3707
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v1

    .line 3708
    invoke-virtual {v1, v0}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_154

    .line 3710
    invoke-static {v1, v0, v3}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    .line 3712
    :cond_154
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/4 v11, 0x1

    move-object v6, v3

    move-object v7, v0

    move v8, v14

    move-object v9, v12

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    .line 3713
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_1c5

    :cond_165
    move-object/from16 v2, p4

    if-nez v15, :cond_1a5

    .line 3715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No component "

    .line 3716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " found setting preferred "

    .line 3718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; possible matches are "

    .line 3720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_188
    if-ge v1, v5, :cond_19d

    if-lez v1, :cond_191

    const-string v2, ", "

    .line 3722
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3723
    :cond_191
    aget-object v2, v12, v1

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_188

    .line 3725
    :cond_19d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    .line 3727
    :cond_1a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; found third party match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3728
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3727
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c5
    return-void
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 29

    move-object/from16 v0, p2

    .line 3492
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 3495
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0xc0000

    move v4, v1

    .line 3496
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 3497
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.category.DEFAULT"

    .line 3498
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    goto :goto_2b

    .line 3501
    :cond_28
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 3508
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    const/4 v15, 0x1

    move v13, v1

    move/from16 v16, v13

    move v4, v15

    :goto_37
    if-ge v13, v14, :cond_16b

    .line 3511
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_47

    .line 3512
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    move/from16 v16, v15

    .line 3515
    :cond_47
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v11

    move v10, v1

    move v4, v15

    :goto_4d
    if-ge v10, v11, :cond_96

    .line 3517
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3518
    invoke-virtual {v4, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3519
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 3520
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3521
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3522
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v12

    move/from16 v20, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, v18

    move-object v1, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, p4

    .line 3523
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v10, v20, 0x1

    move-object v12, v1

    move/from16 v11, v17

    move/from16 v13, v19

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_4d

    :cond_96
    move-object v1, v12

    move/from16 v19, v13

    .line 3527
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    const/4 v12, 0x0

    :goto_9e
    if-ge v12, v13, :cond_13f

    .line 3530
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v17

    .line 3531
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v11

    move v5, v15

    const/4 v10, 0x0

    :goto_aa
    if-ge v10, v11, :cond_100

    .line 3533
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3534
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3535
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c1

    .line 3536
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3538
    :cond_c1
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v20

    .line 3539
    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3540
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3541
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v21, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v1

    move/from16 v22, v10

    move-object/from16 v10, v21

    move/from16 v21, v11

    move-object/from16 v11, v17

    move/from16 v23, v12

    move-object/from16 v12, v20

    move/from16 v20, v13

    move/from16 v13, p4

    .line 3542
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v10, v22, 0x1

    move/from16 v13, v20

    move/from16 v11, v21

    move/from16 v12, v23

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_aa

    :cond_100
    move/from16 v23, v12

    move/from16 v20, v13

    if-eqz v5, :cond_139

    .line 3547
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3548
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3549
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11b

    .line 3550
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3552
    :cond_11b
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3553
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v1

    move-object/from16 v11, v17

    move/from16 v13, p4

    .line 3554
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/4 v4, 0x0

    :cond_139
    add-int/lit8 v12, v23, 0x1

    move/from16 v13, v20

    goto/16 :goto_9e

    :cond_13f
    if-eqz v4, :cond_165

    .line 3560
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3561
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3562
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3563
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move-object v9, v1

    move/from16 v13, p4

    .line 3564
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_165
    add-int/lit8 v13, v19, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_37

    :cond_16b
    const/4 v1, 0x0

    .line 3570
    :goto_16c
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v5

    if-ge v1, v5, :cond_1d2

    .line 3571
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v16, :cond_1b6

    .line 3573
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v13, 0x0

    .line 3574
    :goto_17e
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v13, v4, :cond_1ce

    .line 3575
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b1

    .line 3576
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b1

    .line 3577
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3578
    invoke-virtual {v15, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3579
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move/from16 v17, v13

    move/from16 v13, p4

    .line 3580
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_1b3

    :cond_1b1
    move/from16 v17, v13

    :goto_1b3
    add-int/lit8 v13, v17, 0x1

    goto :goto_17e

    .line 3585
    :cond_1b6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3586
    invoke-virtual {v6, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v3

    move-object/from16 v8, p3

    move/from16 v13, p4

    .line 3587
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_1ce
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_16c

    :cond_1d2
    if-eqz v4, :cond_1e3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v9, p4

    .line 3594
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_1e3
    return-void
.end method

.method public applyDefaultPreferredAppsLPw(I)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    .line 3384
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3385
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3386
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3387
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_18

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 3388
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    .line 3390
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v7

    const/4 v6, 0x0

    .line 3391
    :goto_49
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_18

    .line 3392
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3393
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 3394
    invoke-interface {v9}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    .line 3395
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 3401
    :cond_70
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_77
    if-ge v5, v4, :cond_1cd

    .line 3403
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ScanPartition;

    .line 3405
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v0

    const-string v9, "etc/preferred-apps"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3406
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_1c4

    .line 3410
    :cond_9a
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v9, " cannot be read"

    const-string v10, "PackageSettings"

    if-nez v0, :cond_bd

    .line 3411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Directory "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c4

    .line 3416
    :cond_bd
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 3417
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    goto/16 :goto_1c4

    .line 3421
    :cond_c9
    array-length v12, v11

    const/4 v13, 0x0

    :goto_cb
    if-ge v13, v12, :cond_1c4

    aget-object v14, v11, v13

    .line 3422
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v15, ".xml"

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 3423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non-xml file "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " directory, ignoring"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fc
    move/from16 v16, v4

    goto/16 :goto_1bd

    .line 3427
    :cond_100
    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v15, "Preferred apps file "

    if-nez v0, :cond_11e

    .line 3428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 3435
    :cond_11e
    :try_start_11e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11e .. :try_end_123} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_123} :catch_192

    .line 3436
    :try_start_123
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 3439
    :goto_127
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_180

    move/from16 v16, v4

    const/4 v4, 0x2

    if-eq v7, v4, :cond_137

    const/4 v4, 0x1

    if-eq v7, v4, :cond_136

    move/from16 v4, v16

    goto :goto_127

    :cond_136
    const/4 v4, 0x2

    :cond_137
    if-eq v7, v4, :cond_155

    .line 3445
    :try_start_139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have start tag"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_139 .. :try_end_150} :catchall_17e

    .line 3454
    :goto_150
    :try_start_150
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_150 .. :try_end_153} :catch_190
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_18e

    goto/16 :goto_1bd

    :cond_155
    :try_start_155
    const-string/jumbo v4, "preferred-activities"

    .line 3448
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17a

    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not start with \'preferred-activities\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    .line 3453
    :cond_17a
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_17d
    .catchall {:try_start_155 .. :try_end_17d} :catchall_17e

    goto :goto_150

    :catchall_17e
    move-exception v0

    goto :goto_183

    :catchall_180
    move-exception v0

    move/from16 v16, v4

    :goto_183
    move-object v4, v0

    .line 3435
    :try_start_184
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_188

    goto :goto_18d

    :catchall_188
    move-exception v0

    move-object v6, v0

    :try_start_18a
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18d
    throw v4
    :try_end_18e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18a .. :try_end_18e} :catch_190
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18e} :catch_18e

    :catch_18e
    move-exception v0

    goto :goto_195

    :catch_190
    move-exception v0

    goto :goto_1ab

    :catch_192
    move-exception v0

    move/from16 v16, v4

    .line 3457
    :goto_195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1bd

    :catch_1a8
    move-exception v0

    move/from16 v16, v4

    .line 3455
    :goto_1ab
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1bd
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v7, 0x1

    goto/16 :goto_cb

    :cond_1c4
    :goto_1c4
    move/from16 v16, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    const/4 v7, 0x1

    goto/16 :goto_77

    :cond_1cd
    return-void
.end method

.method public checkAndConvertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 4

    .line 1437
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1438
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1439
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isLeavingSharedUid()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    .line 1440
    invoke-static {v0}, Lcom/android/server/pm/SharedUidMigration;->applyStrategy(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    :cond_28
    return-void
.end method

.method public checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z
    .registers 4

    if-nez p2, :cond_16

    .line 1357
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1358
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1359
    :cond_16
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_27

    .line 1360
    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public clearBlockUninstallLPw(I)V
    .registers 2

    .line 2028
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    return-void
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 6259
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5d

    .line 6260
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 6261
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eq p2, v4, :cond_1d

    goto :goto_5a

    .line 6265
    :cond_1d
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6266
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 6267
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6269
    iget-object v7, v6, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    if-nez v1, :cond_40

    .line 6271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6273
    :cond_40
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_44
    if-eqz v1, :cond_5a

    move v3, v0

    .line 6277
    :goto_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 6278
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6279
    invoke-virtual {v5, v4}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_59
    const/4 v3, 0x1

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5d
    if-eqz v3, :cond_62

    .line 6285
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_62
    return v3
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .registers 15

    const-string/jumbo v0, "kioskmode"

    .line 6192
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_27

    .line 6195
    :try_start_10
    invoke-interface {v0, p3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v2

    .line 6197
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_28

    :catch_1f
    move-exception v0

    const-string v4, "PackageSettings"

    const-string v5, "Failed talking with kiosk mode service"

    .line 6200
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    move-object v0, v1

    :goto_28
    move v4, v2

    move v5, v4

    .line 6207
    :goto_2a
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_a8

    .line 6208
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v6

    .line 6209
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v7, v4}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PreferredIntentResolver;

    const/4 v8, -0x1

    if-eq p3, v8, :cond_46

    if-eq p3, v6, :cond_46

    goto :goto_a5

    .line 6213
    :cond_46
    invoke-virtual {v7}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v8

    .line 6214
    :cond_4a
    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 6215
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PreferredActivity;

    if-eqz p1, :cond_6c

    .line 6218
    iget-object v10, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v10, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 6219
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    iget-object v10, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v10, v10, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v10, :cond_4a

    :cond_6c
    if-nez v1, :cond_73

    .line 6222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_73
    if-eqz v0, :cond_83

    .line 6226
    iget-object v10, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v10, v10, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 6227
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4a

    .line 6228
    :cond_83
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_87
    if-eqz v1, :cond_a5

    move v5, v2

    .line 6239
    :goto_8a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_a1

    .line 6240
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PreferredActivity;

    .line 6241
    invoke-virtual {v7, v8}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const-string v9, "Removing preference<clear>"

    .line 6243
    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerSamsungUtils;->logPreferenceChange(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    .line 6247
    :cond_a1
    invoke-virtual {p2, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v5, v3

    :cond_a5
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_a8
    if-eqz v5, :cond_ad

    .line 6252
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_ad
    return-void
.end method

.method public convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 6

    .line 1421
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1422
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getAppId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    const/4 v2, -0x1

    .line 1425
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1427
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1428
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    .line 1430
    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7

    const-string p0, " to "

    .line 2692
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_52

    .line 2693
    :try_start_7
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_48

    .line 2696
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 2697
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_c

    .line 2699
    :cond_17
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 2700
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_3e

    .line 2702
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_48

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_52

    goto :goto_72

    :catchall_3e
    move-exception v2

    .line 2691
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v1

    :try_start_44
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw v2
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v1

    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw v1
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    .line 2703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_72
    return-void
.end method

.method public createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v0, p4

    .line 4355
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageSettingsTiming"

    const-wide/32 v3, 0x40000

    invoke-direct {v11, v2, v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 4357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4358
    new-instance v12, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v12}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    if-nez v0, :cond_2d

    const/4 v15, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v15, 0x0

    .line 4360
    :goto_2e
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    .line 4362
    :try_start_31
    invoke-static {}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->findCurrentGuestUserId()I

    move-result v8

    .line 4363
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4364
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4366
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_49
    if-ge v5, v6, :cond_11e

    .line 4368
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4369
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_66

    move-object/from16 v14, p5

    move/from16 v21, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move v13, v8

    move-object/from16 v20, v9

    goto/16 :goto_113

    .line 4375
    :cond_66
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mMumInstallPolicy:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    invoke-virtual {v3, v2, v7, v8}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    .line 4377
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v3

    .line 4382
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    .line 4386
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v16

    if-eqz v16, :cond_95

    .line 4387
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p5

    invoke-static {v14, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_97

    .line 4388
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v13

    if-nez v13, :cond_97

    if-eqz v3, :cond_97

    if-nez v4, :cond_97

    const/4 v3, 0x1

    goto :goto_98

    :cond_95
    move-object/from16 v14, p5

    :cond_97
    const/4 v3, 0x0

    :goto_98
    if-eqz v3, :cond_a8

    if-nez v15, :cond_a6

    .line 4393
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4392
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_a6
    const/4 v4, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v4, 0x0

    .line 4395
    :goto_a9
    invoke-virtual {v2, v4, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v3, :cond_b2

    if-nez v4, :cond_b2

    const/4 v3, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v3, 0x0

    .line 4401
    :goto_b3
    invoke-virtual {v2, v3, v10}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    if-eqz v4, :cond_107

    .line 4406
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v13

    .line 4407
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d1

    const/16 v17, 0x1

    goto :goto_d3

    :cond_d1
    const/16 v17, 0x0

    .line 4409
    :goto_d3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x3

    .line 4411
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v20
    :try_end_e9
    .catchall {:try_start_31 .. :try_end_e9} :catchall_146

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p3

    move/from16 v21, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move-object v7, v13

    move v13, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v17

    .line 4408
    :try_start_ff
    invoke-static/range {v2 .. v9}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v2

    .line 4412
    invoke-virtual {v12, v2}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_113

    :cond_107
    move/from16 v21, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move v13, v8

    move-object/from16 v20, v9

    .line 4415
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_113
    add-int/lit8 v5, v21, 0x1

    move v8, v13

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    goto/16 :goto_49

    :cond_11e
    move-object/from16 v20, v9

    .line 4418
    monitor-exit v20
    :try_end_121
    .catchall {:try_start_ff .. :try_end_121} :catchall_14b

    const-string v0, "createAppData"

    .line 4419
    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 4421
    :try_start_128
    invoke-virtual {v12, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_12b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_128 .. :try_end_12b} :catch_12c

    goto :goto_135

    :catch_12c
    move-exception v0

    move-object v2, v0

    const-string v0, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    .line 4423
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4425
    :goto_135
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4426
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 4427
    :try_start_13b
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4428
    monitor-exit v2
    :try_end_13f
    .catchall {:try_start_13b .. :try_end_13f} :catchall_143

    .line 4429
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_143
    move-exception v0

    .line 4428
    :try_start_144
    monitor-exit v2
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v0

    :catchall_146
    move-exception v0

    move-object/from16 v20, v9

    .line 4418
    :goto_149
    :try_start_149
    monitor-exit v20
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_14b

    throw v0

    :catchall_14b
    move-exception v0

    goto :goto_149
.end method

.method public disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 6

    .line 839
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 841
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an installed package"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 844
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_6c

    .line 846
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 847
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 848
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    if-eqz p2, :cond_5b

    .line 855
    new-instance p2, Lcom/android/server/pm/PackageSetting;

    invoke-direct {p2, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    move-object v0, p2

    .line 859
    :cond_5b
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 862
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_6b
    return v2

    :cond_6c
    return v1
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 6

    .line 5518
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activities:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5519
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "services:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5520
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "receivers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5521
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "providers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5522
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object p3

    const-string/jumbo v0, "instrumentations:"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            ">;)V"
        }
    .end annotation

    .line 5527
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 5531
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_e
    if-ge p3, p0, :cond_2c

    .line 5533
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedComponent;

    .line 5534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5535
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_2c
    return-void
.end method

.method public dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 4

    .line 5406
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    if-nez p0, :cond_16

    .line 5407
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "gids="

    .line 5408
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5409
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->arrayToString([I)Ljava/lang/String;

    move-result-object p0

    .line 5408
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 5467
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 5468
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5469
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 5470
    invoke-virtual {p4, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v1

    .line 5472
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5473
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_1f

    .line 5476
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_3f

    .line 5478
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_1f

    .line 5481
    :cond_3f
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 5485
    :cond_43
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    :cond_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5486
    invoke-virtual {p4, v1, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v2

    .line 5488
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 5489
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_6f

    move-object v5, v2

    goto :goto_7a

    .line 5494
    :cond_6f
    invoke-virtual {p4, v1, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v5

    .line 5495
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    goto :goto_5d

    :cond_7a
    :goto_7a
    const/4 v6, 0x1

    if-nez v0, :cond_87

    .line 5500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "install permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v6

    .line 5503
    :cond_87
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": granted="

    .line 5504
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_a0

    .line 5505
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_a0

    goto :goto_a1

    :cond_a0
    move v6, p3

    .line 5504
    :goto_a1
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz v5, :cond_ab

    .line 5507
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    goto :goto_ac

    :cond_ab
    move v5, p3

    :goto_ac
    const-string v6, ", flags="

    .line 5506
    invoke-static {v6, v5}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_bb

    .line 5509
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_5d

    :cond_bb
    const-string v5, ", userId="

    .line 5511
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5d

    :cond_c4
    return-void
.end method

.method public dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    .line 4693
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v0, :cond_1b7

    .line 4695
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    .line 4696
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4697
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    :cond_27
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_2b
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4698
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4700
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4701
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 4702
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4703
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 4704
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v4, "?"

    if-eqz v3, :cond_60

    .line 4706
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    goto :goto_61

    :cond_60
    move-object v3, v4

    .line 4705
    :goto_61
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4707
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    if-eqz v3, :cond_89

    .line 4708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8b

    :cond_89
    const-string v3, ""

    .line 4707
    :goto_8b
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4709
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4710
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/pm/InstallSource;->packageSource:I

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4711
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "-"

    if-eqz v1, :cond_e2

    .line 4713
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "splt,"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "base,"

    .line 4714
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4715
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getBaseRevisionCode()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4716
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitRevisionCodes()[I

    move-result-object v6

    const/4 v12, 0x0

    .line 4717
    :goto_be
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v12, v8, :cond_e2

    .line 4718
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4719
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4720
    aget v8, v6, v12

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    .line 4723
    :cond_e2
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4724
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v10, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 4725
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4726
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "usr"

    .line 4727
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4728
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4729
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4730
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_118

    const-string v8, "I"

    goto :goto_11b

    :cond_118
    const-string/jumbo v8, "i"

    :goto_11b
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4732
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_127

    const-string v8, "B"

    goto :goto_129

    :cond_127
    const-string v8, "b"

    :goto_129
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4733
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_135

    const-string v8, "SU"

    goto :goto_138

    :cond_135
    const-string/jumbo v8, "su"

    :goto_138
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4734
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_144

    const-string v8, "S"

    goto :goto_147

    :cond_144
    const-string/jumbo v8, "s"

    :goto_147
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4735
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v8

    if-eqz v8, :cond_154

    const-string/jumbo v8, "l"

    goto :goto_156

    :cond_154
    const-string v8, "L"

    :goto_156
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4736
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_162

    const-string v8, "IA"

    goto :goto_165

    :cond_162
    const-string/jumbo v8, "ia"

    :goto_165
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4737
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v8

    if-eqz v8, :cond_171

    const-string v8, "VPI"

    goto :goto_174

    :cond_171
    const-string/jumbo v8, "vpi"

    :goto_174
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4738
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_180

    const-string v8, "HA"

    goto :goto_183

    :cond_180
    const-string/jumbo v8, "ha"

    .line 4739
    :goto_183
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4740
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4741
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4742
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v6

    .line 4743
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v6, :cond_19a

    goto :goto_19b

    :cond_19a
    move-object v6, v4

    .line 4744
    :goto_19b
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4745
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4746
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 4747
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4748
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_e6

    :cond_1b6
    return-void

    .line 4753
    :cond_1b7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4754
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ca

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1ce

    :cond_1ca
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1ce
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] ("

    .line 4755
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    .line 4757
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4759
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1fb

    .line 4760
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    :cond_1fb
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4766
    invoke-virtual {v6, v10}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_21b

    .line 4768
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  sharedUser="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4770
    :cond_21b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4771
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v9, :cond_29c

    .line 4773
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4775
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  extractNativeLibs="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4777
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_26a

    const-string/jumbo v0, "true"

    goto :goto_26c

    :cond_26a
    const-string v0, "false"

    :goto_26c
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4779
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  cpuAbiOverride="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    :cond_29c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "]"

    const-string v2, ", "

    if-eqz v1, :cond_30f

    const-string v3, " minSdk="

    .line 4785
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getMinSdkVersion()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " targetSdk="

    .line 4786
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4788
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 4790
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  minExtensionVersions=["

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_30c

    .line 4792
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4793
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_2e1
    if-ge v13, v5, :cond_305

    .line 4795
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 4796
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 4797
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2e1

    .line 4800
    :cond_305
    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4802
    :cond_30c
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4804
    :cond_30f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v12, "    "

    const/4 v3, 0x1

    if-eqz v1, :cond_6a7

    .line 4806
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  versionName="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4807
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesNonSdkApi="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUsesNonSdkApi()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4808
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  splits="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4809
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v4

    .line 4810
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  apkSigningVersion="

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4811
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  flags="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4812
    invoke-static {v1, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v4

    sget-object v5, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4813
    invoke-static {v1, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v4

    if-eqz v4, :cond_380

    .line 4815
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  privateFlags="

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4816
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4818
    :cond_380
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->hasPreserveLegacyExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_391

    .line 4819
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4820
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4822
    :cond_391
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  forceQueryable="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4823
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isForceQueryable()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4824
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v4

    if-eqz v4, :cond_3af

    const-string v4, " (override=true)"

    .line 4825
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4827
    :cond_3af
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4828
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d5

    .line 4829
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "  queriesPackages="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 4830
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesPackages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4832
    :cond_3d5
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f8

    .line 4833
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "  queriesIntents="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 4834
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesIntents()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4836
    :cond_3f8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v4

    .line 4837
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  dataDir="

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4838
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  supportsScreens=["

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4840
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsSmallScreens()Z

    move-result v4

    if-eqz v4, :cond_425

    const-string/jumbo v4, "small"

    .line 4844
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_426

    :cond_425
    move v4, v3

    .line 4846
    :goto_426
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsNormalScreens()Z

    move-result v5

    if-eqz v5, :cond_438

    if-nez v4, :cond_431

    .line 4848
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_431
    const-string/jumbo v4, "medium"

    .line 4850
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4852
    :cond_438
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsLargeScreens()Z

    move-result v5

    if-eqz v5, :cond_44a

    if-nez v4, :cond_443

    .line 4854
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_443
    const-string/jumbo v4, "large"

    .line 4856
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4858
    :cond_44a
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSupportsExtraLargeScreens()Z

    move-result v5

    if-eqz v5, :cond_45c

    if-nez v4, :cond_455

    .line 4860
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_455
    const-string/jumbo v4, "xlarge"

    .line 4862
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4864
    :cond_45c
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_46e

    if-nez v4, :cond_467

    .line 4866
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_467
    const-string/jumbo v4, "resizeable"

    .line 4868
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4870
    :cond_46e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isAnyDensity()Z

    move-result v5

    if-eqz v5, :cond_47e

    if-nez v4, :cond_479

    .line 4872
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_479
    const-string v2, "anyDensity"

    .line 4874
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4876
    :cond_47e
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4877
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4ae

    .line 4878
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4ae

    .line 4879
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  dynamic libraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4880
    :goto_496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4ae

    .line 4881
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4882
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_496

    .line 4885
    :cond_4ae
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "name:"

    const-string v4, " version:"

    if-eqz v0, :cond_4db

    .line 4886
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  static library:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    .line 4892
    :cond_4db
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_505

    .line 4893
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SDK library:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4894
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4895
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " versionMajor:"

    .line 4896
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibVersionMajor()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4899
    :cond_505
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    .line 4900
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_530

    .line 4901
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4902
    :goto_518
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_530

    .line 4903
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_518

    .line 4907
    :cond_530
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v0

    .line 4908
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 4909
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_567

    .line 4910
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesStaticLibraries:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 4911
    :goto_547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_567

    .line 4912
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4914
    aget-wide v13, v2, v5

    invoke-virtual {v7, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_547

    .line 4918
    :cond_567
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    .line 4919
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v2

    .line 4920
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_59e

    .line 4921
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesSdkLibraries:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_582
    if-ge v13, v5, :cond_59e

    .line 4923
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4924
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    aget-wide v14, v2, v13

    invoke-virtual {v7, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_582

    .line 4929
    :cond_59e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 4930
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5c9

    .line 4931
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4932
    :goto_5b1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5c9

    .line 4933
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b1

    .line 4938
    :cond_5c9
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    .line 4939
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5f4

    .line 4940
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesNativeLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4941
    :goto_5dc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5f4

    .line 4942
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5dc

    .line 4946
    :cond_5f4
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v0

    .line 4947
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_61f

    .line 4948
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalNativeLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4949
    :goto_607
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_61f

    .line 4950
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4951
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_607

    .line 4955
    :cond_61f
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 4956
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_64e

    .line 4957
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraryFiles:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4958
    :goto_636
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_64e

    .line 4959
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_636

    .line 4962
    :cond_64e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProcesses()Ljava/util/Map;

    move-result-object v0

    .line 4963
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a7

    .line 4964
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  processes:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_668
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 4966
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_668

    .line 4968
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_668

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4969
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "      deny: "

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_68f

    .line 4976
    :cond_6a7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4977
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4978
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4980
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4981
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6ec

    .line 4983
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4984
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4986
    :cond_6ec
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_705

    .line 4987
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerAttributionTag="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4988
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    :cond_705
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  packageSource="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4991
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/pm/InstallSource;->packageSource:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4992
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_740

    .line 4993
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  loadingProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4994
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4993
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    :cond_740
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_755

    .line 4997
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4998
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5000
    :cond_755
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5001
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5002
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->isInstallPermissionsFixed()Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5003
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5004
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5005
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    if-eqz v1, :cond_7b0

    .line 5007
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b0

    .line 5008
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5009
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b0
    if-eqz v1, :cond_82c

    .line 5012
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_82c

    .line 5013
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 5014
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  declared permissions:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5015
    :goto_7c9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_82c

    .line 5016
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    if-eqz v9, :cond_7e2

    .line 5018
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e2

    goto :goto_829

    .line 5021
    :cond_7e2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": prot="

    .line 5022
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5023
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v5

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5024
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_80b

    const-string v5, ", COSTS_MONEY"

    .line 5025
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5027
    :cond_80b
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_818

    const-string v5, ", HIDDEN"

    .line 5028
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5030
    :cond_818
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_826

    const-string v4, ", INSTALLED"

    .line 5031
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5033
    :cond_826
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :goto_829
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c9

    :cond_82c
    if-nez v9, :cond_830

    if-eqz p10, :cond_870

    :cond_830
    if-eqz v1, :cond_870

    .line 5038
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_870

    .line 5039
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_870

    .line 5040
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 5041
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5042
    :goto_84f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_870

    .line 5043
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v9, :cond_864

    .line 5045
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_864

    goto :goto_86d

    .line 5048
    :cond_864
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_86d
    add-int/lit8 v1, v1, 0x1

    goto :goto_84f

    .line 5052
    :cond_870
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    const-string v13, "  "

    if-eqz v0, :cond_87c

    if-nez v9, :cond_87c

    if-eqz p10, :cond_898

    .line 5053
    :cond_87c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    :cond_898
    if-eqz p11, :cond_8ac

    .line 5057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v10}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 5060
    :cond_8ac
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8b0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5061
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v10, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v14

    .line 5062
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  User "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ceDataInode="

    .line 5063
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5064
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " installed="

    .line 5065
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5066
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " hidden="

    .line 5067
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5068
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " suspended="

    .line 5069
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " distractionFlags="

    .line 5071
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5072
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " stopped="

    .line 5073
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5074
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " notLaunched="

    .line 5075
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5076
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " enabled="

    .line 5077
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5078
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " instant="

    .line 5079
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5080
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " virtual="

    .line 5081
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5082
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "      installReason="

    .line 5083
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5084
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5086
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    const-string v2, "      firstInstallTime="

    .line 5087
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5088
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 5089
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      uninstallReason="

    .line 5091
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5092
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5094
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_9c9

    .line 5095
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Suspend params:"

    .line 5096
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5097
    :goto_98c
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_9c9

    .line 5098
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    suspendingPackage="

    .line 5099
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5100
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5101
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v2, :cond_9c3

    const-string v3, " dialogInfo="

    .line 5103
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5104
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5106
    :cond_9c3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_98c

    .line 5110
    :cond_9c9
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v1

    const-string v15, "      "

    if-eqz v1, :cond_a31

    .line 5112
    invoke-virtual {v1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a01

    .line 5113
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    overlay paths:"

    .line 5114
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5115
    invoke-virtual {v1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a01

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5116
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5117
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5118
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9eb

    .line 5121
    :cond_a01
    invoke-virtual {v1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a31

    .line 5122
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    legacy overlay paths:"

    .line 5123
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {v1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5125
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5126
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5127
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a1b

    .line 5133
    :cond_a31
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_ad8

    .line 5136
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/overlay/OverlayPaths;

    if-nez v3, :cond_a54

    goto :goto_a3f

    .line 5141
    :cond_a54
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a96

    .line 5142
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5143
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " overlay paths:"

    .line 5145
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5146
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5147
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 p3, v1

    const-string v1, "        "

    .line 5148
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5149
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v1, p3

    goto :goto_a7a

    :cond_a96
    move-object/from16 p3, v1

    .line 5152
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ad4

    .line 5153
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5154
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " legacy overlay paths:"

    .line 5156
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_abe
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5158
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5160
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_abe

    :cond_ad4
    move-object/from16 v1, p3

    goto/16 :goto_a3f

    .line 5166
    :cond_ad8
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ae9

    .line 5168
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    lastDisabledCaller: "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5169
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5172
    :cond_ae9
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v1

    if-nez v1, :cond_b33

    .line 5173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 5174
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 5173
    invoke-interface {v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v2

    invoke-virtual {v6, v7, v1, v2}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v5, p6

    .line 5176
    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v5, p10

    .line 5175
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    .line 5179
    :cond_b33
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b44

    .line 5181
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5182
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b44
    if-nez v9, :cond_8b0

    .line 5186
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_b73

    .line 5187
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    if-lez v1, :cond_b73

    .line 5188
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    disabledComponents:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5189
    :goto_b5b
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_b73

    .line 5190
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b5b

    .line 5193
    :cond_b73
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_8b0

    .line 5194
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    if-lez v1, :cond_8b0

    .line 5195
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    enabledComponents:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5196
    :goto_b88
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_8b0

    .line 5197
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b88

    :cond_ba0
    return-void
.end method

.method public dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p4

    .line 5206
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5207
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    const/4 v0, 0x2

    .line 5210
    invoke-virtual {v11, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v17

    .line 5211
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v18

    .line 5212
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    :goto_32
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v21, 0x0

    const/16 v22, 0x1

    if-eqz v1, :cond_bb

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v14, :cond_5a

    .line 5213
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 5214
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto :goto_32

    .line 5217
    :cond_5a
    iget-object v1, v12, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5218
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    if-eqz v15, :cond_6d

    .line 5220
    invoke-virtual {v6, v15}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_32

    :cond_6d
    if-nez p5, :cond_78

    if-eqz v14, :cond_78

    .line 5225
    invoke-virtual {v12, v5}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    :cond_78
    if-nez p5, :cond_8d

    if-nez v0, :cond_8d

    .line 5229
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 5230
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_85
    const-string v0, "Packages:"

    .line 5231
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v23, v22

    goto :goto_8f

    :cond_8d
    move/from16 v23, v0

    :goto_8f
    if-eqz p5, :cond_96

    const-string/jumbo v0, "pkg"

    move-object v3, v0

    goto :goto_98

    :cond_96
    move-object/from16 v3, v21

    :goto_98
    if-eqz v14, :cond_9b

    goto :goto_9d

    :cond_9b
    move/from16 v22, v20

    :goto_9d
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object v7, v10

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v24, v10

    move/from16 v10, v22

    move/from16 v11, v17

    .line 5234
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    move-object/from16 v11, p4

    move/from16 v0, v23

    move-object/from16 v10, v24

    goto/16 :goto_32

    :cond_bb
    move-object/from16 v24, v10

    .line 5239
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_133

    if-nez v15, :cond_133

    .line 5240
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v1, v20

    :goto_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v14, :cond_f6

    .line 5241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f6

    .line 5242
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f6

    goto :goto_d3

    :cond_f6
    if-nez p5, :cond_110

    if-nez v1, :cond_10a

    .line 5247
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 5248
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_103
    const-string v1, "Renamed packages:"

    .line 5249
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v1, v22

    :cond_10a
    const-string v3, "  "

    .line 5252
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_116

    :cond_110
    const-string/jumbo v3, "ren,"

    .line 5254
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5256
    :goto_116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_124

    const-string v3, " -> "

    goto :goto_126

    :cond_124
    const-string v3, ","

    .line 5257
    :goto_126
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d3

    .line 5263
    :cond_133
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1b3

    if-nez v15, :cond_1b3

    .line 5264
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v0, v20

    :goto_149
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v14, :cond_16d

    .line 5265
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    .line 5266
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    goto :goto_149

    :cond_16d
    if-nez p5, :cond_182

    if-nez v0, :cond_182

    .line 5270
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 5271
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_17a
    const-string v0, "Hidden system packages:"

    .line 5272
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v23, v22

    goto :goto_184

    :cond_182
    move/from16 v23, v0

    .line 5275
    :goto_184
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5276
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    if-eqz p5, :cond_194

    const-string v0, "dis"

    move-object v3, v0

    goto :goto_196

    :cond_194
    move-object/from16 v3, v21

    :goto_196
    if-eqz v14, :cond_19b

    move/from16 v10, v22

    goto :goto_19d

    :cond_19b
    move/from16 v10, v20

    :goto_19d
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v7, v24

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v11, v17

    .line 5277
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    move/from16 v0, v23

    goto :goto_149

    :cond_1b3
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 11

    .line 5284
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 5286
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    const/4 v1, 0x0

    move v8, v1

    :goto_10
    if-ge v8, v7, :cond_29

    .line 5288
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    const-wide v3, 0x20b00000005L

    .line 5289
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_29
    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 5295
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5296
    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissions()Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5297
    invoke-interface {p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 5295
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/Map;ZLcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    .line 6324
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 6325
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 6326
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v1

    .line 6328
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_35

    .line 6329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPreferred Activities User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 6330
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred Activities User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_49
    move-object v4, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "  "

    move-object v3, p1

    move-object v6, p3

    .line 6327
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    .line 6332
    invoke-virtual {p2, v1}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5d
    return-void
.end method

.method public dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 3

    const-string p2, "Settings parse messages:"

    .line 5378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5379
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5416
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5417
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-nez p0, :cond_1d

    if-eqz p5, :cond_73

    .line 5423
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "runtime permissions:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5424
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5425
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result p5

    if-nez p5, :cond_3d

    goto :goto_2a

    :cond_3d
    if-eqz p3, :cond_4a

    .line 5429
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4a

    goto :goto_2a

    .line 5432
    :cond_4a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p5, "  "

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p5, ": granted="

    .line 5433
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Z)V

    .line 5435
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result p4

    const-string p5, ", flags="

    .line 5434
    invoke-static {p5, p4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    :cond_73
    return-void
.end method

.method public dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 5303
    iget-object v0, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_171

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p2, :cond_27

    .line 5304
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v11, v1, :cond_27

    goto :goto_11

    .line 5307
    :cond_27
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v2, v11, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 5308
    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v12

    if-eqz v8, :cond_38

    .line 5310
    invoke-virtual {v12, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_11

    :cond_38
    if-nez p5, :cond_15a

    const/4 v13, 0x1

    if-nez v0, :cond_4d

    .line 5315
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5316
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_46
    const-string v0, "Shared users:"

    .line 5317
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v14, v13

    goto :goto_4e

    :cond_4d
    move v14, v0

    :goto_4e
    const-string v0, "  SharedUser ["

    .line 5321
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5322
    iget-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] ("

    .line 5323
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5324
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    .line 5325
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v15, "    "

    .line 5328
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5330
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5332
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    .line 5333
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8e
    const-string v5, "  "

    if-ge v2, v1, :cond_ca

    .line 5335
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v3, :cond_b0

    .line 5337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_c7

    .line 5339
    :cond_b0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "NULL?!"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_ca
    const/4 v0, 0x4

    move-object/from16 v4, p4

    .line 5343
    invoke-virtual {v4, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    :cond_d3
    move v0, v14

    goto/16 :goto_11

    .line 5347
    :cond_d6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p3

    move-object v4, v12

    move-object v10, v5

    move-object/from16 v5, v16

    .line 5349
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 5351
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_f0
    :goto_f0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5352
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 5353
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v2, v11, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v1

    .line 5356
    invoke-virtual {v12, v0}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    .line 5357
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f0

    .line 5358
    :cond_11a
    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "User "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_14f

    move v5, v13

    goto :goto_150

    :cond_14f
    const/4 v5, 0x0

    :goto_150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    goto :goto_f0

    :cond_15a
    const-string/jumbo v1, "suid,"

    .line 5365
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_171
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 5371
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 5373
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 4666
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 4667
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 4668
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4669
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4670
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v1, "Internal:"

    .line 4671
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    :cond_2a
    const-string/jumbo v3, "primary_physical"

    .line 4672
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v1, "External:"

    .line 4673
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4675
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4677
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4678
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "sdkVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4679
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "databaseVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4680
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4681
    iget-object v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4682
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4683
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4685
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 3

    .line 1464
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-nez v0, :cond_14

    .line 1466
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 1467
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 3

    .line 1455
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-nez v0, :cond_14

    .line 1457
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 1458
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3

    .line 1446
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-nez v0, :cond_14

    .line 1448
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1449
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 870
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    if-nez v15, :cond_2c

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not disabled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 875
    :cond_2c
    invoke-virtual {v1, v15}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 877
    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v15}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 879
    :cond_37
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 880
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v3

    .line 881
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v5

    .line 882
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v7

    .line 883
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v8

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v9

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v11

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v12

    .line 884
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v16

    move-object/from16 v14, v16

    .line 885
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v16

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 886
    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 880
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 888
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_99
    move-object/from16 v1, p0

    .line 890
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1593
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    if-nez v0, :cond_14

    .line 1595
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    .line 1596
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4516
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_f

    .line 4520
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p0

    return p0

    .line 4518
    :cond_f
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 3

    .line 2032
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2036
    :cond_c
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4525
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4526
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_17

    .line 4530
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 4531
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 4528
    :cond_17
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 2

    .line 6183
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object p0
.end method

.method public getDefaultRuntimePermissionsVersion(I)I
    .registers 2

    .line 1581
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersion(I)I

    move-result p0

    return p0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4511
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 4498
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 2

    .line 1606
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    const-string/jumbo v0, "primary_physical"

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 2

    .line 1602
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;
    .registers 1

    .line 792
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    return-object p0
.end method

.method public getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 784
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 788
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 2

    .line 6174
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    return-object p0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 2

    .line 6178
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object p0
.end method

.method public getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 796
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .registers 2

    .line 1409
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->getSetting(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_5e

    if-eqz p4, :cond_5e

    .line 821
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 822
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p2, v0}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ltz p2, :cond_41

    .line 828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "New shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 825
    :cond_41
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Creating shared user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;
    .registers 3

    if-eqz p1, :cond_14

    .line 4541
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 4544
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedUserSettingLPr(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    .registers 3

    .line 4535
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4536
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0
.end method

.method public final getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5

    .line 1492
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1493
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "package-restrictions-backup.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserPackagesStateBackupFile2(I)Ljava/io/File;
    .registers 5

    .line 1497
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1498
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "package-restrictions-backup2.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserPackagesStateFile(I)Ljava/io/File;
    .registers 5

    .line 1479
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1480
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "package-restrictions.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 5

    .line 1486
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1487
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "runtime-permissions.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getVerifierDeviceIdentityLPw(Lcom/android/server/pm/Computer;)Landroid/content/pm/VerifierDeviceIdentity;
    .registers 3

    .line 4483
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 4484
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4486
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;)V

    .line 4489
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object p0
.end method

.method public getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 4598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4599
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 4600
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4601
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 4602
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    return-object v0
.end method

.method public insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    .line 1301
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1302
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 1306
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1308
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    if-nez v1, :cond_29

    .line 1309
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    iput-object p2, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1312
    :cond_29
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public final invalidatePackageCache()V
    .registers 1

    .line 778
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 779
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    return-void
.end method

.method public isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 2

    .line 895
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInstallerPackage(Ljava/lang/String;)Z
    .registers 2

    .line 6338
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 2

    .line 1573
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 237
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/Settings;",
            ">;"
        }
    .end annotation

    .line 582
    new-instance v0, Lcom/android/server/pm/Settings$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/Settings$2;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public onChanged()V
    .registers 1

    .line 254
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 2

    .line 1610
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pruneRenamedPackagesLPw()V
    .registers 4

    .line 808
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 809
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-nez v1, :cond_1f

    .line 811
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public pruneSharedUsersLPw()V
    .registers 12

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 959
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 960
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    if-nez v4, :cond_32

    .line 962
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_32
    const/4 v3, 0x0

    .line 967
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v5

    .line 968
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_3d
    if-ltz v6, :cond_58

    .line 969
    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 970
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_55

    .line 971
    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v7

    :cond_55
    add-int/lit8 v6, v6, -0x1

    goto :goto_3d

    .line 976
    :cond_58
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v6

    .line 977
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_61
    if-ltz v8, :cond_7c

    .line 978
    invoke-virtual {v6, v8}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 979
    iget-object v10, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_79

    .line 980
    invoke-virtual {v6, v8}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v7

    :cond_79
    add-int/lit8 v8, v8, -0x1

    goto :goto_61

    :cond_7c
    if-eqz v3, :cond_81

    .line 985
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 987
    :cond_81
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 988
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 989
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 992
    :cond_91
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 993
    new-instance v0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public readBlockUninstallPackagesLPw(Landroid/util/TypedXmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1721
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1723
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1724
    :cond_9
    :goto_9
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_54

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 1725
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    goto :goto_9

    .line 1729
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "block-uninstall"

    .line 1730
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    const-string/jumbo v3, "packageName"

    .line 1731
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1732
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1734
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 1736
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1737
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 1740
    :cond_54
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 1741
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    goto :goto_65

    .line 1743
    :cond_60
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :goto_65
    return-void
.end method

.method public final readComponentsLPr(Landroid/util/TypedXmlPullParser;)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2043
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    .line 2045
    :cond_6
    :goto_6
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3d

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 2047
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, p0, :cond_3d

    :cond_16
    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    goto :goto_6

    .line 2052
    :cond_1c
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    .line 2053
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "name"

    .line 2054
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_39

    .line 2057
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2059
    :cond_39
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3d
    return-object v1
.end method

.method public final readCrossProfileIntentFiltersLPw(Landroid/util/TypedXmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1677
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1678
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4e

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1682
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1684
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 1685
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    .line 1687
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1689
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1690
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_4e
    return-void
.end method

.method public readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1697
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1699
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1700
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5a

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1704
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default-browser"

    .line 1705
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    .line 1706
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_34
    const-string v2, "default-dialer"

    .line 1708
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_4

    .line 1711
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under default-apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1713
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1714
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_5a
    return-void
.end method

.method public final readDefaultPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3734
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3735
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3736
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 3738
    :cond_c
    :goto_c
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 3739
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_8c

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 3744
    :cond_22
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    .line 3745
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_70

    .line 3746
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 3747
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_49

    .line 3749
    invoke-virtual {v2}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 3748
    invoke-virtual {p0, v0, v3, v2, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_c

    .line 3751
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3753
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3754
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3751
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_c

    .line 3757
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <preferred-activities>: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3758
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3757
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3759
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_8c
    return-void
.end method

.method public final readDisabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/TypedXmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4242
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 4244
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 4245
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_6f

    :cond_14
    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4

    .line 4250
    :cond_1a
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "item"

    .line 4251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    .line 4252
    invoke-interface {p2, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 4254
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_6b

    .line 4256
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4256
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6b

    .line 4261
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <disabled-components>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4262
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4261
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4264
    :goto_6b
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_6f
    return-void
.end method

.method public final readDisabledSysPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    .line 3766
    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "realName"

    .line 3767
    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "codePath"

    .line 3768
    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "requiredCpuAbi"

    .line 3770
    invoke-interface {v1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "nativeLibraryPath"

    .line 3771
    invoke-interface {v1, v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "primaryCpuAbi"

    .line 3773
    invoke-interface {v1, v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "secondaryCpuAbi"

    .line 3774
    invoke-interface {v1, v2, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "cpuAbiOverride"

    .line 3775
    invoke-interface {v1, v2, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v7, :cond_41

    if-eqz v4, :cond_41

    move-object v9, v4

    goto :goto_42

    :cond_41
    move-object v9, v7

    :goto_42
    const-string/jumbo v4, "version"

    const-wide/16 v14, 0x0

    .line 3781
    invoke-interface {v1, v2, v4, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    const/16 v23, 0x1

    const-string v4, "/priv-app/"

    .line 3786
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_5b

    const/16 v4, 0x8

    move/from16 v24, v4

    goto :goto_5d

    :cond_5b
    move/from16 v24, v7

    .line 3793
    :goto_5d
    sget-object v22, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    .line 3794
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v25, v4

    new-instance v14, Ljava/io/File;

    move v15, v7

    move-object v7, v14

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v5, v3

    move/from16 v14, v23

    move/from16 v15, v24

    invoke-direct/range {v4 .. v22}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V

    const-string v4, "ft"

    const-wide/16 v5, 0x0

    .line 3798
    invoke-interface {v1, v2, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_91

    const-string/jumbo v4, "ts"

    .line 3800
    invoke-interface {v1, v2, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    :cond_91
    move-object/from16 v4, v25

    .line 3802
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    const-string/jumbo v7, "ut"

    .line 3803
    invoke-interface {v1, v2, v7, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    const-string/jumbo v5, "userId"

    const/4 v6, 0x0

    .line 3804
    invoke-interface {v1, v2, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 3805
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    if-gtz v5, :cond_be

    const-string/jumbo v5, "sharedUserId"

    .line 3806
    invoke-interface {v1, v2, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 3807
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 3808
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :cond_be
    const/4 v5, 0x0

    const-string/jumbo v6, "loadingProgress"

    .line 3811
    invoke-interface {v1, v2, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    .line 3812
    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    .line 3814
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 3816
    :goto_cd
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_152

    const/4 v6, 0x3

    if-ne v5, v6, :cond_dd

    .line 3817
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_152

    :cond_dd
    if-eq v5, v6, :cond_14e

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e3

    goto :goto_cd

    .line 3822
    :cond_e3
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "perms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 3824
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v5

    if-eqz v5, :cond_103

    .line 3825
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v5

    goto :goto_107

    .line 3827
    :cond_103
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v5

    :goto_107
    move-object/from16 v6, p2

    .line 3829
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_cd

    :cond_10d
    move-object/from16 v6, p2

    .line 3830
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "uses-static-lib"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_120

    .line 3831
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_cd

    .line 3832
    :cond_120
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "uses-sdk-lib"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 3833
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_cd

    :cond_131
    const/4 v5, 0x5

    .line 3835
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3836
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3835
    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3837
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_cd

    :cond_14e
    move-object/from16 v6, p2

    goto/16 :goto_cd

    .line 3841
    :cond_152
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readEnabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/TypedXmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4270
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 4272
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 4273
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_6f

    :cond_14
    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4

    .line 4278
    :cond_1a
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "item"

    .line 4279
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    .line 4280
    invoke-interface {p2, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 4282
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/PackageSetting;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_6b

    .line 4284
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4286
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4284
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6b

    .line 4289
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <enabled-components>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4289
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4292
    :goto_6b
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_6f
    return-void
.end method

.method public readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2337
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 2339
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_76

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 2341
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_76

    :cond_14
    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1a

    goto :goto_4

    .line 2346
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "item"

    .line 2347
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    .line 2348
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "granted"

    .line 2349
    invoke-interface {p1, v0, v3, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "flags"

    const/4 v4, 0x0

    .line 2350
    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2351
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2352
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v6, v2, v4, v1, v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v6, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    goto :goto_41

    .line 2356
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <permissions>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 2356
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_76
    return-void
.end method

.method public readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "No start tag found in package manager settings"

    .line 3117
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x4

    const-string v8, "PackageManager"

    if-eqz v5, :cond_59

    .line 3119
    :try_start_13
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->validateSettingsFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 3120
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v1, v5, v9}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 3122
    :cond_22
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_59

    .line 3123
    :try_start_29
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v10, "Reading from backup settings file\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Need to read from backup settings file"

    .line 3124
    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3126
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 3130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cleaning up settings file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_58} :catch_5a

    goto :goto_5a

    :catch_59
    :cond_59
    const/4 v5, 0x0

    .line 3139
    :catch_5a
    :cond_5a
    :goto_5a
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3140
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3141
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 3142
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 3147
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    const/4 v11, 0x1

    const-string v12, "No external VersionInfo found in settings, using current."

    const-string v13, "No internal VersionInfo found in settings, using current."

    const-string v14, "No VersionInfo found in settings. Backup the packages.xml."

    const/4 v15, 0x0

    const-string/jumbo v10, "primary_physical"

    if-nez v5, :cond_114

    .line 3151
    :try_start_80
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f1

    .line 3152
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No settings file found\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "No settings file; creating initial state"

    .line 3153
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3157
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3158
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_a4} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_a4} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_80 .. :try_end_a4} :catch_10d
    .catchall {:try_start_80 .. :try_end_a4} :catchall_108

    .line 3287
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 3288
    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 3289
    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 3290
    :cond_b6
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 3291
    invoke-static {v8, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    .line 3294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto :goto_f0

    .line 3296
    :cond_c8
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    .line 3297
    invoke-static {v8, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3301
    :cond_de
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 3302
    invoke-static {v8, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_f0
    :goto_f0
    return v15

    .line 3161
    :cond_f1
    :try_start_f1
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->validateSettingsFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_100

    .line 3162
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1, v5, v7}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 3164
    :cond_100
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_107} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f1 .. :try_end_107} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f1 .. :try_end_107} :catch_10d
    .catchall {:try_start_f1 .. :try_end_107} :catchall_108

    goto :goto_114

    :catchall_108
    move-exception v0

    move-object v4, v0

    move-object v2, v12

    goto/16 :goto_5b6

    :catch_10d
    move-exception v0

    move-object v4, v0

    move-object/from16 v17, v9

    :goto_111
    move-object v2, v12

    goto/16 :goto_402

    .line 3166
    :cond_114
    :goto_114
    :try_start_114
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v7

    .line 3169
    :goto_118
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11c} :catch_3fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_114 .. :try_end_11c} :catch_3fd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_114 .. :try_end_11c} :catch_3fd
    .catchall {:try_start_114 .. :try_end_11c} :catchall_3f8

    const/4 v15, 0x2

    if-eq v6, v15, :cond_123

    if-eq v6, v11, :cond_123

    const/4 v15, 0x0

    goto :goto_118

    :cond_123
    if-eq v6, v15, :cond_184

    .line 3175
    :try_start_125
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "No start tag found in settings file\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    .line 3176
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3178
    invoke-static {v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_133} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_125 .. :try_end_133} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_125 .. :try_end_133} :catch_10d
    .catchall {:try_start_125 .. :try_end_133} :catchall_108

    .line 3287
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 3288
    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 3289
    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_146

    goto :goto_148

    :cond_146
    :goto_146
    const/4 v1, 0x0

    goto :goto_183

    .line 3290
    :cond_148
    :goto_148
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 3291
    invoke-static {v8, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    .line 3294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto :goto_146

    .line 3296
    :cond_15a
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_170

    .line 3297
    invoke-static {v8, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3301
    :cond_170
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_146

    .line 3302
    invoke-static {v8, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    goto :goto_146

    :goto_183
    return v1

    .line 3183
    :cond_184
    :try_start_184
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 3184
    :goto_188
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_18c} :catch_3fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_184 .. :try_end_18c} :catch_3fd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_184 .. :try_end_18c} :catch_3fd
    .catchall {:try_start_184 .. :try_end_18c} :catchall_3f8

    if-eq v6, v11, :cond_398

    const/4 v15, 0x3

    if-ne v6, v15, :cond_197

    .line 3185
    :try_start_191
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_195} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_191 .. :try_end_195} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_191 .. :try_end_195} :catch_10d
    .catchall {:try_start_191 .. :try_end_195} :catchall_108

    if-le v11, v4, :cond_398

    :cond_197
    if-eq v6, v15, :cond_38b

    const/4 v11, 0x4

    if-ne v6, v11, :cond_19e

    goto/16 :goto_395

    .line 3190
    :cond_19e
    :try_start_19e
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v15, "package"

    .line 3191
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a9} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19e .. :try_end_1a9} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19e .. :try_end_1a9} :catch_385
    .catchall {:try_start_19e .. :try_end_1a9} :catchall_108

    if-eqz v15, :cond_1b9

    .line 3192
    :try_start_1ab
    invoke-virtual {v1, v7, v2, v9}, Lcom/android/server/pm/Settings;->readPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;Landroid/util/ArrayMap;)V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ae} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ab .. :try_end_1ae} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1ab .. :try_end_1ae} :catch_10d
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_108

    :cond_1ae
    :goto_1ae
    move/from16 v16, v4

    move-object/from16 v17, v9

    move-object/from16 v18, v12

    const/4 v9, 0x0

    :goto_1b5
    move-object/from16 v4, p1

    goto/16 :goto_370

    :cond_1b9
    :try_start_1b9
    const-string/jumbo v15, "permissions"

    .line 3193
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1c0} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b9 .. :try_end_1c0} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b9 .. :try_end_1c0} :catch_385
    .catchall {:try_start_1b9 .. :try_end_1c0} :catchall_108

    if-eqz v15, :cond_1c8

    .line 3194
    :try_start_1c2
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Landroid/util/TypedXmlPullParser;)V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c7} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c2 .. :try_end_1c7} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c2 .. :try_end_1c7} :catch_10d
    .catchall {:try_start_1c2 .. :try_end_1c7} :catchall_108

    goto :goto_1ae

    :cond_1c8
    :try_start_1c8
    const-string/jumbo v15, "permission-trees"

    .line 3195
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cf} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c8 .. :try_end_1cf} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c8 .. :try_end_1cf} :catch_385
    .catchall {:try_start_1c8 .. :try_end_1cf} :catchall_108

    if-eqz v15, :cond_1d7

    .line 3196
    :try_start_1d1
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissionTrees(Landroid/util/TypedXmlPullParser;)V
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d6} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d1 .. :try_end_1d6} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d1 .. :try_end_1d6} :catch_10d
    .catchall {:try_start_1d1 .. :try_end_1d6} :catchall_108

    goto :goto_1ae

    :cond_1d7
    :try_start_1d7
    const-string/jumbo v15, "shared-user"

    .line 3197
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1de} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d7 .. :try_end_1de} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d7 .. :try_end_1de} :catch_385
    .catchall {:try_start_1d7 .. :try_end_1de} :catchall_108

    if-eqz v15, :cond_1e4

    .line 3198
    :try_start_1e0
    invoke-virtual {v1, v7, v2}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_1e3} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e0 .. :try_end_1e3} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e0 .. :try_end_1e3} :catch_10d
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_108

    goto :goto_1ae

    :cond_1e4
    :try_start_1e4
    const-string/jumbo v15, "preferred-packages"

    .line 3199
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ee

    goto :goto_1ae

    :cond_1ee
    const-string/jumbo v15, "preferred-activities"

    .line 3201
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1f5} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e4 .. :try_end_1f5} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e4 .. :try_end_1f5} :catch_385
    .catchall {:try_start_1e4 .. :try_end_1f5} :catchall_108

    if-eqz v15, :cond_1fc

    const/4 v15, 0x0

    .line 3204
    :try_start_1f8
    invoke-virtual {v1, v7, v15}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fb} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f8 .. :try_end_1fb} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f8 .. :try_end_1fb} :catch_10d
    .catchall {:try_start_1f8 .. :try_end_1fb} :catchall_108

    goto :goto_1ae

    :cond_1fc
    :try_start_1fc
    const-string/jumbo v15, "persistent-preferred-activities"

    .line 3205
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_203} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fc .. :try_end_203} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1fc .. :try_end_203} :catch_385
    .catchall {:try_start_1fc .. :try_end_203} :catchall_108

    if-eqz v15, :cond_20a

    const/4 v15, 0x0

    .line 3208
    :try_start_206
    invoke-virtual {v1, v7, v15}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_209} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_206 .. :try_end_209} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_206 .. :try_end_209} :catch_10d
    .catchall {:try_start_206 .. :try_end_209} :catchall_108

    goto :goto_1ae

    :cond_20a
    :try_start_20a
    const-string v15, "crossProfile-intent-filters"

    .line 3209
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_210
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_210} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20a .. :try_end_210} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_20a .. :try_end_210} :catch_385
    .catchall {:try_start_20a .. :try_end_210} :catchall_108

    if-eqz v15, :cond_217

    const/4 v15, 0x0

    .line 3212
    :try_start_213
    invoke-virtual {v1, v7, v15}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_213 .. :try_end_216} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_213 .. :try_end_216} :catch_10d
    .catchall {:try_start_213 .. :try_end_216} :catchall_108

    goto :goto_1ae

    :cond_217
    :try_start_217
    const-string v15, "default-browser"

    .line 3213
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21d} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_217 .. :try_end_21d} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_217 .. :try_end_21d} :catch_385
    .catchall {:try_start_217 .. :try_end_21d} :catchall_108

    if-eqz v15, :cond_224

    const/4 v15, 0x0

    .line 3214
    :try_start_220
    invoke-virtual {v1, v7, v15}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_223} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_220 .. :try_end_223} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_220 .. :try_end_223} :catch_10d
    .catchall {:try_start_220 .. :try_end_223} :catchall_108

    goto :goto_1ae

    :cond_224
    :try_start_224
    const-string/jumbo v15, "updated-package"

    .line 3215
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_22b} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_224 .. :try_end_22b} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_224 .. :try_end_22b} :catch_385
    .catchall {:try_start_224 .. :try_end_22b} :catchall_108

    if-eqz v15, :cond_232

    .line 3216
    :try_start_22d
    invoke-virtual {v1, v7, v2}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_230} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22d .. :try_end_230} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_22d .. :try_end_230} :catch_10d
    .catchall {:try_start_22d .. :try_end_230} :catchall_108

    goto/16 :goto_1ae

    :cond_232
    :try_start_232
    const-string/jumbo v15, "renamed-package"

    .line 3217
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_239} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_232 .. :try_end_239} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_232 .. :try_end_239} :catch_385
    .catchall {:try_start_232 .. :try_end_239} :catchall_108

    if-eqz v15, :cond_255

    :try_start_23b
    const-string/jumbo v6, "new"

    const/4 v15, 0x0

    .line 3218
    invoke-interface {v7, v15, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "old"

    .line 3219
    invoke-interface {v7, v15, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v6, :cond_1ae

    if-eqz v11, :cond_1ae

    .line 3221
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v6, v11}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_253
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_253} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23b .. :try_end_253} :catch_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_23b .. :try_end_253} :catch_10d
    .catchall {:try_start_23b .. :try_end_253} :catchall_108

    goto/16 :goto_1ae

    :cond_255
    :try_start_255
    const-string/jumbo v11, "last-platform-version"

    .line 3223
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_25c} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_255 .. :try_end_25c} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_255 .. :try_end_25c} :catch_385
    .catchall {:try_start_255 .. :try_end_25c} :catchall_108

    const-string v15, "fingerprint"

    const-string v2, "external"

    move/from16 v16, v4

    const-string/jumbo v4, "internal"

    if-eqz v11, :cond_28c

    .line 3225
    :try_start_267
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    .line 3227
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_271} :catch_385
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_267 .. :try_end_271} :catch_385
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_267 .. :try_end_271} :catch_385
    .catchall {:try_start_267 .. :try_end_271} :catchall_108

    move-object/from16 v17, v9

    move-object/from16 v18, v12

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 3230
    :try_start_277
    invoke-interface {v7, v9, v4, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3231
    invoke-interface {v7, v9, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3233
    invoke-static {v7, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto :goto_2ec

    :cond_28c
    move-object/from16 v17, v9

    move-object/from16 v18, v12

    const-string v9, "database-version"

    .line 3235
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b1

    .line 3237
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    .line 3239
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3242
    invoke-interface {v7, v11, v4, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3243
    invoke-interface {v7, v11, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    goto :goto_2ec

    :cond_2b1
    const-string/jumbo v2, "verifier"

    .line 3245
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e3

    const-string v2, "device"

    const/4 v4, 0x0

    .line 3246
    invoke-interface {v7, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2c1
    .catch Ljava/io/IOException; {:try_start_277 .. :try_end_2c1} :catch_37f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_277 .. :try_end_2c1} :catch_37f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_277 .. :try_end_2c1} :catch_37f
    .catchall {:try_start_277 .. :try_end_2c1} :catchall_379

    .line 3248
    :try_start_2c1
    invoke-static {v2}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_2c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c1 .. :try_end_2c7} :catch_2c8
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c7} :catch_37f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c1 .. :try_end_2c7} :catch_37f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2c1 .. :try_end_2c7} :catch_37f
    .catchall {:try_start_2c1 .. :try_end_2c7} :catchall_379

    goto :goto_2ec

    :catch_2c8
    move-exception v0

    move-object v2, v0

    .line 3250
    :try_start_2ca
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discard invalid verifier device id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3251
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3250
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ec

    :cond_2e3
    const-string/jumbo v2, "read-external-storage"

    .line 3253
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f1

    :goto_2ec
    move-object/from16 v4, p1

    const/4 v9, 0x0

    goto/16 :goto_370

    :cond_2f1
    const-string/jumbo v2, "keyset-settings"

    .line 3255
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_306

    .line 3256
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Landroid/util/TypedXmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_2ec

    :cond_306
    const-string/jumbo v2, "version"

    .line 3257
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_334

    const-string/jumbo v2, "volumeUuid"

    .line 3258
    invoke-static {v7, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3260
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    const-string/jumbo v4, "sdkVersion"

    const/4 v9, 0x0

    .line 3261
    invoke-interface {v7, v9, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v4, "databaseVersion"

    .line 3262
    invoke-interface {v7, v9, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3263
    invoke-static {v7, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_1b5

    :cond_334
    const/4 v9, 0x0

    const-string v2, "domain-verifications"

    .line 3264
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_345

    .line 3265
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlPullParser;)V

    goto :goto_370

    :cond_345
    move-object/from16 v4, p1

    const-string v2, "domain-verifications-legacy"

    .line 3266
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_355

    .line 3268
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v2, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readLegacySettings(Landroid/util/TypedXmlPullParser;)V

    goto :goto_370

    .line 3270
    :cond_355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <packages>: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3270
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_370
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_370} :catch_37f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ca .. :try_end_370} :catch_37f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2ca .. :try_end_370} :catch_37f
    .catchall {:try_start_2ca .. :try_end_370} :catchall_379

    :goto_370
    move-object/from16 v2, p2

    move/from16 v4, v16

    move-object/from16 v9, v17

    move-object/from16 v12, v18

    goto :goto_395

    :catchall_379
    move-exception v0

    move-object v4, v0

    move-object/from16 v2, v18

    goto/16 :goto_5b6

    :catch_37f
    move-exception v0

    move-object v4, v0

    move-object/from16 v2, v18

    goto/16 :goto_402

    :catch_385
    move-exception v0

    move-object/from16 v17, v9

    move-object v4, v0

    goto/16 :goto_111

    :cond_38b
    move/from16 v16, v4

    move-object/from16 v17, v9

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move/from16 v4, v16

    :goto_395
    const/4 v11, 0x1

    goto/16 :goto_188

    :cond_398
    move-object/from16 v17, v9

    move-object/from16 v18, v12

    .line 3276
    :try_start_39c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_39f
    .catch Ljava/io/IOException; {:try_start_39c .. :try_end_39f} :catch_3f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39c .. :try_end_39f} :catch_3f4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_39c .. :try_end_39f} :catch_3f4
    .catchall {:try_start_39c .. :try_end_39f} :catchall_3f0

    .line 3287
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 3288
    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 3289
    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_478

    .line 3290
    :cond_3b1
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c4

    .line 3291
    :goto_3b9
    invoke-static {v8, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    .line 3294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto/16 :goto_478

    .line 3296
    :cond_3c4
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3da

    .line 3297
    invoke-static {v8, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3301
    :cond_3da
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_478

    move-object/from16 v2, v18

    .line 3302
    :goto_3e4
    invoke-static {v8, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    goto/16 :goto_478

    :catchall_3f0
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_3fa

    :catch_3f4
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_401

    :catchall_3f8
    move-exception v0

    move-object v2, v12

    :goto_3fa
    move-object v4, v0

    goto/16 :goto_5b6

    :catch_3fd
    move-exception v0

    move-object/from16 v17, v9

    move-object v2, v12

    :goto_401
    move-object v4, v0

    .line 3278
    :goto_402
    :try_start_402
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading settings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v5, "Error reading package manager settings"

    .line 3280
    invoke-static {v8, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3283
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    .line 3284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V
    :try_end_43c
    .catchall {:try_start_402 .. :try_end_43c} :catchall_5b3

    .line 3287
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 3288
    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44e

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 3289
    invoke-virtual {v4, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_478

    .line 3290
    :cond_44e
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_458

    goto/16 :goto_3b9

    .line 3296
    :cond_458
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46e

    .line 3297
    invoke-static {v8, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3301
    :cond_46e
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_478

    goto/16 :goto_3e4

    .line 3310
    :cond_478
    :goto_478
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_47f
    if-ge v4, v2, :cond_4f7

    .line 3313
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3314
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v6

    if-gtz v6, :cond_491

    :goto_48f
    const/4 v6, 0x6

    goto :goto_4f4

    .line 3318
    :cond_491
    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 3319
    instance-of v8, v7, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_49f

    .line 3320
    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 3321
    invoke-virtual {v1, v5, v7}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_48f

    :cond_49f
    const-string v8, " has shared uid "

    const-string v9, "Bad package setting: package "

    if-eqz v7, :cond_4cd

    .line 3323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that is not a shared uid\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3325
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    .line 3326
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_4f4

    .line 3328
    :cond_4cd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that is not defined\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3330
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    .line 3331
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_4f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_47f

    .line 3334
    :cond_4f7
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3336
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_525

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3337
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50d

    goto :goto_525

    .line 3345
    :cond_50d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_511
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_536

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3346
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v5, v17

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    goto :goto_511

    .line 3339
    :cond_525
    :goto_525
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3340
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3341
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 3343
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3351
    :cond_536
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3352
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3353
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v9

    .line 3352
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    goto :goto_53a

    .line 3360
    :cond_55c
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_566
    :goto_566
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 3361
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 3362
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_566

    .line 3363
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 3364
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 3365
    iget v4, v4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    goto :goto_566

    .line 3369
    :cond_58b
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Read completed successfully: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages, "

    .line 3370
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shared uids\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    const/4 v1, 0x1

    return v1

    :catchall_5b3
    move-exception v0

    goto/16 :goto_3fa

    .line 3287
    :goto_5b6
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 3288
    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c8

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 3289
    invoke-virtual {v5, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_602

    .line 3290
    :cond_5c8
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5f9

    .line 3296
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e6

    .line 3297
    invoke-static {v8, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3301
    :cond_5e6
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v10}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_602

    .line 3302
    invoke-static {v8, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    goto :goto_602

    .line 3291
    :cond_5f9
    invoke-static {v8, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V

    .line 3294
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    .line 3308
    :cond_602
    :goto_602
    throw v4
.end method

.method public final readMimeGroupLPw(Landroid/util/TypedXmlPullParser;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "name"

    .line 4189
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 4191
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p0

    .line 4195
    :cond_e
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4196
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 4198
    :cond_17
    :goto_17
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_64

    const/4 v4, 0x3

    if-ne v3, v4, :cond_27

    .line 4199
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_64

    :cond_27
    if-eq v3, v4, :cond_17

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    goto :goto_17

    .line 4204
    :cond_2d
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mime-type"

    .line 4205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string/jumbo v3, "value"

    .line 4206
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 4208
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_47
    const/4 v3, 0x5

    .line 4211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <mime-group>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4211
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4213
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    .line 4217
    :cond_64
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final readPackageLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 72
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    const-string/jumbo v9, "true"

    const-string v10, " has bad userId "

    const-string v8, " at "

    const-string v7, "Error in package manager settings: package "

    const/4 v2, 0x0

    const/4 v15, 0x0

    :try_start_f
    const-string/jumbo v13, "name"

    .line 3883
    invoke-interface {v11, v15, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_515

    :try_start_16
    const-string/jumbo v13, "realName"

    .line 3884
    invoke-interface {v11, v15, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v3, "userId"

    .line 3885
    invoke-interface {v11, v15, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_24} :catch_502

    :try_start_24
    const-string/jumbo v6, "sharedUserId"

    .line 3886
    invoke-interface {v11, v15, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string v1, "codePath"

    .line 3887
    invoke-interface {v11, v15, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "requiredCpuAbi"

    .line 3889
    invoke-interface {v11, v15, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "nativeLibraryPath"

    .line 3891
    invoke-interface {v11, v15, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_3f} :catch_4f0

    :try_start_3f
    const-string/jumbo v5, "primaryCpuAbi"

    .line 3892
    invoke-interface {v11, v15, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_46} :catch_4dd

    :try_start_46
    const-string/jumbo v0, "secondaryCpuAbi"

    .line 3893
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4d} :catch_4c1

    :try_start_4d
    const-string v0, "cpuAbiOverride"

    .line 3894
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v0, "updateAvailable"

    .line 3895
    invoke-interface {v11, v15, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v41
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_5a} :catch_4ac

    :try_start_5a
    const-string v0, "forceQueryable"

    .line 3896
    invoke-interface {v11, v15, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v42
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_60} :catch_497

    :try_start_60
    const-string/jumbo v0, "loadingProgress"
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_63} :catch_481

    const/4 v2, 0x0

    .line 3897
    :try_start_64
    invoke-interface {v11, v15, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v43
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_68} :catch_47b

    if-nez v5, :cond_6f

    if-eqz v4, :cond_6f

    move-object/from16 v44, v4

    goto :goto_71

    :cond_6f
    move-object/from16 v44, v5

    :goto_71
    :try_start_71
    const-string/jumbo v0, "version"
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_74} :catch_46f

    const-wide/16 v4, 0x0

    .line 3903
    :try_start_76
    invoke-interface {v11, v15, v0, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v28
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_7a} :catch_465

    :try_start_7a
    const-string/jumbo v0, "installer"

    .line 3904
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_81} :catch_46f

    :try_start_81
    const-string/jumbo v0, "installerAttributionTag"

    .line 3905
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_88} :catch_454

    :try_start_88
    const-string/jumbo v0, "packageSource"

    const/4 v2, 0x0

    .line 3906
    invoke-interface {v11, v15, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v47
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_90} :catch_443

    :try_start_90
    const-string/jumbo v0, "isOrphaned"

    .line 3908
    invoke-interface {v11, v15, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v48
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_97} :catch_432

    :try_start_97
    const-string/jumbo v0, "installInitiator"

    .line 3909
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_9e} :catch_421

    :try_start_9e
    const-string/jumbo v0, "installOriginator"

    .line 3910
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_a5} :catch_410

    :try_start_a5
    const-string/jumbo v0, "installInitiatorUninstalled"

    const/4 v2, 0x0

    .line 3911
    invoke-interface {v11, v15, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v51
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_a5 .. :try_end_ad} :catch_3ff

    :try_start_ad
    const-string/jumbo v0, "volumeUuid"

    .line 3913
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b4} :catch_3ee

    :try_start_b4
    const-string v0, "categoryHint"
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_b6} :catch_3dd

    const/4 v4, -0x1

    .line 3914
    :try_start_b7
    invoke-interface {v11, v15, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v53
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_bb} :catch_3d7

    :try_start_bb
    const-string v0, "domainSetId"

    .line 3917
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3919
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_c5} :catch_3ca

    if-eqz v2, :cond_de

    .line 3921
    :try_start_c7
    iget-object v0, v12, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_cd} :catch_ce

    goto :goto_e2

    :catch_ce
    move v2, v3

    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v3, v15

    move/from16 v1, v53

    const-wide/16 v4, 0x0

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    :goto_db
    move-object v15, v14

    goto/16 :goto_540

    .line 3923
    :cond_de
    :try_start_de
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    :goto_e2
    move-object/from16 v38, v0

    const-string/jumbo v0, "publicFlags"

    .line 3926
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_eb} :catch_3ca

    if-eqz v0, :cond_10c

    .line 3929
    :try_start_ed
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_f1
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f1} :catch_f2

    goto :goto_f3

    :catch_f2
    const/4 v2, 0x0

    :goto_f3
    :try_start_f3
    const-string/jumbo v0, "privateFlags"

    .line 3932
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_fa} :catch_ce

    if-eqz v0, :cond_106

    .line 3935
    :try_start_fc
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_100
    .catch Ljava/lang/NumberFormatException; {:try_start_fc .. :try_end_100} :catch_106

    move/from16 v31, v0

    move/from16 v30, v2

    :goto_104
    const/4 v2, 0x0

    goto :goto_156

    :catch_106
    :cond_106
    move/from16 v30, v2

    const/4 v2, 0x0

    const/16 v31, 0x0

    goto :goto_156

    :cond_10c
    :try_start_10c
    const-string v0, "flags"

    .line 3941
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_112
    .catch Ljava/lang/NumberFormatException; {:try_start_10c .. :try_end_112} :catch_3ca

    if-eqz v0, :cond_13d

    .line 3944
    :try_start_114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_118
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_118} :catch_119

    goto :goto_11a

    :catch_119
    const/4 v2, 0x0

    .line 3947
    :goto_11a
    :try_start_11a
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v4, v2, v0

    if-eqz v4, :cond_122

    const/4 v4, 0x1

    goto :goto_123

    :cond_122
    const/4 v4, 0x0

    .line 3950
    :goto_123
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v16, v2, v5

    if-eqz v16, :cond_12b

    or-int/lit8 v4, v4, 0x2

    .line 3953
    :cond_12b
    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_11a .. :try_end_12d} :catch_ce

    and-int v17, v2, v16

    if-eqz v17, :cond_133

    or-int/lit8 v4, v4, 0x8

    :cond_133
    or-int/2addr v0, v5

    or-int v0, v0, v16

    not-int v0, v0

    and-int/2addr v0, v2

    move/from16 v30, v0

    move/from16 v31, v4

    goto :goto_104

    :cond_13d
    :try_start_13d
    const-string/jumbo v0, "system"

    .line 3961
    invoke-interface {v11, v15, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_144
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_144} :catch_3ca

    if-eqz v0, :cond_151

    .line 3963
    :try_start_146
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_14a
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_14a} :catch_ce

    const/4 v2, 0x0

    or-int/2addr v0, v2

    move/from16 v30, v0

    move/from16 v31, v2

    goto :goto_156

    :cond_151
    const/4 v2, 0x0

    move/from16 v31, v2

    const/16 v30, 0x1

    :goto_156
    :try_start_156
    const-string v0, "ft"
    :try_end_158
    .catch Ljava/lang/NumberFormatException; {:try_start_156 .. :try_end_158} :catch_3ca

    const-wide/16 v4, 0x0

    .line 3972
    :try_start_15a
    invoke-interface {v11, v15, v0, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16
    :try_end_15e
    .catch Ljava/lang/NumberFormatException; {:try_start_15a .. :try_end_15e} :catch_3bd

    cmp-long v0, v16, v4

    if-nez v0, :cond_177

    :try_start_162
    const-string/jumbo v0, "ts"

    .line 3974
    invoke-interface {v11, v15, v0, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16
    :try_end_169
    .catch Ljava/lang/NumberFormatException; {:try_start_162 .. :try_end_169} :catch_16a

    goto :goto_177

    :catch_16a
    move v2, v3

    move-wide/from16 v60, v4

    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v3, v15

    move/from16 v1, v53

    :goto_174
    const/4 v9, 0x5

    goto/16 :goto_db

    :cond_177
    :goto_177
    move-wide/from16 v54, v16

    :try_start_179
    const-string/jumbo v0, "it"

    .line 3976
    invoke-interface {v11, v15, v0, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v56
    :try_end_180
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_180} :catch_3bd

    :try_start_180
    const-string/jumbo v0, "ut"
    :try_end_183
    .catch Ljava/lang/NumberFormatException; {:try_start_180 .. :try_end_183} :catch_3ae

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 3977
    :try_start_187
    invoke-interface {v11, v15, v0, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9
    :try_end_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_187 .. :try_end_18b} :catch_3a4

    if-eqz v13, :cond_1a3

    .line 3982
    :try_start_18d
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_1a5

    :catch_194
    move v2, v3

    move-wide/from16 v60, v4

    move-object v6, v8

    move-object v0, v12

    move-object v3, v15

    move-object/from16 v67, v20

    move-object/from16 v10, v21

    move/from16 v1, v53

    move-wide/from16 v4, v56

    goto :goto_174

    :cond_1a3
    move-object/from16 v22, v13

    :goto_1a5
    if-nez v14, :cond_1db

    .line 3985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3987
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1bc
    .catch Ljava/lang/NumberFormatException; {:try_start_18d .. :try_end_1bc} :catch_194

    const/4 v1, 0x5

    .line 3985
    :try_start_1bd
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1c0
    .catch Ljava/lang/NumberFormatException; {:try_start_1bd .. :try_end_1c0} :catch_1ca

    move-wide/from16 v60, v4

    move-object v6, v8

    move-object v0, v12

    move-object v8, v14

    move-object/from16 v67, v20

    const/4 v9, 0x5

    goto/16 :goto_37f

    :catch_1ca
    move v9, v1

    move v2, v3

    move-wide/from16 v60, v4

    move-object v6, v8

    move-object v0, v12

    :goto_1d0
    move-object v3, v15

    move-object/from16 v67, v20

    move-object/from16 v10, v21

    move/from16 v1, v53

    move-wide/from16 v4, v56

    goto/16 :goto_db

    :cond_1db
    if-nez v1, :cond_207

    .line 3989
    :try_start_1dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f2
    .catch Ljava/lang/NumberFormatException; {:try_start_1dd .. :try_end_1f2} :catch_194

    const/4 v13, 0x5

    .line 3989
    :try_start_1f3
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1f6
    .catch Ljava/lang/NumberFormatException; {:try_start_1f3 .. :try_end_1f6} :catch_200

    move-wide/from16 v60, v4

    move-object v6, v8

    move-object v0, v12

    move v9, v13

    move-object v8, v14

    move-object/from16 v67, v20

    goto/16 :goto_37f

    :catch_200
    move v2, v3

    move-wide/from16 v60, v4

    move-object v6, v8

    move-object v0, v12

    move v9, v13

    goto :goto_1d0

    :cond_207
    const/4 v13, 0x5

    if-lez v3, :cond_2b8

    .line 3993
    :try_start_20a
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_213
    .catch Ljava/lang/NumberFormatException; {:try_start_20a .. :try_end_213} :catch_2a3

    const/4 v1, 0x0

    move/from16 v19, v13

    move-object v13, v1

    move-object/from16 v58, v14

    move-object v14, v1

    move-object v15, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move v6, v2

    move-object/from16 v2, v22

    move/from16 v59, v3

    move-object/from16 v3, v23

    move-wide/from16 v60, v4

    move-object/from16 v4, v39

    move-object/from16 v5, v44

    move-object/from16 v6, v40

    move-object/from16 v62, v7

    move-object/from16 v7, v27

    move-object/from16 v63, v8

    move/from16 v8, v59

    move-wide/from16 v64, v9

    move-object/from16 v67, v20

    move-object/from16 v66, v21

    move-wide/from16 v9, v28

    move/from16 v11, v30

    move/from16 v12, v31

    move-object/from16 v18, v38

    :try_start_249
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15
    :try_end_24d
    .catch Ljava/lang/NumberFormatException; {:try_start_249 .. :try_end_24d} :catch_29f

    if-nez v15, :cond_276

    const/4 v0, 0x6

    .line 4003
    :try_start_250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure adding uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25a
    .catch Ljava/lang/NumberFormatException; {:try_start_250 .. :try_end_25a} :catch_273

    move/from16 v3, v59

    :try_start_25c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while parsing settings at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4003
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_282

    :catch_273
    move/from16 v3, v59

    goto :goto_28d

    :cond_276
    move-wide/from16 v4, v54

    move/from16 v3, v59

    .line 4007
    invoke-virtual {v15, v4, v5}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v7, v64

    .line 4008
    invoke-virtual {v15, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    :try_end_282
    .catch Ljava/lang/NumberFormatException; {:try_start_25c .. :try_end_282} :catch_28d

    :goto_282
    move-object/from16 v0, p0

    :goto_284
    move-object/from16 v8, v58

    move-object/from16 v7, v62

    move-object/from16 v6, v63

    const/4 v9, 0x5

    goto/16 :goto_380

    :catch_28d
    :goto_28d
    move-object/from16 v0, p0

    :catch_28f
    move v2, v3

    move-object v3, v15

    move/from16 v1, v53

    move-wide/from16 v4, v56

    move-object/from16 v15, v58

    move-object/from16 v7, v62

    move-object/from16 v6, v63

    move-object/from16 v10, v66

    goto/16 :goto_30d

    :catch_29f
    move/from16 v3, v59

    goto/16 :goto_2fd

    :catch_2a3
    move-wide/from16 v60, v4

    move-object/from16 v58, v14

    move-object/from16 v67, v20

    move-object/from16 v0, p0

    move v2, v3

    move-object v6, v8

    move v9, v13

    move-object/from16 v10, v21

    move/from16 v1, v53

    move-wide/from16 v4, v56

    move-object/from16 v15, v58

    goto/16 :goto_3eb

    :cond_2b8
    move-wide/from16 v60, v4

    move-object/from16 v62, v7

    move-object/from16 v63, v8

    move-wide v7, v9

    move-object/from16 v58, v14

    move-object/from16 v67, v20

    move-object/from16 v66, v21

    move-wide/from16 v4, v54

    if-eqz v6, :cond_352

    if-lez v6, :cond_310

    .line 4012
    :try_start_2cb
    new-instance v15, Lcom/android/server/pm/PackageSetting;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v20, v15

    move-object/from16 v23, v0

    move-object/from16 v24, v39

    move-object/from16 v25, v44

    move-object/from16 v26, v40

    move/from16 v32, v6

    invoke-direct/range {v20 .. v38}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V
    :try_end_2ef
    .catch Ljava/lang/NumberFormatException; {:try_start_2cb .. :try_end_2ef} :catch_2fd

    .line 4021
    :try_start_2ef
    invoke-virtual {v15, v4, v5}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 4022
    invoke-virtual {v15, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    :try_end_2f5
    .catch Ljava/lang/NumberFormatException; {:try_start_2ef .. :try_end_2f5} :catch_28d

    move-object/from16 v0, p0

    .line 4023
    :try_start_2f7
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1, v15}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2fc
    .catch Ljava/lang/NumberFormatException; {:try_start_2f7 .. :try_end_2fc} :catch_28f

    goto :goto_284

    :catch_2fd
    :goto_2fd
    move-object/from16 v0, p0

    move v2, v3

    move/from16 v1, v53

    move-wide/from16 v4, v56

    move-object/from16 v15, v58

    move-object/from16 v7, v62

    move-object/from16 v6, v63

    move-object/from16 v10, v66

    const/4 v3, 0x0

    :goto_30d
    const/4 v9, 0x5

    goto/16 :goto_540

    :cond_310
    move-object/from16 v0, p0

    .line 4028
    :try_start_312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_317
    .catch Ljava/lang/NumberFormatException; {:try_start_312 .. :try_end_317} :catch_341

    move-object/from16 v7, v62

    :try_start_319
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31c
    .catch Ljava/lang/NumberFormatException; {:try_start_319 .. :try_end_31c} :catch_33e

    move-object/from16 v8, v58

    :try_start_31e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_329
    .catch Ljava/lang/NumberFormatException; {:try_start_31e .. :try_end_329} :catch_345

    move-object/from16 v6, v63

    :try_start_32b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_339
    .catch Ljava/lang/NumberFormatException; {:try_start_32b .. :try_end_339} :catch_347

    const/4 v9, 0x5

    .line 4028
    :try_start_33a
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_33d
    .catch Ljava/lang/NumberFormatException; {:try_start_33a .. :try_end_33d} :catch_348

    goto :goto_37f

    :catch_33e
    move-object/from16 v8, v58

    goto :goto_345

    :catch_341
    move-object/from16 v8, v58

    move-object/from16 v7, v62

    :catch_345
    :goto_345
    move-object/from16 v6, v63

    :catch_347
    const/4 v9, 0x5

    :catch_348
    move v2, v3

    move-object v15, v8

    move/from16 v1, v53

    move-wide/from16 v4, v56

    move-object/from16 v10, v66

    goto/16 :goto_3eb

    :cond_352
    move-object/from16 v0, p0

    move-object/from16 v8, v58

    move-object/from16 v7, v62

    move-object/from16 v6, v63

    const/4 v9, 0x5

    .line 4034
    :try_start_35b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_366
    .catch Ljava/lang/NumberFormatException; {:try_start_35b .. :try_end_366} :catch_3a1

    move-object/from16 v10, v66

    :try_start_368
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4034
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_37f
    .catch Ljava/lang/NumberFormatException; {:try_start_368 .. :try_end_37f} :catch_3b6

    :goto_37f
    const/4 v15, 0x0

    :goto_380
    move-object v14, v8

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    move/from16 v5, v43

    move-object/from16 v8, v44

    move-object/from16 v18, v45

    move-object/from16 v19, v46

    move/from16 v20, v47

    move/from16 v21, v48

    move-object/from16 v16, v49

    move-object/from16 v17, v50

    move/from16 v22, v51

    move-object/from16 v10, v52

    move/from16 v11, v53

    goto/16 :goto_583

    :catch_3a1
    move-object/from16 v10, v66

    goto :goto_3b6

    :catch_3a4
    move-wide/from16 v60, v4

    move-object v6, v8

    move-object v0, v12

    move-object v8, v14

    move-object/from16 v67, v20

    move-object/from16 v10, v21

    goto :goto_3b5

    :catch_3ae
    move-wide/from16 v60, v4

    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    :goto_3b5
    const/4 v9, 0x5

    :catch_3b6
    :goto_3b6
    move v2, v3

    move-object v15, v8

    move/from16 v1, v53

    move-wide/from16 v4, v56

    goto :goto_3eb

    :catch_3bd
    move-wide/from16 v60, v4

    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v9, 0x5

    move v2, v3

    move-object v15, v8

    move/from16 v1, v53

    goto :goto_3eb

    :catch_3ca
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move-object v15, v8

    move/from16 v1, v53

    goto :goto_3e9

    :catch_3d7
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    goto :goto_3e3

    :catch_3dd
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    :goto_3e3
    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    :goto_3e9
    move-wide/from16 v4, v60

    :goto_3eb
    const/4 v3, 0x0

    goto/16 :goto_540

    :catch_3ee
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_53e

    :catch_3ff
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_53c

    :catch_410
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_53a

    :catch_421
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_538

    :catch_432
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_536

    :catch_443
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_534

    :catch_454
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_532

    :catch_465
    move-wide/from16 v60, v4

    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    goto :goto_478

    :catch_46f
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    :goto_478
    move v2, v3

    move v1, v4

    goto :goto_491

    :catch_47b
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    goto :goto_487

    :catch_481
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    :goto_487
    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v2, v3

    move v1, v4

    move-object/from16 v44, v5

    :goto_491
    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto/16 :goto_530

    :catch_497
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v2, v3

    move v1, v4

    move-object/from16 v44, v5

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto :goto_4d9

    :catch_4ac
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v2, v3

    move v1, v4

    move-object/from16 v44, v5

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto :goto_4d7

    :catch_4c1
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v2, v3

    move v1, v4

    move-object/from16 v44, v5

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    const/16 v40, 0x0

    :goto_4d7
    const/16 v41, 0x0

    :goto_4d9
    const/16 v42, 0x0

    goto/16 :goto_530

    :catch_4dd
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v3, 0x0

    goto :goto_528

    :catch_4f0
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v2, v3

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    goto :goto_513

    :catch_502
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    move-object v8, v14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v1, v4

    move-object v15, v8

    move-wide/from16 v4, v60

    const/4 v2, 0x0

    :goto_513
    const/4 v3, 0x0

    goto :goto_526

    :catch_515
    move-object v6, v8

    move-object/from16 v67, v9

    move-object v0, v12

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x5

    const-wide/16 v60, 0x0

    move/from16 v43, v2

    move v1, v4

    move-wide/from16 v4, v60

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_526
    const/16 v39, 0x0

    :goto_528
    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    :goto_530
    const/16 v45, 0x0

    :goto_532
    const/16 v46, 0x0

    :goto_534
    const/16 v47, 0x0

    :goto_536
    const/16 v48, 0x0

    :goto_538
    const/16 v49, 0x0

    :goto_53a
    const/16 v50, 0x0

    :goto_53c
    const/16 v51, 0x0

    :goto_53e
    const/16 v52, 0x0

    .line 4039
    :goto_540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4039
    invoke-static {v9, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move v11, v1

    move-wide/from16 v56, v4

    move-object v14, v15

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v4, v42

    move/from16 v5, v43

    move-object/from16 v8, v44

    move-object/from16 v18, v45

    move-object/from16 v19, v46

    move/from16 v20, v47

    move/from16 v21, v48

    move-object/from16 v16, v49

    move-object/from16 v17, v50

    move/from16 v22, v51

    move-object/from16 v10, v52

    move-object v15, v3

    move/from16 v3, v41

    :goto_583
    if-eqz v15, :cond_7ee

    .line 4044
    invoke-static/range {v16 .. v22}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v12

    .line 4048
    invoke-virtual {v15, v12}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 4049
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 4050
    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageSetting;->setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 4051
    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4052
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4053
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4054
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4055
    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4056
    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    const-string v1, "enabled"

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 4058
    invoke-interface {v2, v3, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60e

    .line 4061
    :try_start_5b7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_5bb
    .catch Ljava/lang/NumberFormatException; {:try_start_5b7 .. :try_end_5bb} :catch_5c1

    const/4 v5, 0x0

    :try_start_5bc
    invoke-virtual {v15, v4, v5, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_5bf
    .catch Ljava/lang/NumberFormatException; {:try_start_5bc .. :try_end_5bf} :catch_5c2

    const/4 v4, 0x1

    goto :goto_613

    :catch_5c1
    const/4 v5, 0x0

    :catch_5c2
    move-object/from16 v4, v67

    .line 4063
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5cf

    const/4 v4, 0x1

    .line 4064
    invoke-virtual {v15, v4, v5, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_613

    :cond_5cf
    const/4 v4, 0x1

    const-string v8, "false"

    .line 4065
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5dd

    const/4 v1, 0x2

    .line 4066
    invoke-virtual {v15, v1, v5, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_613

    :cond_5dd
    const-string v8, "default"

    .line 4067
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e9

    .line 4068
    invoke-virtual {v15, v5, v5, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_613

    .line 4070
    :cond_5e9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has bad enabled value: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4070
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_613

    :cond_60e
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4077
    invoke-virtual {v15, v5, v5, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4080
    :goto_613
    invoke-virtual {v0, v12}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 4082
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4084
    :cond_61a
    :goto_61a
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_7dc

    const/4 v7, 0x3

    if-ne v6, v7, :cond_629

    .line 4085
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_7dc

    :cond_629
    if-eq v6, v7, :cond_7d8

    const/4 v7, 0x4

    if-ne v6, v7, :cond_62f

    goto :goto_61a

    .line 4090
    :cond_62f
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "disabled-components"

    .line 4092
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_640

    .line 4093
    invoke-virtual {v0, v15, v2, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/TypedXmlPullParser;I)V

    goto/16 :goto_7d8

    :cond_640
    const-string v7, "enabled-components"

    .line 4094
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64d

    .line 4095
    invoke-virtual {v0, v15, v2, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/TypedXmlPullParser;I)V

    goto/16 :goto_7d8

    :cond_64d
    const-string/jumbo v7, "sigs"

    .line 4096
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_665

    .line 4097
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 4098
    invoke-virtual {v7}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/server/pm/PackageSignatures;->readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_7d8

    :cond_665
    const-string/jumbo v7, "perms"

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_694

    .line 4101
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v6

    if-eqz v6, :cond_685

    .line 4103
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v6

    .line 4102
    invoke-virtual {v0, v6}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v6

    if-eqz v6, :cond_683

    .line 4105
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    goto :goto_689

    :cond_683
    move-object v6, v3

    goto :goto_689

    .line 4107
    :cond_685
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    :goto_689
    if-eqz v6, :cond_7d8

    move-object/from16 v7, p2

    .line 4110
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 4111
    invoke-virtual {v15, v4}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_61a

    :cond_694
    move-object/from16 v7, p2

    const-string/jumbo v8, "proper-signing-keyset"

    .line 4113
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v10, "identifier"

    if-eqz v8, :cond_6dd

    .line 4114
    invoke-interface {v2, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 4115
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6c7

    .line 4117
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v12, v6}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d4

    .line 4119
    :cond_6c7
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v8, v12}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    :goto_6d4
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_61a

    :cond_6dd
    const-string/jumbo v8, "signing-keyset"

    .line 4122
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e8

    goto/16 :goto_61a

    :cond_6e8
    const-string/jumbo v8, "upgrade-keyset"

    .line 4124
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6fe

    .line 4125
    invoke-interface {v2, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 4126
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    goto/16 :goto_61a

    :cond_6fe
    const-string v8, "defined-keyset"

    .line 4127
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_747

    .line 4128
    invoke-interface {v2, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    const-string v6, "alias"

    .line 4129
    invoke-interface {v2, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4130
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_731

    .line 4132
    iget-object v12, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v13, v8}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73e

    .line 4134
    :cond_731
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    :goto_73e
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v8

    invoke-virtual {v8, v10, v11, v6}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_61a

    :cond_747
    const-string/jumbo v8, "install-initiator-sigs"

    .line 4137
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76b

    .line 4138
    new-instance v6, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v6}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 4139
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/pm/PackageSignatures;->readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 4141
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    .line 4142
    invoke-virtual {v8, v6}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v6

    .line 4140
    invoke-virtual {v15, v6}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    goto/16 :goto_61a

    :cond_76b
    const-string v8, "domain-verification"

    .line 4143
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_783

    .line 4144
    new-instance v6, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v6, v2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 4145
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto/16 :goto_61a

    :cond_783
    const-string/jumbo v8, "mime-group"

    .line 4150
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79f

    .line 4151
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->readMimeGroupLPw(Landroid/util/TypedXmlPullParser;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_61a

    .line 4153
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    invoke-virtual {v15, v8, v6}, Lcom/android/server/pm/PackageSetting;->addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    goto/16 :goto_61a

    :cond_79f
    const-string/jumbo v8, "uses-static-lib"

    .line 4156
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7ad

    .line 4157
    invoke-virtual {v0, v2, v15}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_61a

    :cond_7ad
    const-string/jumbo v8, "uses-sdk-lib"

    .line 4158
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7bb

    .line 4159
    invoke-virtual {v0, v2, v15}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_61a

    .line 4161
    :cond_7bb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <package>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4162
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4161
    invoke-static {v9, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4163
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_61a

    :cond_7d8
    :goto_7d8
    move-object/from16 v7, p2

    goto/16 :goto_61a

    :cond_7dc
    cmp-long v0, v56, v60

    if-eqz v0, :cond_7f3

    .line 4167
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f3

    :cond_7ee
    move-object/from16 v2, p1

    .line 4170
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7f3
    :goto_7f3
    return-void
.end method

.method public readPackageRestrictionsLPr(ILandroid/util/ArrayMap;Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V
    .registers 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string/jumbo v15, "suspending-package"

    const-string/jumbo v14, "pkg"

    .line 1754
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 1755
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v4

    .line 1756
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile2(I)Ljava/io/File;

    move-result-object v5

    .line 1757
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v13, "PackageManager"

    const/4 v12, 0x4

    const/4 v11, 0x0

    if-eqz v6, :cond_58

    .line 1759
    :try_start_20
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->validateSettingsFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1760
    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1762
    :cond_29
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_58

    .line 1763
    :try_start_2e
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v7, "Reading from backup stopped packages file\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Need to read from backup stopped packages file"

    .line 1764
    invoke-static {v12, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1766
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up stopped packages file "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_57} :catch_59

    goto :goto_59

    :catch_58
    :cond_58
    move-object v6, v11

    :catch_59
    :cond_59
    :goto_59
    if-nez v6, :cond_cc

    .line 1781
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_ac

    .line 1782
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No stopped packages file found\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file; assuming all started"

    .line 1783
    invoke-static {v12, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1790
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_77
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_83} :catch_c5
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_83} :catch_c5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5b .. :try_end_83} :catch_c5

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v15, v13

    move v13, v14

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move/from16 v3, p1

    .line 1791
    :try_start_a3
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    move/from16 v3, p1

    move-object/from16 v13, v25

    goto :goto_77

    :cond_ab
    return-void

    :cond_ac
    move-object/from16 v25, v13

    .line 1812
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->validateSettingsFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 1813
    invoke-virtual {v1, v5, v2}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1815
    :cond_b7
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_bc} :catch_bd
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_bc} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a3 .. :try_end_bc} :catch_bd

    goto :goto_ce

    :catch_bd
    move-exception v0

    move/from16 v3, p1

    :goto_c0
    move-object v2, v0

    :goto_c1
    move-object/from16 v5, v25

    goto/16 :goto_447

    :catch_c5
    move-exception v0

    move/from16 v3, p1

    move-object v2, v0

    move-object v5, v13

    goto/16 :goto_447

    :cond_cc
    move-object/from16 v25, v13

    :goto_ce
    move-object/from16 v24, v6

    .line 1818
    :try_start_d0
    invoke-static/range {v24 .. v24}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v13

    .line 1821
    :goto_d4
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_d8} :catch_441
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d8} :catch_441
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d0 .. :try_end_d8} :catch_441

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eq v2, v10, :cond_df

    if-eq v2, v9, :cond_df

    goto :goto_d4

    :cond_df
    const/4 v8, 0x5

    if-eq v2, v10, :cond_ef

    .line 1827
    :try_start_e2
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in package restrictions file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "No start tag found in package manager stopped packages"

    .line 1828
    invoke-static {v8, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_ee} :catch_bd
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_ee} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e2 .. :try_end_ee} :catch_bd

    return-void

    .line 1833
    :cond_ef
    :try_start_ef
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    .line 1835
    :goto_f3
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_f7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ef .. :try_end_f7} :catch_441
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f7} :catch_441
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ef .. :try_end_f7} :catch_441

    if-eq v2, v9, :cond_437

    const/4 v3, 0x3

    if-ne v2, v3, :cond_102

    .line 1837
    :try_start_fc
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4
    :try_end_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fc .. :try_end_100} :catch_bd
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_100} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_fc .. :try_end_100} :catch_bd

    if-le v4, v7, :cond_437

    :cond_102
    if-eq v2, v3, :cond_431

    if-ne v2, v12, :cond_107

    goto :goto_f3

    .line 1843
    :cond_107
    :try_start_107
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1844
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_10f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_10f} :catch_441
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10f} :catch_441
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_107 .. :try_end_10f} :catch_441

    if-eqz v4, :cond_39b

    :try_start_111
    const-string/jumbo v2, "name"

    .line 1845
    invoke-interface {v13, v11, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_13e

    .line 1848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known for stopped package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_133
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_111 .. :try_end_133} :catch_bd
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_133} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_111 .. :try_end_133} :catch_bd

    move-object/from16 v4, v25

    :try_start_135
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v25, v4

    goto :goto_f3

    :cond_13e
    move-object/from16 v4, v25

    const-string v5, "ceDataInode"
    :try_end_142
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_135 .. :try_end_142} :catch_394
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_142} :catch_394
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_135 .. :try_end_142} :catch_394

    const-wide/16 v3, 0x0

    .line 1855
    :try_start_144
    invoke-interface {v13, v11, v5, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    const-string/jumbo v5, "inst"

    .line 1857
    invoke-interface {v13, v11, v5, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v19

    const-string/jumbo v5, "stopped"

    const/4 v8, 0x0

    .line 1859
    invoke-interface {v13, v11, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v21

    const-string/jumbo v5, "nl"

    .line 1861
    invoke-interface {v13, v11, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v22

    const-string/jumbo v5, "hidden"

    .line 1865
    invoke-interface {v13, v11, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_16d

    const-string v5, "blocked"

    .line 1867
    invoke-interface {v13, v11, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    :cond_16d
    move/from16 v23, v5

    const-string v5, "distraction_flags"

    .line 1870
    invoke-interface {v13, v11, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    const-string/jumbo v5, "suspended"

    .line 1871
    invoke-interface {v13, v11, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1872
    invoke-interface {v13, v11, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v10, "suspend_dialog_message"

    .line 1874
    invoke-interface {v13, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_18d

    if-nez v27, :cond_18d

    const-string v27, "android"

    :cond_18d
    move-object/from16 v29, v27

    const-string v12, "blockUninstall"

    .line 1881
    invoke-interface {v13, v11, v12, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v9, "instant-app"

    .line 1883
    invoke-interface {v13, v11, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v31

    const-string/jumbo v9, "virtual-preload"

    .line 1885
    invoke-interface {v13, v11, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    const-string v9, "enabled"

    .line 1886
    invoke-interface {v13, v11, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    const-string v3, "enabledCaller"

    .line 1888
    invoke-interface {v13, v11, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v3, "harmful-app-warning"

    .line 1891
    invoke-interface {v13, v11, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v3, "domainVerificationStatus"

    .line 1892
    invoke-interface {v13, v11, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v3, "install-reason"

    .line 1895
    invoke-interface {v13, v11, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    const-string/jumbo v3, "uninstall-reason"

    .line 1897
    invoke-interface {v13, v11, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v36

    const-string/jumbo v3, "splash-screen-theme"

    .line 1899
    invoke-interface {v13, v11, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v3, "first-install-time"

    move/from16 v38, v9

    const-wide/16 v8, 0x0

    .line 1901
    invoke-interface {v13, v11, v3, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v39

    .line 1910
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    move-object v8, v11

    move-object v9, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    .line 1912
    :goto_1e9
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v11

    move/from16 v45, v4

    const/4 v4, 0x1

    if-eq v11, v4, :cond_2d5

    const/4 v4, 0x3

    if-ne v11, v4, :cond_1fc

    .line 1914
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_2d5

    const/4 v4, 0x3

    :cond_1fc
    if-eq v11, v4, :cond_2cd

    const/4 v4, 0x4

    if-ne v11, v4, :cond_203

    goto/16 :goto_2cd

    .line 1919
    :cond_203
    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v46

    sparse-switch v46, :sswitch_data_484

    goto :goto_24f

    :sswitch_20f
    const-string/jumbo v11, "suspended-dialog-info"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    const/4 v4, 0x4

    goto :goto_250

    :sswitch_21a
    const-string/jumbo v11, "suspend-params"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    const/4 v4, 0x5

    goto :goto_250

    :sswitch_225
    const-string/jumbo v11, "suspended-launcher-extras"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    const/4 v4, 0x3

    goto :goto_250

    :sswitch_230
    const-string/jumbo v11, "suspended-app-extras"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    const/4 v4, 0x2

    goto :goto_250

    :sswitch_23b
    const-string v11, "enabled-components"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24f

    const/4 v4, 0x0

    goto :goto_250

    :sswitch_245
    const-string v11, "disabled-components"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_24b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_144 .. :try_end_24b} :catch_bd
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_24b} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_144 .. :try_end_24b} :catch_bd

    if-eqz v4, :cond_24f

    const/4 v4, 0x1

    goto :goto_250

    :cond_24f
    :goto_24f
    const/4 v4, -0x1

    :goto_250
    if-eqz v4, :cond_2c6

    const/4 v11, 0x1

    if-eq v4, v11, :cond_2bf

    const/4 v11, 0x2

    if-eq v4, v11, :cond_2b7

    const/4 v11, 0x3

    if-eq v4, v11, :cond_2ae

    const/4 v11, 0x4

    if-eq v4, v11, :cond_2a6

    const-string v11, "PackageSettings"

    move/from16 v46, v7

    const/4 v7, 0x5

    if-eq v4, v7, :cond_286

    .line 1950
    :try_start_265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " under tag "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cf

    :cond_286
    const/4 v7, 0x0

    .line 1936
    invoke-interface {v13, v7, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_293

    const-string v4, "No suspendingPackage found inside tag suspend-params"

    .line 1939
    invoke-static {v11, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cf

    :cond_293
    if-nez v44, :cond_29a

    .line 1944
    new-instance v44, Landroid/util/ArrayMap;

    invoke-direct/range {v44 .. v44}, Landroid/util/ArrayMap;-><init>()V

    :cond_29a
    move-object/from16 v11, v44

    .line 1947
    invoke-static {v13}, Lcom/android/server/pm/pkg/SuspendParams;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/pkg/SuspendParams;

    move-result-object v7

    .line 1946
    invoke-virtual {v11, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v11

    goto :goto_2cf

    :cond_2a6
    move/from16 v46, v7

    .line 1933
    invoke-static {v13}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v4

    move-object v8, v4

    goto :goto_2cf

    :cond_2ae
    move/from16 v46, v7

    .line 1930
    invoke-static {v13}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    move-object/from16 v43, v4

    goto :goto_2cf

    :cond_2b7
    move/from16 v46, v7

    .line 1927
    invoke-static {v13}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    move-object v9, v4

    goto :goto_2cf

    :cond_2bf
    move/from16 v46, v7

    .line 1924
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->readComponentsLPr(Landroid/util/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v42

    goto :goto_2cf

    :cond_2c6
    move/from16 v46, v7

    .line 1921
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->readComponentsLPr(Landroid/util/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v41

    goto :goto_2cf

    :cond_2cd
    :goto_2cd
    move/from16 v46, v7

    :goto_2cf
    move/from16 v4, v45

    move/from16 v7, v46

    goto/16 :goto_1e9

    :cond_2d5
    move/from16 v46, v7

    if-nez v8, :cond_2ec

    .line 1954
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2ec

    .line 1955
    new-instance v3, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v3}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1956
    invoke-virtual {v3, v10}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v3

    .line 1957
    invoke-virtual {v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v8

    :cond_2ec
    if-eqz v5, :cond_303

    if-nez v44, :cond_303

    .line 1960
    new-instance v3, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v11, v43

    invoke-direct {v3, v8, v9, v11}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 1964
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v5, v29

    .line 1965
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_301
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_265 .. :try_end_301} :catch_bd
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_301} :catch_bd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_265 .. :try_end_301} :catch_bd

    move-object/from16 v44, v4

    :cond_303
    if-eqz v12, :cond_311

    move/from16 v12, p1

    const/4 v9, 0x1

    .line 1969
    :try_start_308
    invoke-virtual {v1, v12, v6, v9}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_30b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_308 .. :try_end_30b} :catch_30c
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_30b} :catch_30c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_308 .. :try_end_30b} :catch_30c

    goto :goto_314

    :catch_30c
    move-exception v0

    move-object v2, v0

    move v3, v12

    goto/16 :goto_c1

    :cond_311
    move/from16 v12, p1

    const/4 v9, 0x1

    :goto_314
    const-wide/16 v3, 0x0

    cmp-long v5, v39, v3

    if-eqz v5, :cond_31d

    move-object/from16 v11, p2

    goto :goto_32f

    .line 1976
    :cond_31d
    :try_start_31d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-virtual {v11, v6, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_32d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31d .. :try_end_32d} :catch_390
    .catch Ljava/io/IOException; {:try_start_31d .. :try_end_32d} :catch_390
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_31d .. :try_end_32d} :catch_390

    move-wide/from16 v39, v3

    :goto_32f
    move/from16 v3, p1

    move-object/from16 v8, v25

    move/from16 v10, v45

    move-wide/from16 v4, v17

    move-object v7, v6

    move/from16 v6, v38

    move-object/from16 v47, v7

    move/from16 v25, v46

    const/16 v16, 0x5

    const/16 v17, 0x0

    move/from16 v7, v19

    move-object/from16 v48, v8

    move/from16 v29, v16

    move/from16 v8, v21

    move/from16 v30, v9

    move/from16 v9, v22

    move/from16 v49, v10

    const/16 v28, 0x2

    move/from16 v10, v23

    move-object/from16 v27, v17

    const/16 v16, 0x4

    move/from16 v11, v26

    move/from16 v26, v16

    move-object/from16 v12, v44

    move-object/from16 v50, v13

    move/from16 v13, v31

    move-object/from16 v31, v14

    move/from16 v14, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v33

    move-object/from16 v16, v41

    move-object/from16 v17, v42

    move/from16 v18, v35

    move/from16 v19, v36

    move-object/from16 v20, v34

    move-object/from16 v21, v37

    move-wide/from16 v22, v39

    .line 1971
    :try_start_378
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    .line 1978
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    :try_end_37d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_378 .. :try_end_37d} :catch_38c
    .catch Ljava/io/IOException; {:try_start_378 .. :try_end_37d} :catch_38c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_378 .. :try_end_37d} :catch_38c

    move/from16 v3, p1

    move-object/from16 v4, v47

    move/from16 v5, v49

    :try_start_383
    invoke-interface {v2, v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setLegacyUserState(Ljava/lang/String;II)Z
    :try_end_386
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_383 .. :try_end_386} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_383 .. :try_end_386} :catch_3c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_383 .. :try_end_386} :catch_3c2

    move-object/from16 v5, v48

    move-object/from16 v4, v50

    goto/16 :goto_418

    :catch_38c
    move-exception v0

    move/from16 v3, p1

    goto :goto_3c3

    :catch_390
    move-exception v0

    move v3, v12

    goto/16 :goto_c0

    :catch_394
    move-exception v0

    move/from16 v3, p1

    move-object v2, v0

    move-object v5, v4

    goto/16 :goto_447

    :cond_39b
    move/from16 v3, p1

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v28, v10

    move-object/from16 v27, v11

    move/from16 v26, v12

    move-object/from16 v50, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v48, v25

    move/from16 v25, v7

    :try_start_3b1
    const-string/jumbo v4, "preferred-activities"

    .line 1979
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b1 .. :try_end_3b8} :catch_42d
    .catch Ljava/io/IOException; {:try_start_3b1 .. :try_end_3b8} :catch_42d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3b1 .. :try_end_3b8} :catch_42d

    if-eqz v4, :cond_3c8

    move-object/from16 v4, v50

    .line 1980
    :try_start_3bc
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_3bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3bc .. :try_end_3bf} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_3bc .. :try_end_3bf} :catch_3c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3bc .. :try_end_3bf} :catch_3c2

    :goto_3bf
    move-object/from16 v5, v48

    goto :goto_418

    :catch_3c2
    move-exception v0

    :goto_3c3
    move-object v2, v0

    move-object/from16 v5, v48

    goto/16 :goto_447

    :cond_3c8
    move-object/from16 v4, v50

    :try_start_3ca
    const-string/jumbo v5, "persistent-preferred-activities"

    .line 1981
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3ca .. :try_end_3d1} :catch_42d
    .catch Ljava/io/IOException; {:try_start_3ca .. :try_end_3d1} :catch_42d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3ca .. :try_end_3d1} :catch_42d

    if-eqz v5, :cond_3d7

    .line 1982
    :try_start_3d3
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_3d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d3 .. :try_end_3d6} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_3d3 .. :try_end_3d6} :catch_3c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d3 .. :try_end_3d6} :catch_3c2

    goto :goto_3bf

    :cond_3d7
    :try_start_3d7
    const-string v5, "crossProfile-intent-filters"

    .line 1983
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d7 .. :try_end_3dd} :catch_42d
    .catch Ljava/io/IOException; {:try_start_3d7 .. :try_end_3dd} :catch_42d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d7 .. :try_end_3dd} :catch_42d

    if-eqz v5, :cond_3e3

    .line 1984
    :try_start_3df
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_3e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3df .. :try_end_3e2} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_3df .. :try_end_3e2} :catch_3c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3df .. :try_end_3e2} :catch_3c2

    goto :goto_3bf

    :cond_3e3
    :try_start_3e3
    const-string v5, "default-apps"

    .line 1985
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e3 .. :try_end_3e9} :catch_42d
    .catch Ljava/io/IOException; {:try_start_3e3 .. :try_end_3e9} :catch_42d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3e3 .. :try_end_3e9} :catch_42d

    if-eqz v5, :cond_3ef

    .line 1986
    :try_start_3eb
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3eb .. :try_end_3ee} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_3eb .. :try_end_3ee} :catch_3c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3eb .. :try_end_3ee} :catch_3c2

    goto :goto_3bf

    :cond_3ef
    :try_start_3ef
    const-string v5, "block-uninstall-packages"

    .line 1987
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3f5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3ef .. :try_end_3f5} :catch_42d
    .catch Ljava/io/IOException; {:try_start_3ef .. :try_end_3f5} :catch_42d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3ef .. :try_end_3f5} :catch_42d

    if-eqz v2, :cond_3fb

    .line 1988
    :try_start_3f7
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Landroid/util/TypedXmlPullParser;I)V
    :try_end_3fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f7 .. :try_end_3fa} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_3f7 .. :try_end_3fa} :catch_3c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3f7 .. :try_end_3fa} :catch_3c2

    goto :goto_3bf

    .line 1990
    :cond_3fb
    :try_start_3fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <stopped-packages>: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_410
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3fb .. :try_end_410} :catch_42d
    .catch Ljava/io/IOException; {:try_start_3fb .. :try_end_410} :catch_42d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3fb .. :try_end_410} :catch_42d

    move-object/from16 v5, v48

    .line 1990
    :try_start_412
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_418
    move-object v13, v4

    move/from16 v7, v25

    move/from16 v12, v26

    move-object/from16 v11, v27

    move/from16 v10, v28

    move/from16 v8, v29

    move/from16 v9, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v25, v5

    goto/16 :goto_f3

    :catch_42d
    move-exception v0

    move-object/from16 v5, v48

    goto :goto_446

    :cond_431
    move/from16 v3, p1

    move-object/from16 v5, v25

    goto/16 :goto_f3

    :cond_437
    move/from16 v3, p1

    move-object/from16 v5, v25

    .line 1996
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_43e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_412 .. :try_end_43e} :catch_43f
    .catch Ljava/io/IOException; {:try_start_412 .. :try_end_43e} :catch_43f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_412 .. :try_end_43e} :catch_43f

    goto :goto_483

    :catch_43f
    move-exception v0

    goto :goto_446

    :catch_441
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v5, v25

    :goto_446
    move-object v2, v0

    .line 1998
    :goto_447
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    .line 1999
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading stopped packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v4, "Error reading package manager stopped packages"

    .line 2001
    invoke-static {v5, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, p3

    .line 2005
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/Settings;->restorePackagesState(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;I)V

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    :goto_483
    return-void

    :sswitch_data_484
    .sparse-switch
        -0x78da70f9 -> :sswitch_245
        -0x75017ede -> :sswitch_23b
        -0x5ee8613f -> :sswitch_230
        -0x54ce12c2 -> :sswitch_225
        -0x3326b7c9 -> :sswitch_21a
        0x62ff4521 -> :sswitch_20f
    .end sparse-switch
.end method

.method public readPermissionStateForUserSyncLPr(I)V
    .registers 8

    .line 3378
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 3379
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v5

    move v1, p1

    .line 3378
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    return-void
.end method

.method public final readPersistentPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1653
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1655
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1656
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_52

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1660
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    .line 1661
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1662
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 1663
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    :cond_35
    const/4 v1, 0x5

    .line 1665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1665
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1668
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_52
    return-void
.end method

.method public readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1621
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1623
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_88

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1624
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_88

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1629
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    .line 1630
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_6b

    .line 1631
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/util/TypedXmlPullParser;)V

    .line 1632
    iget-object v3, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v3}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    .line 1633
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 1634
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PreferredIntentResolver;->shouldAddPreferredActivity(Lcom/android/server/pm/PreferredActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 1635
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    .line 1638
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1640
    invoke-virtual {v1}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_4

    .line 1644
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <preferred-activities>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1646
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_88
    return-void
.end method

.method public final readSharedUserLPw(Landroid/util/TypedXmlPullParser;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 4303
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    .line 4304
    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "system"

    .line 4305
    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x5

    if-nez v1, :cond_33

    .line 4309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4309
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_81

    :cond_33
    if-nez v2, :cond_5e

    .line 4313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: shared-user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has bad userId "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4316
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4313
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_81

    .line 4318
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-nez v0, :cond_81

    const/4 v1, 0x6

    .line 4320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Occurred while parsing settings at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4321
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_81
    :goto_81
    if-eqz v0, :cond_e3

    .line 4328
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4330
    :cond_87
    :goto_87
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_97

    .line 4331
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_e6

    :cond_97
    if-eq v2, v3, :cond_87

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9d

    goto :goto_87

    .line 4336
    :cond_9d
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sigs"

    .line 4337
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 4338
    iget-object v2, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/PackageSignatures;->readXml(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_87

    :cond_b6
    const-string/jumbo v3, "perms"

    .line 4339
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 4340
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_87

    .line 4342
    :cond_c7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <shared-user>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4343
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4342
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4344
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_87

    .line 4348
    :cond_e3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_e6
    return-void
.end method

.method public readStoppedLPw()V
    .registers 15

    .line 2431
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "PackageManager"

    if-eqz v0, :cond_43

    .line 2433
    :try_start_c
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_43

    .line 2434
    :try_start_13
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Need to read from backup stopped packages file"

    .line 2435
    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2437
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_42} :catch_44

    goto :goto_44

    :catch_43
    :cond_43
    move-object v0, v2

    :catch_44
    :cond_44
    :goto_44
    const-string v4, "Error reading package manager stopped packages"

    const/4 v5, 0x6

    const-string v6, "Error reading: "

    const/4 v7, 0x0

    if-nez v0, :cond_85

    .line 2452
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 2453
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "No stopped packages file file; assuming all started"

    .line 2454
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2459
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2460
    invoke-virtual {v1, v7, v7}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2461
    invoke-virtual {v1, v7, v7}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_6a

    :cond_7d
    return-void

    .line 2465
    :cond_7e
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2467
    :cond_85
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v8

    .line 2470
    :goto_89
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v9, v10, :cond_94

    if-eq v9, v11, :cond_94

    goto :goto_89

    :cond_94
    if-eq v9, v10, :cond_a4

    .line 2476
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v1, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    const-string v1, "No start tag found in package manager stopped packages"

    .line 2477
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void

    .line 2482
    :cond_a4
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    .line 2483
    :cond_a8
    :goto_a8
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    if-eq v10, v11, :cond_124

    const/4 v12, 0x3

    if-ne v10, v12, :cond_b7

    .line 2485
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v9, :cond_124

    :cond_b7
    if-eq v10, v12, :cond_a8

    if-ne v10, v1, :cond_bc

    goto :goto_a8

    .line 2491
    :cond_bc
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "pkg"

    .line 2492
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_108

    const-string/jumbo v10, "name"

    .line 2493
    invoke-interface {v8, v2, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2494
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12, v10}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    if-eqz v12, :cond_f0

    .line 2496
    invoke-virtual {v12, v11, v7}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    const-string v10, "1"

    const-string/jumbo v13, "nl"

    .line 2497
    invoke-interface {v8, v2, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_104

    .line 2498
    invoke-virtual {v12, v11, v7}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_104

    .line 2501
    :cond_f0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_104
    :goto_104
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a8

    .line 2506
    :cond_108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <stopped-packages>: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-interface {v8}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2506
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a8

    .line 2512
    :cond_124
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_127
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_127} :catch_159
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_127} :catch_128

    goto :goto_189

    :catch_128
    move-exception v0

    .line 2522
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading settings: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2524
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_189

    :catch_159
    move-exception v0

    .line 2515
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading stopped packages: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2518
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_189
    return-void
.end method

.method public readUsesSdkLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "name"

    .line 2365
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version"

    const-wide/16 v2, -0x1

    .line 2366
    invoke-interface {p1, p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    if-eqz v0, :cond_33

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_33

    .line 2369
    const-class p0, Ljava/lang/String;

    .line 2370
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2369
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2372
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p0

    .line 2371
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 2375
    :cond_33
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public readUsesStaticLibLPw(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "name"

    .line 2380
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version"

    const-wide/16 v2, -0x1

    .line 2381
    invoke-interface {p1, p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    if-eqz v0, :cond_33

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_33

    .line 2384
    const-class p0, Ljava/lang/String;

    .line 2385
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2384
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2387
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p0

    .line 2386
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 2390
    :cond_33
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public registerAppIdLPw(Lcom/android/server/pm/PackageSetting;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1251
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_9

    goto :goto_18

    .line 1257
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_22

    .line 1253
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    const/4 p0, 0x1

    .line 1259
    :goto_22
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    if-ltz p2, :cond_29

    return p0

    :cond_29
    const/4 p0, 0x5

    .line 1260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be assigned a valid UID"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1260
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1262
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final registerObservers()V
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 593
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 595
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppIdSettingMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeAppIdLPw(I)V
    .registers 2

    .line 1414
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->removeSetting(I)V

    return-void
.end method

.method public removeCrossProfileIntentFiltersLPw(I)V
    .registers 12

    .line 4455
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    monitor-enter v0

    .line 4457
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 4458
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4459
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4462
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_58

    .line 4464
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 4465
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4467
    new-instance v6, Landroid/util/ArraySet;

    .line 4468
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4469
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_39
    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4470
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_39

    .line 4472
    invoke-virtual {v5, v8}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v7, 0x1

    goto :goto_39

    :cond_50
    if-eqz v7, :cond_55

    .line 4476
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 4479
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 p0, 0x0

    goto :goto_d

    .line 1473
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_d
    return-object p0
.end method

.method public removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_19

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 903
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 904
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    :cond_19
    return-void
.end method

.method public final removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 4

    .line 1391
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1395
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_1e

    const-string v0, "com.sec.android.app.samsungapps"

    .line 1396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 1401
    :goto_1f
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 1402
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1404
    :cond_35
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePackageLPw(Ljava/lang/String;)I
    .registers 3

    .line 1368
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_2c

    .line 1370
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1373
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    const/4 v0, 0x0

    .line 1374
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 1375
    iget p0, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return p0

    .line 1378
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1379
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p0

    return p0

    :cond_2c
    const/4 p0, -0x1

    return p0
.end method

.method public removeRenamedPackageLPw(Ljava/lang/String;)V
    .registers 2

    .line 804
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUserLPw(I)V
    .registers 4

    .line 4433
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4434
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4435
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_a

    .line 4437
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4438
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v0

    .line 4439
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4440
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v0

    .line 4441
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4442
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4444
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$monUserRemoved(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4445
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4447
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4451
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    return-void
.end method

.method public resetSystemServer()V
    .registers 1

    .line 2709
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/16 p0, 0xa

    .line 2710
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public final restorePackages(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;)V
    .registers 5

    if-eqz p1, :cond_7

    .line 1506
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getRebootCntByPackages()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 1507
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore packages, reboot cnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/4 v1, 0x2

    if-lt v0, v1, :cond_50

    .line 1510
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getBackupPackagesFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 1511
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_64

    .line 1517
    :cond_50
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1518
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_5f
    if-eqz p1, :cond_64

    .line 1521
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->incRebootCntByPackages()V

    :cond_64
    :goto_64
    return-void
.end method

.method public final restorePackagesState(Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;I)V
    .registers 9

    if-eqz p1, :cond_7

    .line 1532
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getRebootCntByPackageState()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 1533
    :goto_8
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore packages state for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reboot cnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/4 v2, 0x2

    const-string v4, " to "

    const-string v5, "Restoring "

    if-lt v0, v2, :cond_58

    .line 1537
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->getBackupPackagesStateFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 1538
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_82

    .line 1539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1541
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_82

    .line 1544
    :cond_58
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile2(I)Ljava/io/File;

    move-result-object p2

    .line 1545
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1548
    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_7d
    if-eqz p1, :cond_82

    .line 1551
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->incRebootCntByPkgsState()V

    :cond_82
    :goto_82
    return-void
.end method

.method public setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 5

    .line 2012
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz p3, :cond_1a

    if-nez v0, :cond_16

    .line 2015
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2016
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 2018
    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_1a
    if-eqz v0, :cond_2a

    .line 2020
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2021
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 2022
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public setDefaultRuntimePermissionsVersion(II)V
    .registers 3

    .line 1585
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersion(II)V

    return-void
.end method

.method public setPermissionControllerVersion(J)V
    .registers 3

    .line 1589
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setPermissionControllerVersion(J)V

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/Settings;
    .registers 1

    .line 774
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 202
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->snapshot()Lcom/android/server/pm/Settings;

    move-result-object p0

    return-object p0
.end method

.method public systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/resolution/ComponentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 6301
    :goto_c
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 6302
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredIntentResolver;

    .line 6303
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6304
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6305
    iget-object v7, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->isActivityDefined(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 6306
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 6309
    :cond_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_81

    move v5, v2

    .line 6310
    :goto_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_74

    .line 6311
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing dangling preferred activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageSettings"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6314
    invoke-virtual {v4, v6}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 6316
    :cond_74
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 6319
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 2

    .line 1577
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->updateRuntimePermissionsFingerprint(I)V

    return-void
.end method

.method public final validateSettingsFile(Ljava/io/File;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_5c

    .line 2675
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2676
    :try_start_9
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_3f

    .line 2677
    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_1d

    const/4 p0, 0x1

    goto :goto_31

    .line 2680
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is too small. It must have been broken."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_35

    .line 2682
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_3f

    goto :goto_5c

    :catchall_35
    move-exception v1

    .line 2676
    :try_start_36
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    .line 2683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an exception during check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " if it is damaged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5c
    :goto_5c
    return p0
.end method

.method public writeAllRuntimePermissionsLPr()V
    .registers 6

    .line 1567
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 1568
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method public writeAllUsersPackageRestrictionsLPr()V
    .registers 3

    .line 1558
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 1561
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1562
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method public writeBlockUninstallPackagesLPr(Landroid/util/TypedXmlSerializer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2127
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_31

    const/4 p2, 0x0

    const-string v0, "block-uninstall-packages"

    .line 2129
    invoke-interface {p1, p2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 2130
    :goto_11
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    const-string v2, "block-uninstall"

    .line 2131
    invoke-interface {p1, p2, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2132
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, p2, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2133
    invoke-interface {p1, p2, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2135
    :cond_2e
    invoke-interface {p1, p2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_31
    return-void
.end method

.method public writeCrossProfileIntentFiltersLPr(Landroid/util/TypedXmlSerializer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "crossProfile-intent-filters"

    .line 2101
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2102
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-eqz p0, :cond_31

    .line 2104
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    const-string/jumbo v2, "item"

    .line 2105
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2106
    invoke-virtual {p2, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 2107
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_18

    .line 2110
    :cond_31
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "default-apps"

    .line 2115
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2116
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22

    const-string p2, "default-browser"

    .line 2118
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "packageName"

    .line 2119
    invoke-interface {p1, v0, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2120
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2122
    :cond_22
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeDisabledSysPackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "updated-package"

    .line 2954
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2955
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2956
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 2957
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2959
    :cond_21
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2960
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v2

    const-string v4, "ft"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2961
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v2

    const-string/jumbo v4, "ut"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2962
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    const-string/jumbo v4, "version"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 2964
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2966
    :cond_57
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 2967
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2969
    :cond_67
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 2970
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2972
    :cond_77
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    .line 2973
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2976
    :cond_86
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_97

    .line 2977
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a1

    .line 2979
    :cond_97
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2981
    :goto_a1
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v2

    const-string/jumbo v3, "loadingProgress"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 2983
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v2

    .line 2984
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    .line 2983
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 2986
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    .line 2987
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p2

    .line 2986
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 2989
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeIntToFile(Ljava/io/File;I)V
    .registers 5

    .line 2805
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 2806
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2805
    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_34

    .line 2808
    :catch_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSettings"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public writeKernelMappingLPr()V
    .registers 7

    .line 2724
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2726
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2727
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2728
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v0, v4

    .line 2729
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2732
    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2734
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2735
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_26

    .line 2739
    :cond_3d
    :goto_3d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_5b

    .line 2740
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2743
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_5b
    return-void
.end method

.method public writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    .line 2749
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1c

    .line 2751
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .registers 10

    .line 2755
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    if-nez v3, :cond_1b

    .line 2757
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2758
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 2761
    :cond_1b
    :goto_1b
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_32

    .line 2764
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2766
    new-instance v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$KernelPackageState-IA;)V

    .line 2767
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    :cond_32
    iget p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq p1, p2, :cond_40

    .line 2772
    new-instance p1, Ljava/io/File;

    const-string v3, "appid"

    invoke-direct {p1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2773
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_40
    if-eqz v1, :cond_85

    move p1, v2

    .line 2779
    :goto_43
    array-length p2, p3

    if-ge p1, p2, :cond_61

    .line 2780
    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p2, :cond_52

    aget v1, p3, p1

    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-nez p2, :cond_5e

    .line 2782
    :cond_52
    new-instance p2, Ljava/io/File;

    const-string v1, "excluded_userids"

    invoke-direct {p2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v1, p3, p1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_5e
    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 2788
    :cond_61
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p1, :cond_83

    .line 2789
    :goto_65
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length p2, p1

    if-ge v2, p2, :cond_83

    .line 2790
    aget p1, p1, v2

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_80

    .line 2791
    new-instance p1, Ljava/io/File;

    const-string p2, "clear_userid"

    invoke-direct {p1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget p2, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 2799
    :cond_83
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_85
    return-void
.end method

.method public final writeKernelRemoveUserLPr(I)V
    .registers 5

    .line 2715
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2717
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2720
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    return-void
.end method

.method public writeKeySetAliasesLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3106
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const/4 v0, 0x0

    const-string v1, "defined-keyset"

    .line 3107
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3108
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "alias"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3109
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo p2, "identifier"

    invoke-interface {p1, v0, p2, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3110
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    :cond_3d
    return-void
.end method

.method public writeLPr(Lcom/android/server/pm/Computer;)V
    .registers 21

    move-object/from16 v1, p0

    const-string/jumbo v0, "renamed-package"

    const-string/jumbo v2, "shared-user"

    const-string/jumbo v3, "permissions"

    const-string/jumbo v4, "version"

    const-string/jumbo v5, "verifier"

    const-string/jumbo v6, "permission-trees"

    const-string/jumbo v7, "packages"

    .line 2533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2539
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2543
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    const-string v11, "PackageManager"

    if-eqz v10, :cond_4a

    .line 2548
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_40

    .line 2549
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_4a

    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    .line 2550
    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2556
    :cond_40
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const-string v10, "Preserving older settings backup"

    .line 2557
    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_4a
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v10}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 2564
    :try_start_4f
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2565
    invoke-static {v10}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v12

    .line 2566
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v14, 0x0

    invoke-interface {v12, v14, v13}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    .line 2567
    invoke-interface {v12, v13, v15}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2569
    invoke-interface {v12, v14, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    .line 2571
    :goto_6b
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v13

    if-ge v15, v13, :cond_b3

    .line 2572
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13, v15}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2573
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v14, v15}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/Settings$VersionInfo;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_83} :catch_201

    move-object/from16 v16, v11

    const/4 v11, 0x0

    .line 2575
    :try_start_86
    invoke-interface {v12, v11, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "volumeUuid"

    .line 2576
    invoke-static {v12, v11, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v11, "sdkVersion"

    .line 2577
    iget v13, v14, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    move-wide/from16 v17, v8

    const/4 v8, 0x0

    invoke-interface {v12, v8, v11, v13}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "databaseVersion"

    .line 2578
    iget v11, v14, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-interface {v12, v8, v9, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "fingerprint"

    .line 2579
    iget-object v11, v14, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v12, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2580
    invoke-interface {v12, v8, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v16

    move-wide/from16 v8, v17

    const/4 v14, 0x0

    goto :goto_6b

    :cond_b3
    move-wide/from16 v17, v8

    move-object/from16 v16, v11

    .line 2583
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v4, :cond_cd

    const/4 v4, 0x0

    .line 2584
    invoke-interface {v12, v4, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "device"

    .line 2585
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v9}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v4, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    invoke-interface {v12, v4, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_cd
    const/4 v4, 0x0

    .line 2589
    invoke-interface {v12, v4, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2590
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissionTrees(Landroid/util/TypedXmlSerializer;)V

    .line 2591
    invoke-interface {v12, v4, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2593
    invoke-interface {v12, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2594
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v5, v12}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissions(Landroid/util/TypedXmlSerializer;)V

    .line 2595
    invoke-interface {v12, v4, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2597
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ee
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2598
    invoke-virtual {v1, v12, v4}, Lcom/android/server/pm/Settings;->writePackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_ee

    .line 2601
    :cond_fe
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_108
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_118

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2602
    invoke-virtual {v1, v12, v4}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_108

    .line 2605
    :cond_118
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_122
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_155

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    const/4 v5, 0x0

    .line 2606
    invoke-interface {v12, v5, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    .line 2607
    iget-object v8, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v12, v5, v6, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "userId"

    .line 2608
    iget v8, v4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-interface {v12, v5, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2609
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v5, "sigs"

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v12, v5, v6}, Lcom/android/server/pm/PackageSignatures;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    .line 2610
    invoke-interface {v12, v4, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_122

    .line 2613
    :cond_155
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_193

    .line 2614
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_167
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_193

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    .line 2615
    invoke-interface {v12, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "new"

    .line 2616
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v12, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "old"

    .line 2617
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v12, v4, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2618
    invoke-interface {v12, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_167

    .line 2622
    :cond_193
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v2, -0x1

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v12, v4, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Lcom/android/server/pm/Computer;Landroid/util/TypedXmlSerializer;ZI)V

    .line 2625
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Landroid/util/TypedXmlSerializer;)V

    const/4 v0, 0x0

    .line 2627
    invoke-interface {v12, v0, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2629
    invoke-interface {v12}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2631
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 2632
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2633
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 2638
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1db

    .line 2639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to rename "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackup2SettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 2645
    :cond_1db
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    invoke-static {v0, v3, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2652
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    const-string/jumbo v0, "package"

    .line 2655
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    .line 2654
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_1fe} :catch_1ff

    return-void

    :catch_1ff
    move-exception v0

    goto :goto_204

    :catch_201
    move-exception v0

    move-object/from16 v16, v11

    :goto_204
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v16

    .line 2659
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2663
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_231

    .line 2664
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_231

    .line 2665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_231
    return-void
.end method

.method public final writeMimeGroupLPr(Landroid/util/TypedXmlSerializer;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 4226
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mime-group"

    .line 4227
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    .line 4228
    invoke-interface {p1, v1, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4230
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "mime-type"

    .line 4231
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "value"

    .line 4232
    invoke-interface {p1, v1, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4233
    invoke-interface {p1, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2e

    .line 4236
    :cond_4a
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    :cond_4e
    return-void
.end method

.method public writePackageLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    .line 2994
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2995
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2996
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 2997
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2999
    :cond_21
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "codePath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3001
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 3002
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3004
    :cond_3a
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 3005
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3007
    :cond_4a
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 3008
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3010
    :cond_5a
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 3011
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3014
    :cond_69
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v2

    const-string/jumbo v3, "publicFlags"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3015
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v2

    const-string/jumbo v3, "privateFlags"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3016
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v2

    const-string v4, "ft"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3017
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v2

    const-string/jumbo v4, "ut"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3018
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    const-string/jumbo v4, "version"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3019
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_ab

    .line 3020
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b5

    .line 3022
    :cond_ab
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3024
    :goto_b5
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    .line 3025
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_c3

    const-string/jumbo v4, "installer"

    .line 3026
    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3028
    :cond_c3
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    if-eqz v3, :cond_cd

    const-string/jumbo v4, "installerAttributionTag"

    .line 3029
    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3032
    :cond_cd
    iget v3, v2, Lcom/android/server/pm/InstallSource;->packageSource:I

    const-string/jumbo v4, "packageSource"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3034
    iget-boolean v3, v2, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_e0

    const-string/jumbo v3, "isOrphaned"

    .line 3035
    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3037
    :cond_e0
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v3, :cond_ea

    const-string/jumbo v5, "installInitiator"

    .line 3038
    invoke-interface {p1, v0, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3040
    :cond_ea
    iget-boolean v3, v2, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-eqz v3, :cond_f4

    const-string/jumbo v3, "installInitiatorUninstalled"

    .line 3041
    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3043
    :cond_f4
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz v3, :cond_fe

    const-string/jumbo v5, "installOriginator"

    .line 3044
    invoke-interface {p1, v0, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3046
    :cond_fe
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10e

    .line 3047
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "volumeUuid"

    invoke-interface {p1, v0, v5, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3049
    :cond_10e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_11e

    .line 3050
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v3

    const-string v5, "categoryHint"

    invoke-interface {p1, v0, v5, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3052
    :cond_11e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_12a

    const-string/jumbo v3, "updateAvailable"

    .line 3053
    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3055
    :cond_12a
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v3

    if-eqz v3, :cond_135

    const-string v3, "forceQueryable"

    .line 3056
    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3058
    :cond_135
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_141

    const-string/jumbo v3, "isLoading"

    .line 3059
    invoke-interface {p1, v0, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3061
    :cond_141
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v3

    const-string/jumbo v4, "loadingProgress"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3063
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "domainSetId"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3065
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 3066
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v4

    .line 3065
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 3068
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 3069
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v4

    .line 3068
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 3071
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v5, "sigs"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3073
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v2, :cond_18e

    .line 3074
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Lcom/android/server/utils/WatchedArrayList;

    .line 3075
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "install-initiator-sigs"

    .line 3074
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3078
    :cond_18e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3079
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3080
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3081
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeMimeGroupLPr(Landroid/util/TypedXmlSerializer;Ljava/util/Map;)V

    .line 3083
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePackageListLPr()V
    .registers 2

    const/4 v0, -0x1

    .line 2813
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    return-void
.end method

.method public writePackageListLPr(I)V
    .registers 6

    .line 2817
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2818
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSettings"

    if-nez v0, :cond_28

    .line 2820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2821
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2820
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :cond_28
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "Failed to set packages.list SELinux context"

    .line 2825
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v0, 0x0

    .line 2828
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 2830
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    return-void

    :catchall_3b
    move-exception p0

    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2831
    throw p0
.end method

.method public final writePackageListLPrInternal(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "PackageSettings"

    const-string v3, " "

    .line 2836
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 2837
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_19
    if-ge v9, v6, :cond_28

    .line 2839
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_28
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2f

    .line 2842
    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 2846
    :cond_2f
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2847
    new-instance v4, Lcom/android/internal/util/JournaledFile;

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v4, v6, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2849
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v1

    .line 2853
    :try_start_56
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2854
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_69} :catch_20a

    .line 2855
    :try_start_69
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    const/16 v11, 0x1a0

    const/16 v12, 0x3e8

    const/16 v13, 0x408

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2857
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2858
    iget-object v11, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v11}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_85
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1fa

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 2860
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v13

    if-nez v13, :cond_99

    const/4 v13, 0x0

    goto :goto_a5

    .line 2861
    :cond_99
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v13

    .line 2862
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 2864
    :goto_a5
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_1ce

    if-nez v13, :cond_af

    goto/16 :goto_1ce

    .line 2871
    :cond_af
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v14

    .line 2872
    new-instance v15, Landroid/util/IntArray;

    invoke-direct {v15}, Landroid/util/IntArray;-><init>()V

    .line 2873
    array-length v5, v7

    move v6, v8

    :goto_be
    if-ge v6, v5, :cond_dd

    aget v8, v7, v6

    move/from16 v16, v5

    .line 2874
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 2875
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    .line 2874
    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-interface {v5, v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/util/IntArray;->addAll([I)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    const/4 v8, 0x0

    goto :goto_be

    :cond_dd
    const/16 v0, 0x20

    .line 2879
    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_ea

    move-object/from16 v0, p0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_85

    :cond_ea
    const/4 v0, 0x0

    .line 2902
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2903
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_10c

    const-string v0, " 1 "

    goto :goto_10e

    :cond_10c
    const-string v0, " 0 "

    .line 2906
    :goto_10e
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2907
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2908
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2911
    invoke-virtual {v15}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 2912
    invoke-virtual {v15}, Landroid/util/IntArray;->size()I

    move-result v5

    if-lez v5, :cond_149

    const/4 v5, 0x0

    .line 2913
    invoke-virtual {v15, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    :goto_138
    if-ge v6, v0, :cond_150

    const-string v8, ","

    .line 2915
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    invoke-virtual {v15, v6}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_138

    :cond_149
    const/4 v5, 0x0

    const-string/jumbo v0, "none"

    .line 2919
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    :cond_150
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2922
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isProfileableByShell()Z

    move-result v0
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_15b} :catch_207

    const-string v6, "1"

    const-string v8, "0"

    if-eqz v0, :cond_163

    move-object v0, v6

    goto :goto_164

    :cond_163
    move-object v0, v8

    :goto_164
    :try_start_164
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2925
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_183

    goto :goto_184

    :cond_183
    move-object v6, v8

    :goto_184
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2928
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_196

    const-string v0, "@system"

    .line 2929
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c5

    .line 2930
    :cond_196
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_1a2

    const-string v0, "@product"

    .line 2931
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c5

    .line 2932
    :cond_1a2
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1c0

    .line 2933
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c0

    .line 2934
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c5

    :cond_1c0
    const-string v0, "@null"

    .line 2936
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c5
    const-string v0, "\n"

    .line 2938
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_1f4

    :cond_1ce
    :goto_1ce
    move v5, v8

    const-string v0, "android"

    .line 2865
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f4

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " due to missing metadata"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f4
    :goto_1f4
    move-object/from16 v0, p0

    move v8, v5

    const/4 v5, 0x1

    goto/16 :goto_85

    .line 2941
    :cond_1fa
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2942
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2943
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 2944
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_206} :catch_207

    goto :goto_217

    :catch_207
    move-exception v0

    move-object v6, v1

    goto :goto_20c

    :catch_20a
    move-exception v0

    const/4 v6, 0x0

    :goto_20c
    const-string v1, "Failed to write packages.list"

    .line 2946
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2947
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2948
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_217
    return-void
.end method

.method public writePackageRestrictionsLPr(I)V
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string/jumbo v2, "suspend-params"

    const-string v3, "disabled-components"

    const-string v4, "enabled-components"

    const-string/jumbo v5, "pkg"

    const-string/jumbo v6, "package-restrictions"

    const-string/jumbo v7, "name"

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2149
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v10

    .line 2150
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v11

    .line 2151
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile2(I)Ljava/io/File;

    move-result-object v12

    .line 2152
    new-instance v13, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 2153
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    const-string v14, "PackageManager"

    if-eqz v13, :cond_55

    .line 2158
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4d

    .line 2159
    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_55

    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    .line 2160
    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2166
    :cond_4d
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const-string v13, "Preserving older stopped packages backup"

    .line 2167
    invoke-static {v14, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_55
    :try_start_55
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2173
    invoke-static {v13}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v15
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_2b8

    move-object/from16 v16, v14

    .line 2174
    :try_start_60
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-wide/from16 v17, v8

    const/4 v8, 0x0

    invoke-interface {v15, v8, v14}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v14, 0x1

    .line 2175
    invoke-interface {v15, v9, v14}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2177
    invoke-interface {v15, v8, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2183
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_248

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2184
    invoke-virtual {v14, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v19

    .line 2191
    invoke-interface {v15, v8, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2192
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v15, v8, v7, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2193
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v14, v20, v22

    if-eqz v14, :cond_b1

    const-string v14, "ceDataInode"

    move-object/from16 v21, v9

    .line 2194
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v8
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_aa} :catch_2b4

    move-object/from16 v22, v10

    const/4 v10, 0x0

    :try_start_ad
    invoke-interface {v15, v10, v14, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b5

    :cond_b1
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 2196
    :goto_b5
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_c3

    const-string/jumbo v8, "inst"

    const/4 v10, 0x0

    .line 2197
    invoke-interface {v15, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2199
    :cond_c3
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_d1

    const-string/jumbo v8, "stopped"

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 2200
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2202
    :cond_d1
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v8

    if-eqz v8, :cond_df

    const-string/jumbo v8, "nl"

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 2203
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    :cond_df
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_ed

    const-string/jumbo v8, "hidden"

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 2206
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2208
    :cond_ed
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v8

    if-eqz v8, :cond_fd

    const-string v8, "distraction_flags"

    .line 2210
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v10

    const/4 v14, 0x0

    .line 2209
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2212
    :cond_fd
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_10b

    const-string/jumbo v8, "suspended"

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 2213
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2215
    :cond_10b
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_119

    const-string/jumbo v8, "instant-app"

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 2216
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    :cond_119
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v8

    if-eqz v8, :cond_127

    const-string/jumbo v8, "virtual-preload"

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 2219
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2221
    :cond_127
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v8

    if-eqz v8, :cond_147

    const-string v8, "enabled"

    .line 2222
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v10

    const/4 v14, 0x0

    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2223
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_147

    const-string v8, "enabledCaller"

    .line 2225
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    .line 2224
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    :cond_147
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v8

    if-eqz v8, :cond_158

    const-string/jumbo v8, "install-reason"

    .line 2230
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v10

    const/4 v14, 0x0

    .line 2229
    invoke-interface {v15, v14, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_158
    const-string v8, "first-install-time"

    .line 2233
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v9

    const/4 v14, 0x0

    .line 2232
    invoke-interface {v15, v14, v8, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2234
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v8

    if-eqz v8, :cond_173

    const-string/jumbo v8, "uninstall-reason"

    .line 2236
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v9

    const/4 v10, 0x0

    .line 2235
    invoke-interface {v15, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    :cond_173
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_184

    const-string/jumbo v8, "harmful-app-warning"

    .line 2240
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 2239
    invoke-interface {v15, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2242
    :cond_184
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_195

    const-string/jumbo v8, "splash-screen-theme"

    .line 2244
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 2243
    invoke-interface {v15, v10, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2246
    :cond_195
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_1d0

    const/4 v8, 0x0

    .line 2247
    :goto_19c
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_1d0

    .line 2248
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    .line 2249
    invoke-interface {v15, v10, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "suspending-package"

    .line 2250
    invoke-interface {v15, v10, v14, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2252
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v9, :cond_1c9

    .line 2254
    invoke-virtual {v9, v15}, Lcom/android/server/pm/pkg/SuspendParams;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    :cond_1c9
    const/4 v9, 0x0

    .line 2256
    invoke-interface {v15, v9, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_19c

    .line 2259
    :cond_1d0
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v8
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_1d4} :catch_2b2

    const-string/jumbo v9, "item"

    if-eqz v8, :cond_20a

    .line 2260
    :try_start_1d9
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-lez v10, :cond_20a

    const/4 v10, 0x0

    .line 2261
    invoke-interface {v15, v10, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v14, 0x0

    .line 2262
    :goto_1e4
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v14, v10, :cond_203

    const/4 v10, 0x0

    .line 2263
    invoke-interface {v15, v10, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2265
    invoke-virtual {v8, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v24, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/String;

    .line 2264
    invoke-interface {v15, v10, v7, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2266
    invoke-interface {v15, v10, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v24

    goto :goto_1e4

    :cond_203
    move-object/from16 v24, v2

    const/4 v2, 0x0

    .line 2268
    invoke-interface {v15, v2, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_20c

    :cond_20a
    move-object/from16 v24, v2

    .line 2270
    :goto_20c
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_23a

    .line 2271
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_23a

    const/4 v8, 0x0

    .line 2272
    invoke-interface {v15, v8, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    .line 2273
    :goto_21d
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v10, v14, :cond_236

    .line 2274
    invoke-interface {v15, v8, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2276
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2275
    invoke-interface {v15, v8, v7, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2277
    invoke-interface {v15, v8, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_21d

    :cond_236
    move-object v2, v8

    .line 2279
    invoke-interface {v15, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_23a
    const/4 v2, 0x0

    .line 2282
    invoke-interface {v15, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v2, v24

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto/16 :goto_7c

    :cond_248
    move-object/from16 v22, v10

    move v2, v14

    .line 2285
    invoke-virtual {v1, v15, v0, v2}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 2286
    invoke-virtual {v1, v15, v0}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;I)V

    .line 2287
    invoke-virtual {v1, v15, v0}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Landroid/util/TypedXmlSerializer;I)V

    .line 2288
    invoke-virtual {v1, v15, v0}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2289
    invoke-virtual {v1, v15, v0}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Landroid/util/TypedXmlSerializer;I)V

    const/4 v2, 0x0

    .line 2291
    invoke-interface {v15, v2, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2293
    invoke-interface {v15}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2295
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 2296
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2297
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 2302
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_28c

    .line 2303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 2309
    :cond_28c
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    .line 2314
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_2b1} :catch_2b2

    return-void

    :catch_2b2
    move-exception v0

    goto :goto_2bd

    :catch_2b4
    move-exception v0

    move-object/from16 v22, v10

    goto :goto_2bd

    :catch_2b8
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v16, v14

    :goto_2bd
    const-string v2, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v3, v16

    .line 2320
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e6

    .line 2327
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e6

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e6
    return-void
.end method

.method public writePermissionStateForUserLPr(IZ)V
    .registers 11

    if-eqz p2, :cond_13

    .line 5541
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v7, 0x1

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUser(ILcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Ljava/lang/Object;Z)V

    goto :goto_18

    .line 5544
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    :goto_18
    return-void
.end method

.method public writePersistentPreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "persistent-preferred-activities"

    .line 2087
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2088
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eqz p0, :cond_32

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    const-string/jumbo v2, "item"

    .line 2091
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2092
    invoke-virtual {p2, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 2093
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 2096
    :cond_32
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "preferred-activities"

    .line 2073
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    if-eqz p0, :cond_32

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    const-string/jumbo v2, "item"

    .line 2077
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2078
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Landroid/util/TypedXmlSerializer;Z)V

    .line 2079
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 2082
    :cond_32
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeSigningKeySetLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "proper-signing-keyset"

    .line 3088
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3089
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    const-string/jumbo p2, "identifier"

    invoke-interface {p1, p0, p2, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3090
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeUpgradeKeySetsLPr(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3095
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 3096
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_23

    aget-wide v1, p0, v0

    const/4 v3, 0x0

    const-string/jumbo v4, "upgrade-keyset"

    .line 3097
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "identifier"

    .line 3098
    invoke-interface {p1, v3, v5, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3099
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_23
    return-void
.end method

.method public writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 7

    .line 1274
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 1278
    :cond_b
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 1282
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-nez p2, :cond_2b

    .line 1284
    sget-object v2, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    goto :goto_31

    .line 1285
    :cond_2b
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 1286
    :goto_31
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1287
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_1a

    :cond_43
    return-void
.end method

.method public writeUsesSdkLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2395
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result p0

    if-nez p0, :cond_32

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_11

    goto :goto_32

    .line 2399
    :cond_11
    array-length p0, p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p0, :cond_32

    .line 2401
    aget-object v1, p2, v0

    .line 2402
    aget-wide v2, p3, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "uses-sdk-lib"

    .line 2403
    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    .line 2404
    invoke-interface {p1, v4, v6, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "version"

    .line 2405
    invoke-interface {p1, v4, v1, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2406
    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_32
    :goto_32
    return-void
.end method

.method public writeUsesStaticLibLPw(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2412
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result p0

    if-nez p0, :cond_32

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_11

    goto :goto_32

    .line 2416
    :cond_11
    array-length p0, p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p0, :cond_32

    .line 2418
    aget-object v1, p2, v0

    .line 2419
    aget-wide v2, p3, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "uses-static-lib"

    .line 2420
    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    .line 2421
    invoke-interface {p1, v4, v6, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "version"

    .line 2422
    invoke-interface {p1, v4, v1, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2423
    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_32
    :goto_32
    return-void
.end method
