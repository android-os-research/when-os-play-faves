.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;,
        Lcom/android/server/SystemConfig$SharedLibraryEntry;
    }
.end annotation


# static fields
.field private static final blacklist ALLOW_ALL:I = -0x1

.field private static final blacklist ALLOW_APP_CONFIGS:I = 0x8

.field private static final blacklist ALLOW_ASSOCIATIONS:I = 0x80

.field private static final blacklist ALLOW_FEATURES:I = 0x1

.field private static final blacklist ALLOW_HIDDENAPI_WHITELISTING:I = 0x40

.field private static final blacklist ALLOW_IMPLICIT_BROADCASTS:I = 0x200

.field private static final blacklist ALLOW_LIBS:I = 0x2

.field private static final blacklist ALLOW_OEM_PERMISSIONS:I = 0x20

.field private static final blacklist ALLOW_OVERRIDE_APP_RESTRICTIONS:I = 0x100

.field private static final blacklist ALLOW_PERMISSIONS:I = 0x4

.field private static final blacklist ALLOW_PRIVAPP_PERMISSIONS:I = 0x10

.field private static final blacklist ALLOW_VENDOR_APEX:I = 0x400

.field private static final blacklist EMPTY_PERMISSIONS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist SKU_PROPERTY:Ljava/lang/String; = "ro.boot.product.hardware.sku"

.field static final blacklist TAG:Ljava/lang/String; = "SystemConfig"

.field private static final blacklist VENDOR_SKU_PROPERTY:Ljava/lang/String; = "ro.boot.product.vendor.sku"

.field static blacklist sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field private blacklist mAerSupported:Z

.field final blacklist mAllowAdasSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mAllowImplicitBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowInDataUsageSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowUnthrottledLocation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAllowedAssociations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedVendorApexes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final blacklist mApexPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mBackupTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mBgRestrictionExemption:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBugreportWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDataUsageSystemUidPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mDefaultVrComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mGlobalGids:[I

.field final blacklist mHiddenApiPackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLinkedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mModulesInstallerPackageName:Ljava/lang/String;

.field private blacklist mNamedActors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mOemPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOverlayConfigSignaturePackage:Ljava/lang/String;

.field final blacklist mPackageComponentEnabledState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mProductPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRollbackWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$SharedLibraryEntry;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSplitPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist mVendorPrivAppPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mWhitelistedStagedInstallers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/SystemConfig;->isAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfig;->EMPTY_PERMISSIONS:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 5

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 227
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 231
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 259
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 263
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 279
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 284
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 290
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 293
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 297
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 317
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    .line 318
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 320
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 323
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    .line 324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 326
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    .line 327
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 329
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 334
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    .line 340
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 342
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 346
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 347
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 349
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 350
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 353
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 359
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 620
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemConfig"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 621
    .local v0, "log":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "readAllPermissions"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 623
    :try_start_13c
    invoke-direct {p0}, Lcom/android/server/SystemConfig;->readAllPermissions()V

    .line 624
    invoke-direct {p0}, Lcom/android/server/SystemConfig;->readPublicNativeLibrariesList()V
    :try_end_142
    .catchall {:try_start_13c .. :try_end_142} :catchall_147

    .line 626
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 627
    nop

    .line 628
    return-void

    .line 626
    :catchall_147
    move-exception v1

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 627
    throw v1
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "readPermissions"    # Z

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 227
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 231
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 259
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 263
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    .line 279
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    .line 284
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 290
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 293
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 297
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 317
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    .line 318
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 320
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 323
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    .line 324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 326
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    .line 327
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 329
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    .line 334
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    .line 340
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    .line 342
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    .line 346
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 347
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 349
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    .line 350
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    .line 353
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 359
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    .line 611
    const-string v0, "SystemConfig"

    if-eqz p1, :cond_139

    .line 612
    const-string v1, "Constructing a test SystemConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0}, Lcom/android/server/SystemConfig;->readAllPermissions()V

    goto :goto_13e

    .line 615
    :cond_139
    const-string v1, "Constructing an empty test SystemConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_13e
    return-void
.end method

.method private blacklist SEServiceFeature()V
    .registers 14

    .line 2114
    const-string v0, "SystemConfig"

    const-string v1, "SEServiceFeature running"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const/4 v1, 0x0

    .line 2117
    .local v1, "hasEseHw":Z
    const/4 v2, 0x0

    .line 2118
    .local v2, "isGpFelicaSupported":Z
    const/4 v3, 0x0

    .line 2119
    .local v3, "isJapan":Z
    const-string/jumbo v4, "ro.boot.product.hardware.sku"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2120
    .local v4, "sku":Ljava/lang/String;
    const-string v5, ""

    .line 2121
    .local v5, "eseCosName":Ljava/lang/String;
    const-string v6, ""

    .line 2122
    .local v6, "chipVendor":Ljava/lang/String;
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2124
    .local v7, "countryCode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NFC SKU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eSE_COS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const-string v8, "hce"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 2127
    const-string v8, "ese"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 2128
    const/4 v1, 0x1

    goto :goto_7c

    .line 2130
    :cond_65
    const-string v8, "SKU"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 2131
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 2132
    const/4 v1, 0x1

    goto :goto_7c

    .line 2134
    :cond_75
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7c

    .line 2135
    const/4 v1, 0x1

    .line 2138
    :cond_7c
    :goto_7c
    iget-object v8, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    const-string v9, "com.samsung.android.nfc.gpfelica"

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/FeatureInfo;

    .line 2139
    .local v8, "feat":Landroid/content/pm/FeatureInfo;
    if-eqz v8, :cond_8f

    .line 2140
    const-string/jumbo v9, "support GP Felica"

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v2, 0x1

    .line 2144
    :cond_8f
    const-string v9, "JAPAN"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_a4

    const-string v9, "JP"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    goto :goto_a4

    :cond_a2
    move v9, v11

    goto :goto_a5

    :cond_a4
    :goto_a4
    move v9, v10

    :goto_a5
    move v3, v9

    .line 2145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "countryCode: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isJapan: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    if-eqz v1, :cond_d6

    if-eqz v3, :cond_d8

    :cond_d6
    if-eqz v2, :cond_d9

    :cond_d8
    goto :goto_da

    :cond_d9
    move v10, v11

    :goto_da
    move v9, v10

    .line 2149
    .local v9, "supportEse":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "support eSE: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string v10, "android.hardware.se.omapi.ese"

    if-eqz v9, :cond_ff

    .line 2151
    invoke-direct {p0, v10, v11}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 2152
    const-string v10, "add eSE secure element feature"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 2154
    :cond_ff
    invoke-direct {p0, v10}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    .line 2155
    const-string/jumbo v10, "removed eSE secure element feature: not support se"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :goto_108
    return-void
.end method

.method private blacklist addFeature(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 1739
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 1740
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v0, :cond_1a

    .line 1741
    new-instance v1, Landroid/content/pm/FeatureInfo;

    invoke-direct {v1}, Landroid/content/pm/FeatureInfo;-><init>()V

    move-object v0, v1

    .line 1742
    iput-object p1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1743
    iput p2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1744
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 1746
    :cond_1a
    iget v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1748
    :goto_22
    return-void
.end method

.method private blacklist getApexModuleNameFromFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "apexDirectoryPath"    # Ljava/nio/file/Path;

    .line 2048
    invoke-interface {p1, p2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    const-string v1, "File "

    if-eqz v0, :cond_3e

    .line 2052
    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    invoke-interface {p2}, Ljava/nio/file/Path;->getNameCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_21

    .line 2056
    invoke-interface {p2}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2053
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in the APEX partition, but not inside a module."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2049
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not part of an APEX."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance()Lcom/android/server/SystemConfig;
    .registers 2

    .line 379
    invoke-static {}, Lcom/android/server/SystemConfig;->isSystemProcess()Z

    move-result v0

    if-nez v0, :cond_d

    .line 380
    const-string v0, "SystemConfig"

    const-string v1, "SystemConfig is being accessed by a process other than system_server."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_d
    const-class v0, Lcom/android/server/SystemConfig;

    monitor-enter v0

    .line 385
    :try_start_10
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    if-nez v1, :cond_1b

    .line 386
    new-instance v1, Lcom/android/server/SystemConfig;

    invoke-direct {v1}, Lcom/android/server/SystemConfig;-><init>()V

    sput-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 388
    :cond_1b
    sget-object v1, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    monitor-exit v0

    return-object v1

    .line 389
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static blacklist isAtLeastSdkLevel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "version"    # Ljava/lang/String;

    .line 130
    :try_start_0
    invoke-static {p0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 131
    :catch_5
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isAtMostSdkLevel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "version"    # Ljava/lang/String;

    .line 139
    :try_start_0
    invoke-static {p0}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 140
    :catch_5
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist isErofsSupported()Z
    .registers 3

    .line 2090
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/sys/fs/erofs"

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 2091
    .local v1, "path":Ljava/nio/file/Path;
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return v0

    .line 2092
    .end local v1    # "path":Ljava/nio/file/Path;
    :catch_10
    move-exception v1

    .line 2093
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static blacklist isKernelVersionAtLeast(II)Z
    .registers 8
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 2098
    invoke-static {}, Landroid/os/VintfRuntimeInfo;->getKernelVersion()Ljava/lang/String;

    move-result-object v0

    .line 2099
    .local v0, "kernelVersion":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_10

    .line 2101
    return v3

    .line 2104
    :cond_10
    :try_start_10
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2105
    .local v2, "majorVersion":I
    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1d} :catch_25

    .line 2106
    .local v5, "minorVersion":I
    if-gt v2, p0, :cond_23

    if-ne v2, p0, :cond_24

    if-lt v5, p1, :cond_24

    :cond_23
    move v3, v4

    :cond_24
    return v3

    .line 2107
    .end local v2    # "majorVersion":I
    .end local v5    # "minorVersion":I
    :catch_25
    move-exception v2

    .line 2108
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v3
.end method

.method private static blacklist isSystemProcess()Z
    .registers 2

    .line 2085
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "permFile"    # Ljava/io/File;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> not allowed in partition of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 931
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    const-string v1, "SystemConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method private blacklist readAerSupportedFromXml(I)V
    .registers 18
    .param p1, "permissionFlag"    # I

    .line 847
    const-string/jumbo v0, "ro.product.name"

    const-string v1, "Got exception parsing permissions."

    const-string v2, "SystemConfig"

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc"

    const-string v5, "aer_product_name.xml"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 848
    .local v3, "aerFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 850
    .local v4, "permReader":Ljava/io/FileReader;
    :try_start_18
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_1bd

    move-object v4, v5

    .line 854
    nop

    .line 855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading aerProductName from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    .line 859
    .local v5, "lowRam":Z
    :try_start_39
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 860
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 863
    :goto_40
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v9, :cond_4c

    if-eq v8, v10, :cond_4c

    goto :goto_40

    .line 868
    :cond_4c
    if-ne v8, v9, :cond_192

    .line 872
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "device"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_163

    .line 877
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_60

    move v7, v10

    goto :goto_61

    :cond_60
    const/4 v7, 0x0

    .line 880
    .local v7, "allowFeatures":Z
    :goto_61
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 881
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_68} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_68} :catch_1a4
    .catchall {:try_start_39 .. :try_end_68} :catchall_1a0

    if-ne v11, v10, :cond_72

    .line 882
    nop

    .line 925
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "allowFeatures":Z
    .end local v8    # "type":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 926
    move-object/from16 v9, p0

    goto/16 :goto_1b7

    .line 885
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "allowFeatures":Z
    .restart local v8    # "type":I
    :cond_72
    :try_start_72
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 886
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_7c

    .line 887
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 888
    goto :goto_61

    .line 890
    :cond_7c
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    packed-switch v13, :pswitch_data_1d8

    :cond_84
    goto :goto_8e

    :pswitch_85
    const-string v13, "product"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_8b} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8b} :catch_1a4
    .catchall {:try_start_72 .. :try_end_8b} :catchall_1a0

    if-eqz v13, :cond_84

    const/4 v12, 0x0

    :goto_8e
    const-string v13, " at "

    packed-switch v12, :pswitch_data_1de

    .line 914
    move-object/from16 v9, p0

    goto/16 :goto_132

    .line 892
    :pswitch_97
    if-eqz v7, :cond_12c

    .line 893
    :try_start_99
    const-string v12, "name"

    const/4 v14, 0x0

    invoke-interface {v6, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 895
    .local v12, "fname":Ljava/lang/String;
    if-nez v5, :cond_a4

    .line 896
    const/4 v14, 0x1

    .local v14, "allowed":Z
    goto :goto_b3

    .line 898
    .end local v14    # "allowed":Z
    :cond_a4
    const-string v15, "notLowRam"

    invoke-interface {v6, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 899
    .local v14, "notLowRam":Ljava/lang/String;
    const-string/jumbo v15, "true"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v10

    move v14, v15

    .line 901
    .local v14, "allowed":Z
    :goto_b3
    if-nez v12, :cond_e4

    .line 902
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "> without name in "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 903
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 902
    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, p0

    goto :goto_12e

    .line 904
    :cond_e4
    if-eqz v14, :cond_129

    .line 905
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fname = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ro.product.name = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_11f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_11f} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_11f} :catch_1a4
    .catchall {:try_start_99 .. :try_end_11f} :catchall_1a0

    if-eqz v9, :cond_126

    .line 908
    move-object/from16 v9, p0

    :try_start_123
    iput-boolean v10, v9, Lcom/android/server/SystemConfig;->mAerSupported:Z

    goto :goto_12e

    .line 907
    :cond_126
    move-object/from16 v9, p0

    goto :goto_12e

    .line 904
    :cond_129
    move-object/from16 v9, p0

    goto :goto_12e

    .line 892
    .end local v12    # "fname":Ljava/lang/String;
    .end local v14    # "allowed":Z
    :cond_12c
    move-object/from16 v9, p0

    .line 911
    :goto_12e
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 912
    goto :goto_161

    .line 914
    :goto_132
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tag "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " is unknown in "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 915
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 914
    invoke-static {v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 919
    .end local v11    # "name":Ljava/lang/String;
    :goto_161
    goto/16 :goto_61

    .line 873
    .end local v7    # "allowFeatures":Z
    :cond_163
    move-object/from16 v9, p0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected start tag in "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": found "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 874
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", expected \'product\'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "aerFile":Ljava/io/File;
    .end local v4    # "permReader":Ljava/io/FileReader;
    .end local v5    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "permissionFlag":I
    throw v0

    .line 869
    .restart local v3    # "aerFile":Ljava/io/File;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    .restart local v5    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "permissionFlag":I
    :cond_192
    move-object/from16 v9, p0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No start tag found"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "aerFile":Ljava/io/File;
    .end local v4    # "permReader":Ljava/io/FileReader;
    .end local v5    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "permissionFlag":I
    throw v0
    :try_end_19c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_123 .. :try_end_19c} :catch_19e
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_19c} :catch_19c
    .catchall {:try_start_123 .. :try_end_19c} :catchall_1b8

    .line 922
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v3    # "aerFile":Ljava/io/File;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    .restart local v5    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "permissionFlag":I
    :catch_19c
    move-exception v0

    goto :goto_1a7

    .line 920
    :catch_19e
    move-exception v0

    goto :goto_1af

    .line 925
    :catchall_1a0
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_1b9

    .line 922
    :catch_1a4
    move-exception v0

    move-object/from16 v9, p0

    .line 923
    .local v0, "e":Ljava/io/IOException;
    :goto_1a7
    :try_start_1a7
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1b3

    .line 920
    :catch_1ac
    move-exception v0

    move-object/from16 v9, p0

    .line 921
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1af
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b2
    .catchall {:try_start_1a7 .. :try_end_1b2} :catchall_1b8

    .line 925
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1b3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 926
    nop

    .line 927
    :goto_1b7
    return-void

    .line 925
    :catchall_1b8
    move-exception v0

    :goto_1b9
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 926
    throw v0

    .line 851
    .end local v5    # "lowRam":Z
    :catch_1bd
    move-exception v0

    move-object/from16 v9, p0

    .line 852
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find or open aerProductName file "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void

    nop

    :pswitch_data_1d8
    .packed-switch -0x12723311
        :pswitch_85
    .end packed-switch

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_97
    .end packed-switch
.end method

.method private blacklist readAllPermissions()V
    .registers 22

    .line 631
    move-object/from16 v0, p0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 634
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 635
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string/jumbo v4, "sysconfig"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 634
    invoke-static {v2, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 638
    nop

    .line 639
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v6, "permissions"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v7

    .line 638
    invoke-static {v2, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 642
    const/16 v2, 0x493

    .line 644
    .local v2, "vendorPermissionFlag":I
    sget v7, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v8, 0x1b

    if-gt v7, v8, :cond_38

    .line 646
    or-int/lit8 v2, v2, 0xc

    .line 648
    :cond_38
    nop

    .line 649
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v8

    .line 648
    invoke-static {v7, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 650
    nop

    .line 651
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v8

    .line 650
    invoke-static {v7, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 653
    const-string/jumbo v7, "ro.boot.product.vendor.sku"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 654
    .local v7, "vendorSkuProperty":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const-string/jumbo v10, "sku_"

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v9, :cond_a7

    .line 655
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 656
    .local v9, "vendorSkuDir":Ljava/lang/String;
    nop

    .line 657
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v13

    aput-object v4, v5, v14

    aput-object v9, v5, v11

    .line 656
    invoke-static {v15, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 659
    nop

    .line 660
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    new-array v15, v12, [Ljava/lang/String;

    aput-object v3, v15, v13

    aput-object v6, v15, v14

    aput-object v9, v15, v11

    .line 659
    invoke-static {v5, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 666
    .end local v9    # "vendorSkuDir":Ljava/lang/String;
    :cond_a7
    move v5, v2

    .line 667
    .local v5, "odmPermissionFlag":I
    nop

    .line 668
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v9

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v15

    .line 667
    invoke-static {v9, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 669
    nop

    .line 670
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v9

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v15

    .line 669
    invoke-static {v9, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 672
    const-string/jumbo v9, "ro.boot.product.hardware.sku"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v9, "skuProperty":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_110

    .line 674
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 676
    .local v10, "skuDir":Ljava/lang/String;
    nop

    .line 677
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v15

    new-array v11, v12, [Ljava/lang/String;

    aput-object v3, v11, v13

    aput-object v4, v11, v14

    const/16 v16, 0x2

    aput-object v10, v11, v16

    .line 676
    invoke-static {v15, v11}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 678
    nop

    .line 679
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v11

    new-array v15, v12, [Ljava/lang/String;

    aput-object v3, v15, v13

    aput-object v6, v15, v14

    aput-object v10, v15, v16

    .line 678
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 684
    .end local v10    # "skuDir":Ljava/lang/String;
    :cond_110
    const/16 v10, 0x4a1

    .line 686
    .local v10, "oemPermissionFlag":I
    nop

    .line 687
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v11

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v15

    .line 686
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 688
    nop

    .line 689
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v11

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v15

    .line 688
    invoke-static {v11, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 694
    const/16 v11, 0x7df

    .line 698
    .local v11, "productPermissionFlag":I
    sget v15, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v12, 0x1e

    if-gt v15, v12, :cond_13b

    .line 701
    const/4 v11, -0x1

    .line 703
    :cond_13b
    const/4 v12, -0x1

    invoke-direct {v0, v12}, Lcom/android/server/SystemConfig;->readAerSupportedFromXml(I)V

    .line 704
    nop

    .line 705
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v15

    .line 704
    invoke-static {v12, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 706
    nop

    .line 707
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v15

    .line 706
    invoke-static {v12, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v11}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 710
    nop

    .line 711
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v15

    .line 710
    invoke-static {v12, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const/4 v15, -0x1

    invoke-virtual {v0, v1, v12, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 712
    nop

    .line 713
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v14

    .line 712
    invoke-static {v12, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 717
    nop

    .line 718
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    const-string v14, "carrier"

    filled-new-array {v14, v4}, [Ljava/lang/String;

    move-result-object v13

    .line 717
    invoke-static {v12, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 719
    nop

    .line 720
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    filled-new-array {v14, v6}, [Ljava/lang/String;

    move-result-object v13

    .line 719
    invoke-static {v12, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 724
    const-string/jumbo v12, "ro.csc.omcnw_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 725
    .local v12, "salesCode":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1b6

    .line 726
    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 729
    :cond_1b6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v15, 0x4

    if-nez v13, :cond_1dd

    .line 730
    nop

    .line 731
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v13

    move/from16 v19, v2

    .end local v2    # "vendorPermissionFlag":I
    .local v19, "vendorPermissionFlag":I
    new-array v2, v15, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v3, v2, v18

    const/4 v15, 0x1

    aput-object v14, v2, v15

    const/16 v16, 0x2

    aput-object v12, v2, v16

    const/16 v17, 0x3

    aput-object v6, v2, v17

    .line 730
    invoke-static {v13, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    goto :goto_1df

    .line 729
    .end local v19    # "vendorPermissionFlag":I
    .restart local v2    # "vendorPermissionFlag":I
    :cond_1dd
    move/from16 v19, v2

    .line 734
    .end local v2    # "vendorPermissionFlag":I
    .restart local v19    # "vendorPermissionFlag":I
    :goto_1df
    const-string/jumbo v2, "ro.csc.omcnw_code2"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "salesCode2":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_20b

    .line 736
    nop

    .line 737
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v13

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v3, v15, v18

    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "odmPermissionFlag":I
    .local v20, "odmPermissionFlag":I
    aput-object v14, v15, v5

    const/4 v14, 0x2

    aput-object v2, v15, v14

    const/4 v14, 0x3

    aput-object v6, v15, v14

    .line 736
    invoke-static {v13, v15}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v0, v1, v13, v5}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    goto :goto_20f

    .line 735
    .end local v20    # "odmPermissionFlag":I
    .restart local v5    # "odmPermissionFlag":I
    :cond_20b
    move/from16 v20, v5

    const/16 v18, 0x0

    .line 743
    .end local v5    # "odmPermissionFlag":I
    .restart local v20    # "odmPermissionFlag":I
    :goto_20f
    const-string v5, "mdc.sys.omc_etcpath"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 744
    .local v13, "omcEtcPath":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_237

    .line 745
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    .local v14, "omcEtcDir":Ljava/io/File;
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/4 v15, -0x1

    invoke-virtual {v0, v1, v4, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 747
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v15}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 750
    .end local v14    # "omcEtcDir":Ljava/io/File;
    :cond_237
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 751
    .local v4, "productName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2c7

    const-string v14, "eea"

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2c7

    .line 752
    const-string v14, ""

    .line 753
    .local v14, "omcEtcPathCid":Ljava/lang/String;
    const-string/jumbo v15, "ro.boot.carrierid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 755
    .local v15, "carrierId":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_25b

    .line 756
    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v14    # "omcEtcPathCid":Ljava/lang/String;
    .local v5, "omcEtcPathCid":Ljava/lang/String;
    goto :goto_261

    .line 758
    .end local v5    # "omcEtcPathCid":Ljava/lang/String;
    .restart local v14    # "omcEtcPathCid":Ljava/lang/String;
    :cond_25b
    const-string v5, "mdc.sys.carrierid_etcpath"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 760
    .end local v14    # "omcEtcPathCid":Ljava/lang/String;
    .restart local v5    # "omcEtcPathCid":Ljava/lang/String;
    :goto_261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "omcEtcPathCid "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "SystemConfig"

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v14, "cid/permissions"

    move-object/from16 v16, v2

    .end local v2    # "salesCode2":Ljava/lang/String;
    .local v16, "salesCode2":Ljava/lang/String;
    const-string v2, "cid/sysconfig"

    if-nez v8, :cond_2a4

    .line 763
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v8, "omcEtcDirCid":Ljava/io/File;
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object/from16 v17, v4

    const/4 v4, -0x1

    .end local v4    # "productName":Ljava/lang/String;
    .local v17, "productName":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 765
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 766
    .end local v8    # "omcEtcDirCid":Ljava/io/File;
    goto :goto_2cb

    .line 767
    .end local v17    # "productName":Ljava/lang/String;
    .restart local v4    # "productName":Ljava/lang/String;
    :cond_2a4
    move-object/from16 v17, v4

    const/4 v4, -0x1

    .line 768
    .end local v4    # "productName":Ljava/lang/String;
    .restart local v17    # "productName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-static {v8, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 769
    nop

    .line 770
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v14}, [Ljava/lang/String;

    move-result-object v8

    .line 769
    invoke-static {v2, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    goto :goto_2cb

    .line 751
    .end local v5    # "omcEtcPathCid":Ljava/lang/String;
    .end local v15    # "carrierId":Ljava/lang/String;
    .end local v16    # "salesCode2":Ljava/lang/String;
    .end local v17    # "productName":Ljava/lang/String;
    .restart local v2    # "salesCode2":Ljava/lang/String;
    .restart local v4    # "productName":Ljava/lang/String;
    :cond_2c7
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 777
    .end local v2    # "salesCode2":Ljava/lang/String;
    .end local v4    # "productName":Ljava/lang/String;
    .end local v13    # "omcEtcPath":Ljava/lang/String;
    .restart local v16    # "salesCode2":Ljava/lang/String;
    :goto_2cb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemConfig;->SEServiceFeature()V

    .line 780
    invoke-static {}, Lcom/android/server/SystemConfig;->isSystemProcess()Z

    move-result v2

    if-nez v2, :cond_2d5

    .line 781
    return-void

    .line 784
    :cond_2d5
    const/16 v2, 0x13

    .line 786
    .local v2, "apexPermissionFlag":I
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move/from16 v13, v18

    :goto_2e2
    if-ge v13, v5, :cond_307

    aget-object v8, v4, v13

    .line 787
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_304

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2f9

    .line 788
    goto :goto_304

    .line 790
    :cond_2f9
    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 786
    .end local v8    # "f":Ljava/io/File;
    :cond_304
    :goto_304
    add-int/lit8 v13, v13, 0x1

    goto :goto_2e2

    .line 793
    :cond_307
    return-void
.end method

.method private blacklist readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1964
    const/4 v0, 0x0

    const-string v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1965
    .local v1, "pkgname":Ljava/lang/String;
    const-string v2, " at "

    const-string v3, "SystemConfig"

    if-nez v1, :cond_30

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<component-override> without package in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1967
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    return-void

    .line 1971
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1973
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1974
    .local v4, "depth":I
    :cond_38
    :goto_38
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1975
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "component"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1976
    const-string v5, "class"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1977
    .local v5, "clsname":Ljava/lang/String;
    const-string v6, "enabled"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1978
    .local v6, "enabled":Ljava/lang/String;
    if-nez v5, :cond_7b

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<component> without class in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1980
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1979
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return-void

    .line 1982
    :cond_7b
    if-nez v6, :cond_a0

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<component> without enabled in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1984
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    return-void

    .line 1988
    :cond_a0
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 1989
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1992
    :cond_b9
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 1994
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 1995
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1996
    .local v7, "componentEnabledStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v7, :cond_d2

    .line 1997
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v8

    .line 1998
    iget-object v8, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    :cond_d2
    const-string v8, "false"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    .end local v5    # "clsname":Ljava/lang/String;
    .end local v6    # "enabled":Ljava/lang/String;
    .end local v7    # "componentEnabledStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto/16 :goto_38

    .line 2005
    :cond_e3
    return-void
.end method

.method private blacklist readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1841
    .local p2, "doInstallMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p3, "nonInstallMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1842
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_2a

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package is required for <install-in-user-type> in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1844
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1843
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return-void

    .line 1848
    :cond_2a
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1849
    .local v2, "userTypesYes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1850
    .local v4, "userTypesNo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1851
    .local v5, "depth":I
    :goto_3a
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 1852
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1853
    .local v6, "name":Ljava/lang/String;
    const-string v7, "install-in"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "user-type is required for <install-in-user-type> in "

    const-string/jumbo v9, "user-type"

    if-eqz v7, :cond_84

    .line 1854
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1855
    .local v7, "userType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 1856
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1857
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1856
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    goto :goto_3a

    .line 1860
    :cond_75
    if-nez v2, :cond_80

    .line 1861
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v8

    .line 1862
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    :cond_80
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1865
    .end local v7    # "userType":Ljava/lang/String;
    goto :goto_d9

    :cond_84
    const-string v7, "do-not-install-in"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 1866
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1867
    .restart local v7    # "userType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 1868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1869
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1868
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    goto :goto_3a

    .line 1872
    :cond_af
    if-nez v4, :cond_ba

    .line 1873
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v8

    .line 1874
    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    :cond_ba
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1877
    .end local v7    # "userType":Ljava/lang/String;
    goto :goto_d9

    .line 1878
    :cond_be
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unrecognized tag in <install-in-user-type> in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1879
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1878
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    .end local v6    # "name":Ljava/lang/String;
    :goto_d9
    goto/16 :goto_3a

    .line 1882
    :cond_db
    return-void
.end method

.method private blacklist readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .registers 44
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .param p3, "permissionFlag"    # I

    .line 938
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "Got exception parsing permissions."

    const-string v6, "SystemConfig"

    :try_start_c
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_1294

    .line 942
    .local v7, "permReader":Ljava/io/FileReader;
    nop

    .line 943
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading permissions from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    .line 948
    .local v8, "lowRam":Z
    :try_start_2c
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 951
    :goto_2f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v16, v15

    .local v16, "type":I
    const/4 v9, 0x2

    const/4 v13, 0x1

    if-eq v15, v9, :cond_3e

    move/from16 v15, v16

    .end local v16    # "type":I
    .local v15, "type":I
    if-eq v15, v13, :cond_40

    goto :goto_2f

    .end local v15    # "type":I
    .restart local v16    # "type":I
    :cond_3e
    move/from16 v15, v16

    .line 956
    .end local v16    # "type":I
    .restart local v15    # "type":I
    :cond_40
    if-ne v15, v9, :cond_11c7

    .line 960
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "permissions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_4c} :catch_11f6
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4c} :catch_11e7
    .catchall {:try_start_2c .. :try_end_4c} :catchall_11df

    if-nez v9, :cond_a2

    :try_start_4e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    goto :goto_a2

    .line 961
    :cond_5b
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected start tag in "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ": found "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 962
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", expected \'permissions\' or \'config\'"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v9
    :try_end_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_88} :catch_9a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_88} :catch_90
    .catchall {:try_start_4e .. :try_end_88} :catchall_88

    .line 1687
    .end local v15    # "type":I
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :catchall_88
    move-exception v0

    move-object v4, v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_1290

    .line 1684
    :catch_90
    move-exception v0

    move-object v4, v0

    move-object/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_11ef

    .line 1682
    :catch_9a
    move-exception v0

    move-object v4, v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_11fc

    .line 965
    .restart local v15    # "type":I
    :cond_a2
    :goto_a2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_a7

    move v10, v13

    goto :goto_a8

    :cond_a7
    const/4 v10, 0x0

    .line 966
    .local v10, "allowAll":Z
    :goto_a8
    and-int/lit8 v17, v4, 0x2

    if-eqz v17, :cond_af

    move/from16 v17, v13

    goto :goto_b1

    :cond_af
    const/16 v17, 0x0

    .line 967
    .local v17, "allowLibs":Z
    :goto_b1
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_b8

    move/from16 v18, v13

    goto :goto_ba

    :cond_b8
    const/16 v18, 0x0

    .line 968
    .local v18, "allowFeatures":Z
    :goto_ba
    and-int/lit8 v19, v4, 0x4

    if-eqz v19, :cond_c1

    move/from16 v19, v13

    goto :goto_c3

    :cond_c1
    const/16 v19, 0x0

    .line 969
    .local v19, "allowPermissions":Z
    :goto_c3
    and-int/lit8 v20, v4, 0x8

    if-eqz v20, :cond_ca

    move/from16 v20, v13

    goto :goto_cc

    :cond_ca
    const/16 v20, 0x0

    .line 970
    .local v20, "allowAppConfigs":Z
    :goto_cc
    and-int/lit8 v21, v4, 0x10

    if-eqz v21, :cond_d3

    move/from16 v21, v13

    goto :goto_d5

    :cond_d3
    const/16 v21, 0x0

    .line 972
    .local v21, "allowPrivappPermissions":Z
    :goto_d5
    and-int/lit8 v22, v4, 0x20

    if-eqz v22, :cond_dc

    move/from16 v22, v13

    goto :goto_de

    :cond_dc
    const/16 v22, 0x0

    .line 973
    .local v22, "allowOemPermissions":Z
    :goto_de
    and-int/lit8 v23, v4, 0x40

    if-eqz v23, :cond_e5

    move/from16 v23, v13

    goto :goto_e7

    :cond_e5
    const/16 v23, 0x0

    .line 975
    .local v23, "allowApiWhitelisting":Z
    :goto_e7
    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_ed

    move v9, v13

    goto :goto_ee

    :cond_ed
    const/4 v9, 0x0

    .line 976
    .local v9, "allowAssociations":Z
    :goto_ee
    and-int/lit16 v11, v4, 0x100

    if-eqz v11, :cond_f4

    move v11, v13

    goto :goto_f5

    :cond_f4
    const/4 v11, 0x0

    .line 978
    .local v11, "allowOverrideAppRestrictions":Z
    :goto_f5
    and-int/lit16 v12, v4, 0x200

    if-eqz v12, :cond_fb

    move v12, v13

    goto :goto_fc

    :cond_fb
    const/4 v12, 0x0

    .line 980
    .local v12, "allowImplicitBroadcasts":Z
    :goto_fc
    and-int/lit16 v14, v4, 0x400

    if-eqz v14, :cond_102

    move v14, v13

    goto :goto_103

    :cond_102
    const/4 v14, 0x0

    .line 982
    .local v14, "allowVendorApex":Z
    :goto_103
    :try_start_103
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 983
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13
    :try_end_10a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_103 .. :try_end_10a} :catch_11f6
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_10a} :catch_11e7
    .catchall {:try_start_103 .. :try_end_10a} :catchall_11df

    const/4 v4, 0x1

    if-ne v13, v4, :cond_117

    .line 984
    nop

    .line 1687
    .end local v9    # "allowAssociations":Z
    .end local v10    # "allowAll":Z
    .end local v11    # "allowOverrideAppRestrictions":Z
    .end local v12    # "allowImplicitBroadcasts":Z
    .end local v14    # "allowVendorApex":Z
    .end local v15    # "type":I
    .end local v17    # "allowLibs":Z
    .end local v18    # "allowFeatures":Z
    .end local v19    # "allowPermissions":Z
    .end local v20    # "allowAppConfigs":Z
    .end local v21    # "allowPrivappPermissions":Z
    .end local v22    # "allowOemPermissions":Z
    .end local v23    # "allowApiWhitelisting":Z
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1688
    move-object/from16 v25, v7

    move/from16 v27, v8

    goto/16 :goto_1204

    .line 987
    .restart local v9    # "allowAssociations":Z
    .restart local v10    # "allowAll":Z
    .restart local v11    # "allowOverrideAppRestrictions":Z
    .restart local v12    # "allowImplicitBroadcasts":Z
    .restart local v14    # "allowVendorApex":Z
    .restart local v15    # "type":I
    .restart local v17    # "allowLibs":Z
    .restart local v18    # "allowFeatures":Z
    .restart local v19    # "allowPermissions":Z
    .restart local v20    # "allowAppConfigs":Z
    .restart local v21    # "allowPrivappPermissions":Z
    .restart local v22    # "allowOemPermissions":Z
    .restart local v23    # "allowApiWhitelisting":Z
    :cond_117
    :try_start_117
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_11b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_117 .. :try_end_11b} :catch_11f6
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11b} :catch_11e7
    .catchall {:try_start_117 .. :try_end_11b} :catchall_11df

    .line 988
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_124

    .line 989
    :try_start_11d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_120
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11d .. :try_end_120} :catch_9a
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_90
    .catchall {:try_start_11d .. :try_end_120} :catchall_88

    .line 990
    move/from16 v4, p3

    const/4 v13, 0x1

    goto :goto_103

    .line 992
    :cond_124
    :try_start_124
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_128
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_124 .. :try_end_128} :catch_11f6
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_128} :catch_11e7
    .catchall {:try_start_124 .. :try_end_128} :catchall_11df

    sparse-switch v13, :sswitch_data_12ae

    :cond_12b
    goto/16 :goto_2c4

    :sswitch_12d
    :try_start_12d
    const-string v13, "allow-implicit-broadcast"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0xe

    goto/16 :goto_2c5

    :sswitch_139
    const-string v13, "assign-uid-for-data-usage"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x22

    goto/16 :goto_2c5

    :sswitch_145
    const-string v13, "overlay-config-signature"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x1e

    goto/16 :goto_2c5

    :sswitch_151
    const-string v13, "bugreport-whitelisted"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x1b

    goto/16 :goto_2c5

    :sswitch_15d
    const-string v13, "privapp-permissions"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x16

    goto/16 :goto_2c5

    :sswitch_169
    const-string v13, "disabled-until-used-preinstalled-carrier-associated-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x14

    goto/16 :goto_2c5

    :sswitch_175
    const-string v13, "default-enabled-vr-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x11

    goto/16 :goto_2c5

    :sswitch_181
    const-string v13, "app-data-isolation-whitelisted-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x1a

    goto/16 :goto_2c5

    :sswitch_18d
    const-string/jumbo v13, "split-permission"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x3

    goto/16 :goto_2c5

    :sswitch_199
    const-string v13, "app-link"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0xf

    goto/16 :goto_2c5

    :sswitch_1a5
    const-string/jumbo v13, "whitelisted-staged-installer"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x20

    goto/16 :goto_2c5

    :sswitch_1b2
    const-string v13, "oem-permissions"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x17

    goto/16 :goto_2c5

    :sswitch_1be
    const-string v13, "apex-library"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x4

    goto/16 :goto_2c5

    :sswitch_1c9
    const-string/jumbo v13, "rollback-whitelisted-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x1f

    goto/16 :goto_2c5

    :sswitch_1d6
    const-string v13, "assign-permission"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x2

    goto/16 :goto_2c5

    :sswitch_1e1
    const-string v13, "allow-in-data-usage-save"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0xa

    goto/16 :goto_2c5

    :sswitch_1ed
    const-string v13, "allowed-vendor-apex"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x21

    goto/16 :goto_2c5

    :sswitch_1f9
    const-string v13, "backup-transport-whitelisted-service"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x13

    goto/16 :goto_2c5

    :sswitch_205
    const-string v13, "hidden-api-whitelisted-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x18

    goto/16 :goto_2c5

    :sswitch_211
    const-string v13, "library"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x5

    goto/16 :goto_2c5

    :sswitch_21c
    const-string v13, "group"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x0

    goto/16 :goto_2c5

    :sswitch_227
    const-string v13, "install-in-user-type"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x1c

    goto/16 :goto_2c5

    :sswitch_233
    const-string v13, "permission"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x1

    goto/16 :goto_2c5

    :sswitch_23e
    const-string v13, "allow-ignore-location-settings"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0xd

    goto/16 :goto_2c5

    :sswitch_24a
    const-string v13, "bg-restriction-exemption"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x10

    goto/16 :goto_2c5

    :sswitch_256
    const-string v13, "allow-in-power-save-except-idle"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x8

    goto/16 :goto_2c5

    :sswitch_262
    const-string/jumbo v13, "unavailable-feature"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x7

    goto :goto_2c5

    :sswitch_26d
    const-string v13, "feature"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v13, 0x6

    goto :goto_2c5

    :sswitch_277
    const-string v13, "allow-association"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x19

    goto :goto_2c5

    :sswitch_282
    const-string v13, "disabled-until-used-preinstalled-carrier-app"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x15

    goto :goto_2c5

    :sswitch_28d
    const-string v13, "component-override"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x12

    goto :goto_2c5

    :sswitch_298
    const-string v13, "named-actor"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x1d

    goto :goto_2c5

    :sswitch_2a3
    const-string v13, "allow-adas-location-settings"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0xc

    goto :goto_2c5

    :sswitch_2ae
    const-string v13, "allow-in-power-save"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    const/16 v13, 0x9

    goto :goto_2c5

    :sswitch_2b9
    const-string v13, "allow-unthrottled-location"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12d .. :try_end_2bf} :catch_9a
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_2bf} :catch_90
    .catchall {:try_start_12d .. :try_end_2bf} :catchall_88

    if-eqz v13, :cond_12b

    const/16 v13, 0xb

    goto :goto_2c5

    :goto_2c4
    const/4 v13, -0x1

    :goto_2c5
    move/from16 v24, v15

    .end local v15    # "type":I
    .local v24, "type":I
    const-string v15, "> without name in "

    move-object/from16 v25, v7

    .end local v7    # "permReader":Ljava/io/FileReader;
    .local v25, "permReader":Ljava/io/FileReader;
    const-string v7, "/"

    move-object/from16 v26, v5

    const-string v5, "name"

    move/from16 v27, v8

    .end local v8    # "lowRam":Z
    .local v27, "lowRam":Z
    const-string v8, "> without package in "

    move-object/from16 v28, v15

    const-string v15, "package"

    move/from16 v29, v12

    .end local v12    # "allowImplicitBroadcasts":Z
    .local v29, "allowImplicitBroadcasts":Z
    const-string v12, "<"

    move/from16 v30, v11

    .end local v11    # "allowOverrideAppRestrictions":Z
    .local v30, "allowOverrideAppRestrictions":Z
    const-string v11, " at "

    move/from16 v31, v9

    .end local v9    # "allowAssociations":Z
    .local v31, "allowAssociations":Z
    const/4 v9, 0x0

    packed-switch v13, :pswitch_data_133c

    .line 1676
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .local v38, "allowVendorApex":Z
    .local v39, "allowAll":Z
    goto/16 :goto_1181

    .line 1639
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_2ed
    if-eqz v10, :cond_3c6

    .line 1640
    :try_start_2ef
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1641
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_326

    .line 1642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1644
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1642
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1646
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1648
    :cond_326
    const-string/jumbo v7, "uid"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1649
    .local v7, "uidStr":Ljava/lang/String;
    if-nez v7, :cond_362

    .line 1650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without uid in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1651
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1650
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1653
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1655
    :cond_362
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1656
    .local v8, "uid":I
    const/16 v9, 0xb54

    if-lt v8, v9, :cond_389

    const/16 v9, 0xbb7

    if-le v8, v9, :cond_36f

    goto :goto_389

    .line 1663
    :cond_36f
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1664
    .local v9, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_384

    .line 1665
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v11

    .line 1666
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    invoke-virtual {v11, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1668
    :cond_384
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    nop

    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "uidStr":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3c9

    .line 1658
    .restart local v5    # "pkgname":Ljava/lang/String;
    .restart local v7    # "uidStr":Ljava/lang/String;
    .restart local v8    # "uid":I
    :cond_389
    :goto_389
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "> with unknown uid "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1659
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1658
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1661
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1670
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "uidStr":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_3c6
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1672
    :goto_3c9
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1673
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1617
    :pswitch_3d2
    if-eqz v14, :cond_43e

    .line 1618
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1619
    .local v5, "pkgName":Ljava/lang/String;
    const-string v7, "installerPackage"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1621
    .local v7, "installerPkgName":Ljava/lang/String;
    if-nez v5, :cond_408

    .line 1622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1623
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1622
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_408
    if-nez v7, :cond_434

    .line 1626
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without installerPackage in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1627
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1626
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_434
    if-eqz v5, :cond_43d

    if-eqz v7, :cond_43d

    .line 1630
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v7    # "installerPkgName":Ljava/lang/String;
    :cond_43d
    goto :goto_441

    .line 1633
    :cond_43e
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1635
    :goto_441
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1636
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1594
    :pswitch_44a
    if-eqz v20, :cond_499

    .line 1595
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1596
    .local v5, "pkgname":Ljava/lang/String;
    const-string v7, "isModulesInstaller"

    const/4 v9, 0x0

    invoke-static {v2, v7, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v7

    .line 1598
    .local v7, "isModulesInstaller":Z
    if-nez v5, :cond_482

    .line 1599
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1600
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1599
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_487

    .line 1602
    :cond_482
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1604
    :goto_487
    if-eqz v7, :cond_498

    .line 1605
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    if-nez v8, :cond_490

    .line 1609
    iput-object v5, v1, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    goto :goto_498

    .line 1606
    :cond_490
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Multiple modules installers"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v8

    .line 1611
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "isModulesInstaller":Z
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :cond_498
    :goto_498
    goto :goto_49c

    .line 1612
    :cond_499
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1614
    :goto_49c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1615
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1584
    :pswitch_4a5
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_4d4

    .line 1586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1587
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1586
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d9

    .line 1589
    :cond_4d4
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1591
    :goto_4d9
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1592
    .end local v5    # "pkgname":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1563
    :pswitch_4e2
    if-eqz v10, :cond_547

    .line 1564
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1565
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_513

    .line 1566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1567
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1566
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_521

    .line 1569
    :cond_513
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_522

    .line 1570
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 1578
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_521
    goto :goto_54a

    .line 1572
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_522
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reference signature package defined as both "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v7

    .line 1579
    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :cond_547
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1581
    :goto_54a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1582
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1525
    :pswitch_553
    const-string v8, "namespace"

    .line 1526
    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1525
    invoke-static {v8}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1527
    .local v8, "namespace":Ljava/lang/String;
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1528
    .local v5, "actorName":Ljava/lang/String;
    nop

    .line 1529
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1528
    invoke-static {v9}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1530
    .local v9, "pkgName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_59c

    .line 1531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "> without namespace in "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1532
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1531
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_630

    .line 1533
    :cond_59c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5cd

    .line 1534
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "> without actor name in "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1535
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1534
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_630

    .line 1536
    :cond_5cd
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5fe

    .line 1537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "> without package name in "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1538
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1537
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_630

    .line 1539
    :cond_5fe
    const-string v11, "android"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_676

    .line 1543
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    if-nez v11, :cond_611

    .line 1544
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    iput-object v11, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 1547
    :cond_611
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 1548
    .local v11, "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v11, :cond_627

    .line 1549
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v7

    .line 1550
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62d

    .line 1551
    :cond_627
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_639

    .line 1558
    :goto_62d
    invoke-interface {v11, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    .end local v11    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_630
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1561
    .end local v5    # "actorName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1552
    .restart local v5    # "actorName":Ljava/lang/String;
    .restart local v8    # "namespace":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_639
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1553
    .local v12, "existing":Ljava/lang/String;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v11

    .end local v11    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v28, "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "Duplicate actor definition for "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "; defined as both "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " and "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v13

    .line 1540
    .end local v12    # "existing":Ljava/lang/String;
    .end local v28    # "nameToPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :cond_676
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Defining "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for the android namespace is not allowed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v7

    .line 1521
    .end local v5    # "actorName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :pswitch_69f
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v5, v7}, Lcom/android/server/SystemConfig;->readInstallInUserType(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)V

    .line 1523
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1510
    :pswitch_6ac
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1511
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_6db

    .line 1512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1513
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1512
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e0

    .line 1515
    :cond_6db
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1517
    :goto_6e0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1518
    .end local v5    # "pkgname":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1500
    :pswitch_6e9
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1501
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_718

    .line 1502
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1503
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1502
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71d

    .line 1505
    :cond_718
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1507
    :goto_71d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1508
    .end local v5    # "pkgname":Ljava/lang/String;
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1470
    :pswitch_726
    if-eqz v31, :cond_7e3

    .line 1471
    const-string/jumbo v5, "target"

    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1472
    .local v5, "target":Ljava/lang/String;
    if-nez v5, :cond_764

    .line 1473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without target in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1474
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1473
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1476
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1478
    :cond_764
    const-string v7, "allowed"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1479
    .local v7, "allowed":Ljava/lang/String;
    if-nez v7, :cond_79f

    .line 1480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without allowed in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1481
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1480
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1483
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1485
    :cond_79f
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1486
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1487
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1488
    .local v8, "associations":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v8, :cond_7be

    .line 1489
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v9

    .line 1490
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :cond_7be
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding association: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " <- "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1494
    nop

    .end local v5    # "target":Ljava/lang/String;
    .end local v7    # "allowed":Ljava/lang/String;
    .end local v8    # "associations":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_7e6

    .line 1495
    :cond_7e3
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1497
    :goto_7e6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1498
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1456
    :pswitch_7ef
    if-eqz v23, :cond_826

    .line 1457
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1458
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_820

    .line 1459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1460
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1459
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_825

    .line 1462
    :cond_820
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1464
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_825
    goto :goto_829

    .line 1465
    :cond_826
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1467
    :goto_829
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1468
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1448
    :pswitch_832
    if-eqz v22, :cond_83d

    .line 1449
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemConfig;->readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1451
    :cond_83d
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1452
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1454
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1410
    :pswitch_849
    if-eqz v21, :cond_94c

    .line 1415
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1416
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1415
    invoke-interface {v5, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_894

    .line 1417
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1417
    invoke-interface {v5, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_892

    goto :goto_894

    :cond_892
    const/4 v5, 0x0

    goto :goto_895

    :cond_894
    :goto_894
    const/4 v5, 0x1

    .line 1419
    .local v5, "vendor":Z
    :goto_895
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1420
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1419
    invoke-interface {v8, v9}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1421
    .local v8, "product":Z
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1421
    invoke-interface {v9, v11}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 1423
    .local v9, "systemExt":Z
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1423
    invoke-interface {v11, v7}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_911

    .line 1425
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_911

    const/4 v7, 0x1

    goto :goto_912

    :cond_911
    const/4 v7, 0x0

    .line 1426
    .local v7, "apex":Z
    :goto_912
    if-eqz v5, :cond_91c

    .line 1427
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_946

    .line 1429
    :cond_91c
    if-eqz v8, :cond_926

    .line 1430
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_946

    .line 1432
    :cond_926
    if-eqz v9, :cond_930

    .line 1433
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_946

    .line 1435
    :cond_930
    if-eqz v7, :cond_93f

    .line 1436
    nop

    .line 1437
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    .line 1436
    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/SystemConfig;->readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V

    goto :goto_946

    .line 1439
    :cond_93f
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    iget-object v12, v1, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1442
    .end local v5    # "vendor":Z
    .end local v7    # "apex":Z
    .end local v8    # "product":Z
    .end local v9    # "systemExt":Z
    :goto_946
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1443
    :cond_94c
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1444
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1446
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1394
    :pswitch_958
    if-eqz v20, :cond_98f

    .line 1395
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1396
    .local v5, "pkgname":Ljava/lang/String;
    if-nez v5, :cond_989

    .line 1397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1400
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1397
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98e

    .line 1402
    :cond_989
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1404
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_98e
    goto :goto_992

    .line 1405
    :cond_98f
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1407
    :goto_992
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1408
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1352
    :pswitch_99b
    if-eqz v20, :cond_a3d

    .line 1353
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1354
    .restart local v5    # "pkgname":Ljava/lang/String;
    const-string v7, "carrierAppPackage"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1356
    .local v7, "carrierPkgname":Ljava/lang/String;
    if-eqz v5, :cond_a12

    if-nez v7, :cond_9ac

    goto :goto_a12

    .line 1364
    :cond_9ac
    const/4 v8, -0x1

    .line 1365
    .local v8, "addedInSdk":I
    const-string v13, "addedInSdk"

    invoke-interface {v2, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1366
    .local v9, "addedInSdkStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_9b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ef .. :try_end_9b7} :catch_11da
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_9b7} :catch_11d7
    .catchall {:try_start_2ef .. :try_end_9b7} :catchall_128e

    if-nez v13, :cond_9f4

    .line 1368
    :try_start_9b9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_9bd
    .catch Ljava/lang/NumberFormatException; {:try_start_9b9 .. :try_end_9bd} :catch_9bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b9 .. :try_end_9bd} :catch_11da
    .catch Ljava/io/IOException; {:try_start_9b9 .. :try_end_9bd} :catch_11d7
    .catchall {:try_start_9b9 .. :try_end_9bd} :catchall_128e

    move v8, v11

    .line 1375
    goto :goto_9f4

    .line 1369
    :catch_9bf
    move-exception v0

    move-object v13, v0

    .line 1370
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_9c1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "> addedInSdk not an integer in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1372
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1370
    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1374
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1377
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_9f4
    :goto_9f4
    iget-object v11, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 1378
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1380
    .local v11, "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    if-nez v11, :cond_a09

    .line 1381
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 1382
    iget-object v12, v1, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    :cond_a09
    new-instance v12, Landroid/os/CarrierAssociatedAppEntry;

    invoke-direct {v12, v5, v8}, Landroid/os/CarrierAssociatedAppEntry;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3c

    .line 1357
    .end local v8    # "addedInSdk":I
    .end local v9    # "addedInSdkStr":Ljava/lang/String;
    .end local v11    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/CarrierAssociatedAppEntry;>;"
    :cond_a12
    :goto_a12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without package or carrierAppPackage in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1359
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1357
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "carrierPkgname":Ljava/lang/String;
    :goto_a3c
    goto :goto_a40

    .line 1389
    :cond_a3d
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1391
    :goto_a40
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1392
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1331
    :pswitch_a49
    if-eqz v18, :cond_ac0

    .line 1332
    const-string/jumbo v5, "service"

    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1333
    .local v5, "serviceName":Ljava/lang/String;
    if-nez v5, :cond_a7f

    .line 1334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without service in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1335
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1334
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_abf

    .line 1337
    :cond_a7f
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1338
    .local v7, "cn":Landroid/content/ComponentName;
    if-nez v7, :cond_aba

    .line 1339
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> with invalid service name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1341
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1339
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_abf

    .line 1343
    :cond_aba
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1346
    .end local v5    # "serviceName":Ljava/lang/String;
    .end local v7    # "cn":Landroid/content/ComponentName;
    :goto_abf
    goto :goto_ac3

    .line 1347
    :cond_ac0
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1349
    :goto_ac3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1350
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1328
    :pswitch_acc
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readComponentOverrides(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    .line 1329
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1310
    :pswitch_ad5
    if-eqz v20, :cond_b44

    .line 1311
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1312
    .local v5, "pkgname":Ljava/lang/String;
    const-string v7, "class"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1313
    .local v7, "clsname":Ljava/lang/String;
    if-nez v5, :cond_b0c

    .line 1314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1315
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1314
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b43

    .line 1316
    :cond_b0c
    if-nez v7, :cond_b39

    .line 1317
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without class in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1318
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1317
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b43

    .line 1320
    :cond_b39
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1322
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "clsname":Ljava/lang/String;
    :goto_b43
    goto :goto_b47

    .line 1323
    :cond_b44
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1325
    :goto_b47
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1326
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1296
    :pswitch_b50
    if-eqz v30, :cond_b87

    .line 1297
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1298
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_b81

    .line 1299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1300
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1299
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b86

    .line 1302
    :cond_b81
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1304
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_b86
    goto :goto_b8a

    .line 1305
    :cond_b87
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1307
    :goto_b8a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1308
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1282
    :pswitch_b93
    if-eqz v20, :cond_bca

    .line 1283
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1284
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_bc4

    .line 1285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1286
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1285
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc9

    .line 1288
    :cond_bc4
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1290
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_bc9
    goto :goto_bcd

    .line 1291
    :cond_bca
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1293
    :goto_bcd
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1294
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1268
    :pswitch_bd6
    if-eqz v29, :cond_c11

    .line 1269
    const-string v5, "action"

    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1270
    .local v5, "action":Ljava/lang/String;
    if-nez v5, :cond_c0b

    .line 1271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without action in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1272
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1271
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c10

    .line 1274
    :cond_c0b
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1276
    .end local v5    # "action":Ljava/lang/String;
    :goto_c10
    goto :goto_c14

    .line 1277
    :cond_c11
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1279
    :goto_c14
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1280
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1240
    :pswitch_c1d
    if-eqz v30, :cond_c87

    .line 1241
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1242
    .local v5, "pkgname":Ljava/lang/String;
    const-string v7, "attributionTag"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1244
    .local v7, "attributionTag":Ljava/lang/String;
    if-nez v5, :cond_c54

    .line 1245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1246
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1245
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c86

    .line 1248
    :cond_c54
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1249
    .local v8, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v8, :cond_c64

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c86

    .line 1250
    :cond_c64
    if-nez v8, :cond_c72

    .line 1251
    new-instance v9, Landroid/util/ArraySet;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/util/ArraySet;-><init>(I)V

    move-object v8, v9

    .line 1252
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    :cond_c72
    const-string v9, "*"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c86

    .line 1255
    const-string v9, "null"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c83

    .line 1256
    const/4 v7, 0x0

    .line 1258
    :cond_c83
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1262
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v8    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c86
    :goto_c86
    goto :goto_c8a

    .line 1263
    :cond_c87
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1265
    :goto_c8a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1266
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1212
    :pswitch_c93
    if-eqz v30, :cond_cfd

    .line 1213
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1214
    .restart local v5    # "pkgname":Ljava/lang/String;
    const-string v7, "attributionTag"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1216
    .restart local v7    # "attributionTag":Ljava/lang/String;
    if-nez v5, :cond_cca

    .line 1217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1218
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1217
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cfc

    .line 1220
    :cond_cca
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1221
    .restart local v8    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v8, :cond_cda

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_cfc

    .line 1222
    :cond_cda
    if-nez v8, :cond_ce8

    .line 1223
    new-instance v9, Landroid/util/ArraySet;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/util/ArraySet;-><init>(I)V

    move-object v8, v9

    .line 1224
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    :cond_ce8
    const-string v9, "*"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cfc

    .line 1227
    const-string v9, "null"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cf9

    .line 1228
    const/4 v7, 0x0

    .line 1230
    :cond_cf9
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1234
    .end local v5    # "pkgname":Ljava/lang/String;
    .end local v7    # "attributionTag":Ljava/lang/String;
    .end local v8    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_cfc
    :goto_cfc
    goto :goto_d00

    .line 1235
    :cond_cfd
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1237
    :goto_d00
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1238
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1198
    :pswitch_d09
    if-eqz v30, :cond_d40

    .line 1199
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1200
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_d3a

    .line 1201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1202
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1201
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3f

    .line 1204
    :cond_d3a
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1206
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_d3f
    goto :goto_d43

    .line 1207
    :cond_d40
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1209
    :goto_d43
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1210
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1184
    :pswitch_d4c
    if-eqz v30, :cond_d83

    .line 1185
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1186
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_d7d

    .line 1187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1188
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1187
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d82

    .line 1190
    :cond_d7d
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1192
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_d82
    goto :goto_d86

    .line 1193
    :cond_d83
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1195
    :goto_d86
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1196
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1170
    :pswitch_d8f
    if-eqz v30, :cond_dc6

    .line 1171
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1172
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_dc0

    .line 1173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1174
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1173
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc5

    .line 1176
    :cond_dc0
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1178
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_dc5
    goto :goto_dc9

    .line 1179
    :cond_dc6
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1181
    :goto_dc9
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1182
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1156
    :pswitch_dd2
    if-eqz v30, :cond_e09

    .line 1157
    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    .restart local v5    # "pkgname":Ljava/lang/String;
    if-nez v5, :cond_e03

    .line 1159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1160
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1159
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e08

    .line 1162
    :cond_e03
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1164
    .end local v5    # "pkgname":Ljava/lang/String;
    :goto_e08
    goto :goto_e0c

    .line 1165
    :cond_e09
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1167
    :goto_e0c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1168
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1142
    :pswitch_e15
    if-eqz v18, :cond_e4e

    .line 1143
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1144
    .local v5, "fname":Ljava/lang/String;
    if-nez v5, :cond_e48

    .line 1145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, v28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1146
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1145
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4d

    .line 1148
    :cond_e48
    iget-object v7, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local v5    # "fname":Ljava/lang/String;
    :goto_e4d
    goto :goto_e51

    .line 1151
    :cond_e4e
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1153
    :goto_e51
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1154
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1120
    :pswitch_e5a
    move-object/from16 v8, v28

    if-eqz v18, :cond_eb0

    .line 1121
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1122
    .restart local v5    # "fname":Ljava/lang/String;
    const-string/jumbo v7, "version"

    const/4 v13, 0x0

    invoke-static {v2, v7, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1124
    .local v7, "fversion":I
    if-nez v27, :cond_e6f

    .line 1125
    const/4 v9, 0x1

    const/4 v15, 0x1

    .local v9, "allowed":Z
    goto :goto_e7f

    .line 1127
    .end local v9    # "allowed":Z
    :cond_e6f
    const-string v13, "notLowRam"

    invoke-interface {v2, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1128
    .local v9, "notLowRam":Ljava/lang/String;
    const-string/jumbo v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v15, 0x1

    xor-int/2addr v13, v15

    move v9, v13

    .line 1130
    .local v9, "allowed":Z
    :goto_e7f
    if-nez v5, :cond_eaa

    .line 1131
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1131
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eaf

    .line 1133
    :cond_eaa
    if-eqz v9, :cond_eaf

    .line 1134
    invoke-direct {v1, v5, v7}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1136
    .end local v5    # "fname":Ljava/lang/String;
    .end local v7    # "fversion":I
    .end local v9    # "allowed":Z
    :cond_eaf
    :goto_eaf
    goto :goto_eb4

    .line 1137
    :cond_eb0
    const/4 v15, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1139
    :goto_eb4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_eb7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c1 .. :try_end_eb7} :catch_11da
    .catch Ljava/io/IOException; {:try_start_9c1 .. :try_end_eb7} :catch_11d7
    .catchall {:try_start_9c1 .. :try_end_eb7} :catchall_128e

    .line 1140
    move/from16 v39, v10

    move/from16 v38, v14

    goto/16 :goto_11b0

    .line 1071
    :pswitch_ebd
    move-object/from16 v8, v28

    const/4 v15, 0x1

    if-eqz v17, :cond_fe9

    .line 1072
    :try_start_ec2
    invoke-interface {v2, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1073
    .local v5, "lname":Ljava/lang/String;
    const-string v7, "file"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1074
    .local v7, "lfile":Ljava/lang/String;
    const-string v13, "dependency"

    invoke-interface {v2, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1075
    .local v13, "ldependency":Ljava/lang/String;
    const-string v15, "min-device-sdk"

    invoke-interface {v2, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1076
    .local v15, "minDeviceSdk":Ljava/lang/String;
    const-string v9, "max-device-sdk"

    move/from16 v38, v14

    const/4 v14, 0x0

    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_ee1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec2 .. :try_end_ee1} :catch_fe4
    .catch Ljava/io/IOException; {:try_start_ec2 .. :try_end_ee1} :catch_fdf
    .catchall {:try_start_ec2 .. :try_end_ee1} :catchall_fda

    .line 1077
    .local v9, "maxDeviceSdk":Ljava/lang/String;
    if-nez v5, :cond_f0f

    .line 1078
    :try_start_ee3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1079
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1078
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v39, v10

    goto/16 :goto_fd7

    .line 1080
    :cond_f0f
    if-nez v7, :cond_f3f

    .line 1081
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "> without file in "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1082
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1081
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v39, v10

    goto/16 :goto_fd7

    .line 1084
    :cond_f3f
    if-eqz v15, :cond_f4a

    .line 1085
    invoke-static {v15}, Lcom/android/server/SystemConfig;->isAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f48

    goto :goto_f4a

    :cond_f48
    const/4 v8, 0x0

    goto :goto_f4b

    :cond_f4a
    :goto_f4a
    const/4 v8, 0x1

    .line 1086
    .local v8, "allowedMinSdk":Z
    :goto_f4b
    if-eqz v9, :cond_f56

    .line 1087
    invoke-static {v9}, Lcom/android/server/SystemConfig;->isAtMostSdkLevel(Ljava/lang/String;)Z

    move-result v11
    :try_end_f51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ee3 .. :try_end_f51} :catch_11da
    .catch Ljava/io/IOException; {:try_start_ee3 .. :try_end_f51} :catch_11d7
    .catchall {:try_start_ee3 .. :try_end_f51} :catchall_128e

    if-eqz v11, :cond_f54

    goto :goto_f56

    :cond_f54
    const/4 v11, 0x0

    goto :goto_f57

    :cond_f56
    :goto_f56
    const/4 v11, 0x1

    .line 1088
    .local v11, "allowedMaxSdk":Z
    :goto_f57
    :try_start_f57
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    .line 1089
    .local v12, "exists":Z
    if-eqz v8, :cond_f96

    if-eqz v11, :cond_f96

    if-eqz v12, :cond_f96

    .line 1090
    const-string v14, "on-bootclasspath-since"

    move/from16 v39, v10

    const/4 v10, 0x0

    .end local v10    # "allowAll":Z
    .restart local v39    # "allowAll":Z
    invoke-interface {v2, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1092
    .local v36, "bcpSince":Ljava/lang/String;
    const-string v14, "on-bootclasspath-before"

    invoke-interface {v2, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1094
    .local v37, "bcpBefore":Ljava/lang/String;
    new-instance v10, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 1095
    if-nez v13, :cond_f7d

    .line 1096
    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/String;

    goto :goto_f83

    :cond_f7d
    const-string v2, ":"

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_f83
    move-object/from16 v35, v2

    move-object/from16 v32, v10

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v32 .. v37}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    .line 1098
    .local v2, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    iget-object v10, v1, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    nop

    .end local v2    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .end local v36    # "bcpSince":Ljava/lang/String;
    .end local v37    # "bcpBefore":Ljava/lang/String;
    goto :goto_fd7

    .line 1089
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    :cond_f96
    move/from16 v39, v10

    .line 1100
    .end local v10    # "allowAll":Z
    .restart local v39    # "allowAll":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Ignore shared library "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1102
    .local v2, "msg":Ljava/lang/StringBuilder;
    if-nez v8, :cond_fb4

    .line 1103
    const-string v10, " min-device-sdk="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_fb4
    if-nez v11, :cond_fbf

    .line 1106
    const-string v10, " max-device-sdk="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :cond_fbf
    if-nez v12, :cond_fd0

    .line 1109
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " does not exist"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_fd0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f57 .. :try_end_fd7} :catch_fe4
    .catch Ljava/io/IOException; {:try_start_f57 .. :try_end_fd7} :catch_fdf
    .catchall {:try_start_f57 .. :try_end_fd7} :catchall_fda

    .line 1114
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v5    # "lname":Ljava/lang/String;
    .end local v7    # "lfile":Ljava/lang/String;
    .end local v8    # "allowedMinSdk":Z
    .end local v9    # "maxDeviceSdk":Ljava/lang/String;
    .end local v11    # "allowedMaxSdk":Z
    .end local v12    # "exists":Z
    .end local v13    # "ldependency":Ljava/lang/String;
    .end local v15    # "minDeviceSdk":Ljava/lang/String;
    :goto_fd7
    move-object/from16 v2, p1

    goto :goto_ff2

    .line 1687
    .end local v4    # "name":Ljava/lang/String;
    .end local v17    # "allowLibs":Z
    .end local v18    # "allowFeatures":Z
    .end local v19    # "allowPermissions":Z
    .end local v20    # "allowAppConfigs":Z
    .end local v21    # "allowPrivappPermissions":Z
    .end local v22    # "allowOemPermissions":Z
    .end local v23    # "allowApiWhitelisting":Z
    .end local v24    # "type":I
    .end local v29    # "allowImplicitBroadcasts":Z
    .end local v30    # "allowOverrideAppRestrictions":Z
    .end local v31    # "allowAssociations":Z
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    :catchall_fda
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_128f

    .line 1684
    :catch_fdf
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_11d8

    .line 1682
    :catch_fe4
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_11db

    .line 1115
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    .restart local v17    # "allowLibs":Z
    .restart local v18    # "allowFeatures":Z
    .restart local v19    # "allowPermissions":Z
    .restart local v20    # "allowAppConfigs":Z
    .restart local v21    # "allowPrivappPermissions":Z
    .restart local v22    # "allowOemPermissions":Z
    .restart local v23    # "allowApiWhitelisting":Z
    .restart local v24    # "type":I
    .restart local v29    # "allowImplicitBroadcasts":Z
    .restart local v30    # "allowOverrideAppRestrictions":Z
    .restart local v31    # "allowAssociations":Z
    :cond_fe9
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    move-object/from16 v2, p1

    :try_start_fef
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1117
    :goto_ff2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1118
    goto/16 :goto_11b0

    .line 1061
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_ff7
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v19, :cond_1002

    .line 1062
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SystemConfig;->readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V

    goto/16 :goto_11b0

    .line 1064
    :cond_1002
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1065
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1067
    goto/16 :goto_11b0

    .line 1025
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_100a
    move/from16 v39, v10

    move/from16 v38, v14

    move-object/from16 v8, v28

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v19, :cond_10dd

    .line 1026
    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1027
    .local v5, "perm":Ljava/lang/String;
    if-nez v5, :cond_1046

    .line 1028
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1029
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1028
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1031
    goto/16 :goto_11b0

    .line 1033
    :cond_1046
    const-string/jumbo v7, "uid"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1034
    .local v7, "uidStr":Ljava/lang/String;
    if-nez v7, :cond_107f

    .line 1035
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> without uid in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1036
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1035
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1038
    goto/16 :goto_11b0

    .line 1040
    :cond_107f
    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v8

    .line 1041
    .local v8, "uid":I
    if-gez v8, :cond_10be

    .line 1042
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> with unknown uid \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1044
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1042
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1046
    goto/16 :goto_11b0

    .line 1048
    :cond_10be
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1049
    iget-object v9, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1050
    .local v9, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_10d8

    .line 1051
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v10

    .line 1052
    iget-object v10, v1, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1054
    :cond_10d8
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1055
    nop

    .end local v5    # "perm":Ljava/lang/String;
    .end local v7    # "uidStr":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_10e0

    .line 1056
    :cond_10dd
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1058
    :goto_10e0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1059
    goto/16 :goto_11b0

    .line 1009
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_10e5
    move/from16 v39, v10

    move/from16 v38, v14

    move-object/from16 v8, v28

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v19, :cond_112b

    .line 1010
    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1011
    .restart local v5    # "perm":Ljava/lang/String;
    if-nez v5, :cond_1121

    .line 1012
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1013
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1012
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1015
    goto/16 :goto_11b0

    .line 1017
    :cond_1121
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1018
    invoke-virtual {v1, v2, v5}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1019
    .end local v5    # "perm":Ljava/lang/String;
    goto/16 :goto_11b0

    .line 1020
    :cond_112b
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1021
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1023
    goto/16 :goto_11b0

    .line 994
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .restart local v10    # "allowAll":Z
    .restart local v14    # "allowVendorApex":Z
    :pswitch_1133
    move/from16 v39, v10

    move/from16 v38, v14

    .end local v10    # "allowAll":Z
    .end local v14    # "allowVendorApex":Z
    .restart local v38    # "allowVendorApex":Z
    .restart local v39    # "allowAll":Z
    if-eqz v39, :cond_117a

    .line 995
    const-string v5, "gid"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 996
    .local v5, "gidStr":Ljava/lang/String;
    if-eqz v5, :cond_114f

    .line 997
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    .line 998
    .local v7, "gid":I
    iget-object v8, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 999
    .end local v7    # "gid":I
    goto :goto_1179

    .line 1000
    :cond_114f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> without gid in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1001
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1000
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .end local v5    # "gidStr":Ljava/lang/String;
    :goto_1179
    goto :goto_117d

    .line 1004
    :cond_117a
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/SystemConfig;->logNotAllowedInPartition(Ljava/lang/String;Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1006
    :goto_117d
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1007
    goto :goto_11b0

    .line 1676
    :goto_1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is unknown in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1677
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1676
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1681
    .end local v4    # "name":Ljava/lang/String;
    :goto_11b0
    move/from16 v4, p3

    move/from16 v15, v24

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move/from16 v8, v27

    move/from16 v12, v29

    move/from16 v11, v30

    move/from16 v9, v31

    move/from16 v14, v38

    move/from16 v10, v39

    const/4 v13, 0x1

    goto/16 :goto_103

    .line 957
    .end local v17    # "allowLibs":Z
    .end local v18    # "allowFeatures":Z
    .end local v19    # "allowPermissions":Z
    .end local v20    # "allowAppConfigs":Z
    .end local v21    # "allowPrivappPermissions":Z
    .end local v22    # "allowOemPermissions":Z
    .end local v23    # "allowApiWhitelisting":Z
    .end local v24    # "type":I
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local v29    # "allowImplicitBroadcasts":Z
    .end local v30    # "allowOverrideAppRestrictions":Z
    .end local v31    # "allowAssociations":Z
    .end local v38    # "allowVendorApex":Z
    .end local v39    # "allowAll":Z
    .local v7, "permReader":Ljava/io/FileReader;
    .local v8, "lowRam":Z
    .local v15, "type":I
    :cond_11c7
    move-object/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v8

    move/from16 v24, v15

    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .end local v15    # "type":I
    .restart local v24    # "type":I
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "permFile":Ljava/io/File;
    .end local p3    # "permissionFlag":I
    throw v4
    :try_end_11d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fef .. :try_end_11d7} :catch_11da
    .catch Ljava/io/IOException; {:try_start_fef .. :try_end_11d7} :catch_11d7
    .catchall {:try_start_fef .. :try_end_11d7} :catchall_128e

    .line 1684
    .end local v24    # "type":I
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "permFile":Ljava/io/File;
    .restart local p3    # "permissionFlag":I
    :catch_11d7
    move-exception v0

    :goto_11d8
    move-object v4, v0

    goto :goto_11ef

    .line 1682
    :catch_11da
    move-exception v0

    :goto_11db
    move-object v4, v0

    move-object/from16 v5, v26

    goto :goto_11fc

    .line 1687
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    :catchall_11df
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    move-object v4, v0

    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    goto/16 :goto_1290

    .line 1684
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    :catch_11e7
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v25, v7

    move/from16 v27, v8

    move-object v4, v0

    .line 1685
    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .local v4, "e":Ljava/io/IOException;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    :goto_11ef
    move-object/from16 v5, v26

    :try_start_11f1
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    nop

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1200

    .line 1682
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    .restart local v7    # "permReader":Ljava/io/FileReader;
    .restart local v8    # "lowRam":Z
    :catch_11f6
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v27, v8

    move-object v4, v0

    .line 1683
    .end local v7    # "permReader":Ljava/io/FileReader;
    .end local v8    # "lowRam":Z
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v25    # "permReader":Ljava/io/FileReader;
    .restart local v27    # "lowRam":Z
    :goto_11fc
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11ff
    .catchall {:try_start_11f1 .. :try_end_11ff} :catchall_128e

    .line 1687
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1200
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1688
    nop

    .line 1691
    :goto_1204
    const-string v4, "com.samsung.feature.support_repair_mode"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1696
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v4

    if-eqz v4, :cond_121a

    .line 1697
    const-string v4, "android.software.file_based_encryption"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1698
    const-string v4, "android.software.securely_removes_users"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1702
    :cond_121a
    invoke-static {}, Landroid/os/storage/StorageManager;->hasAdoptable()Z

    move-result v4

    if-eqz v4, :cond_1225

    .line 1703
    const-string v4, "android.software.adoptable_storage"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1706
    :cond_1225
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1231

    .line 1707
    const-string v4, "android.hardware.ram.low"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_1236

    .line 1709
    :cond_1231
    const-string v4, "android.hardware.ram.normal"

    invoke-direct {v1, v4, v5}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1712
    :goto_1236
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->getVersion()I

    move-result v4

    .line 1713
    .local v4, "incrementalVersion":I
    if-lez v4, :cond_1241

    .line 1714
    const-string v5, "android.software.incremental_delivery"

    invoke-direct {v1, v5, v4}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1718
    :cond_1241
    const-string v5, "android.software.app_enumeration"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1721
    sget v5, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v7, 0x1d

    if-lt v5, v7, :cond_1252

    .line 1722
    const-string v5, "android.software.ipsec_tunnels"

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1725
    :cond_1252
    invoke-static {}, Lcom/android/server/SystemConfig;->isErofsSupported()Z

    move-result v5

    if-eqz v5, :cond_1277

    .line 1726
    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    move-result v5

    if-eqz v5, :cond_1268

    .line 1727
    const-string v5, "android.software.erofs"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_1277

    .line 1728
    :cond_1268
    const/4 v6, 0x0

    const/16 v5, 0x13

    const/4 v7, 0x4

    invoke-static {v7, v5}, Lcom/android/server/SystemConfig;->isKernelVersionAtLeast(II)Z

    move-result v5

    if-eqz v5, :cond_1277

    .line 1729
    const-string v5, "android.software.erofs_legacy"

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 1733
    :cond_1277
    :goto_1277
    iget-object v5, v1, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_127d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_128d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1734
    .local v6, "featureName":Ljava/lang/String;
    invoke-direct {v1, v6}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    .line 1735
    .end local v6    # "featureName":Ljava/lang/String;
    goto :goto_127d

    .line 1736
    :cond_128d
    return-void

    .line 1687
    .end local v4    # "incrementalVersion":I
    :catchall_128e
    move-exception v0

    :goto_128f
    move-object v4, v0

    :goto_1290
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1688
    throw v4

    .line 939
    .end local v25    # "permReader":Ljava/io/FileReader;
    .end local v27    # "lowRam":Z
    :catch_1294
    move-exception v0

    move-object v4, v0

    .line 940
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find or open permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void

    nop

    :sswitch_data_12ae
    .sparse-switch
        -0x799cf7fb -> :sswitch_2b9
        -0x70348497 -> :sswitch_2ae
        -0x5e5059f9 -> :sswitch_2a3
        -0x5cae799f -> :sswitch_298
        -0x571c3164 -> :sswitch_28d
        -0x3bf447ba -> :sswitch_282
        -0x3a731403 -> :sswitch_277
        -0x3a5d850a -> :sswitch_26d
        -0x31681987 -> :sswitch_262
        -0x2650a45c -> :sswitch_256
        -0x25ce2480 -> :sswitch_24a
        -0x216bddfc -> :sswitch_23e
        -0x1eda3a31 -> :sswitch_233
        -0x8f1dbba -> :sswitch_227
        0x5e0f67f -> :sswitch_21c
        0x9e824bb -> :sswitch_211
        0xabd1ca4 -> :sswitch_205
        0x14b2939f -> :sswitch_1f9
        0x18b029e2 -> :sswitch_1ed
        0x2fd2a088 -> :sswitch_1e1
        0x38d2156d -> :sswitch_1d6
        0x39bdfa11 -> :sswitch_1c9
        0x3be88f10 -> :sswitch_1be
        0x3e3a690e -> :sswitch_1b2
        0x3e631f68 -> :sswitch_1a5
        0x42d78426 -> :sswitch_199
        0x4bac0262 -> :sswitch_18d
        0x505286c4 -> :sswitch_181
        0x5d6b90a8 -> :sswitch_175
        0x6159b995 -> :sswitch_169
        0x66b52049 -> :sswitch_15d
        0x66bbd981 -> :sswitch_151
        0x6ae33fca -> :sswitch_145
        0x6edf61fd -> :sswitch_139
        0x7485cbdd -> :sswitch_12d
    .end sparse-switch

    :pswitch_data_133c
    .packed-switch 0x0
        :pswitch_1133
        :pswitch_10e5
        :pswitch_100a
        :pswitch_ff7
        :pswitch_ebd
        :pswitch_ebd
        :pswitch_e5a
        :pswitch_e15
        :pswitch_dd2
        :pswitch_d8f
        :pswitch_d4c
        :pswitch_d09
        :pswitch_c93
        :pswitch_c1d
        :pswitch_bd6
        :pswitch_b93
        :pswitch_b50
        :pswitch_ad5
        :pswitch_acc
        :pswitch_a49
        :pswitch_99b
        :pswitch_958
        :pswitch_849
        :pswitch_832
        :pswitch_7ef
        :pswitch_726
        :pswitch_6e9
        :pswitch_6ac
        :pswitch_69f
        :pswitch_553
        :pswitch_4e2
        :pswitch_4a5
        :pswitch_44a
        :pswitch_3d2
        :pswitch_2ed
    .end packed-switch
.end method

.method private blacklist readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1795
    .local p2, "grantMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local p3, "denyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_2a

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package is required for <privapp-permissions> in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1798
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1797
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return-void

    .line 1802
    :cond_2a
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1803
    .local v2, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_38

    .line 1804
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v4

    .line 1806
    :cond_38
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1807
    .local v4, "denyPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1808
    .local v5, "depth":I
    :goto_42
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 1809
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1810
    .local v6, "name":Ljava/lang/String;
    const-string v7, "permission"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "name"

    if-eqz v7, :cond_7f

    .line 1811
    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1812
    .local v7, "permName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 1813
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name is required for <permission> in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1814
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1813
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    goto :goto_42

    .line 1817
    :cond_7b
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .end local v7    # "permName":Ljava/lang/String;
    goto :goto_b8

    .line 1818
    :cond_7f
    const-string v7, "deny-permission"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 1819
    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1820
    .restart local v7    # "permName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 1821
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name is required for <deny-permission> in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1822
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1821
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    goto :goto_42

    .line 1825
    :cond_ac
    if-nez v4, :cond_b4

    .line 1826
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v8

    .line 1828
    :cond_b4
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b9

    .line 1818
    .end local v7    # "permName":Ljava/lang/String;
    :cond_b8
    :goto_b8
    nop

    .line 1830
    .end local v6    # "name":Ljava/lang/String;
    :goto_b9
    goto :goto_42

    .line 1831
    :cond_ba
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    if-eqz v4, :cond_c2

    .line 1833
    invoke-virtual {p3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    :cond_c2
    return-void
.end method

.method private blacklist readPublicLibrariesListFile(Ljava/io/File;)V
    .registers 8
    .param p1, "listFile"    # Ljava/io/File;

    .line 2026
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_4d

    .line 2028
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 2029
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2030
    goto :goto_a

    .line 2033
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 2034
    .local v1, "soname":Ljava/lang/String;
    new-instance v4, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v1, v3, v5}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v3, v4

    .line 2036
    .local v3, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    iget-object v4, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_43

    .line 2037
    nop

    .end local v1    # "soname":Ljava/lang/String;
    .end local v3    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    goto :goto_a

    .line 2038
    .end local v2    # "line":Ljava/lang/String;
    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4d

    .line 2040
    .end local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_66

    .line 2026
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_43
    move-exception v1

    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v2

    :try_start_49
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemConfig;
    .end local p1    # "listFile":Ljava/io/File;
    :goto_4c
    throw v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 2038
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/SystemConfig;
    .restart local p1    # "listFile":Ljava/io/File;
    :catch_4d
    move-exception v0

    .line 2039
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read public libraries file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemConfig"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2041
    .end local v0    # "e":Ljava/io/IOException;
    :goto_66
    return-void
.end method

.method private blacklist readPublicNativeLibrariesList()V
    .registers 12

    .line 2008
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/public.libraries.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 2009
    const-string v0, "/system/etc"

    const-string v1, "/system_ext/etc"

    const-string v2, "/product/etc"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2010
    .local v0, "dirs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_63

    aget-object v4, v0, v3

    .line 2011
    .local v4, "dir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 2012
    .local v5, "files":[Ljava/io/File;
    if-nez v5, :cond_3f

    .line 2013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Public libraries file folder missing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SystemConfig"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    goto :goto_60

    .line 2016
    :cond_3f
    array-length v6, v5

    move v7, v2

    :goto_41
    if-ge v7, v6, :cond_60

    aget-object v8, v5, v7

    .line 2017
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2018
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v10, "public.libraries-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 2019
    invoke-direct {p0, v8}, Lcom/android/server/SystemConfig;->readPublicLibrariesListFile(Ljava/io/File;)V

    .line 2016
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 2010
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "files":[Ljava/io/File;
    :cond_60
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2023
    :cond_63
    return-void
.end method

.method private blacklist readSplitPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1922
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1923
    .local v2, "splitPerm":Ljava/lang/String;
    const-string v3, " at "

    const-string v4, "SystemConfig"

    if-nez v2, :cond_33

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<split-permission> without name in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1925
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1924
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1927
    return-void

    .line 1929
    :cond_33
    const-string/jumbo v5, "targetSdk"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1930
    .local v5, "targetSdkStr":Ljava/lang/String;
    const/16 v6, 0x2711

    .line 1931
    .local v6, "targetSdk":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 1933
    :try_start_42
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_46} :catch_48

    move v6, v3

    .line 1939
    goto :goto_6f

    .line 1934
    :catch_48
    move-exception v0

    .line 1935
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<split-permission> targetSdk not an integer in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1936
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1935
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1938
    return-void

    .line 1941
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6f
    :goto_6f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1942
    .local v3, "depth":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v7, "newPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_78
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 1944
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1945
    .local v8, "name":Ljava/lang/String;
    const-string v9, "new-permission"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 1946
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1947
    .local v9, "newName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_af

    .line 1948
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name is required for <new-permission> in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1949
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1948
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    goto :goto_78

    .line 1952
    :cond_af
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    .end local v9    # "newName":Ljava/lang/String;
    goto :goto_b6

    .line 1954
    :cond_b3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1956
    .end local v8    # "name":Ljava/lang/String;
    :goto_b6
    goto :goto_78

    .line 1957
    :cond_b7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1958
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    new-instance v1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-direct {v1, v2, v7, v6}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    :cond_c7
    return-void
.end method

.method private blacklist removeFeature(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1751
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed unavailable feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist getAllowAdasLocationSettings()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowAdasSettings:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAllowIgnoreLocationSettings()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowIgnoreLocationSettings:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAllowImplicitBroadcasts()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowImplicitBroadcasts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowInDataUsageSave()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowInPowerSave()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowUnthrottledLocation()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAllowedAssociations()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedAssociations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAllowedVendorApexes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getAndClearPackageToUserTypeBlacklist()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 590
    .local v0, "r":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 591
    return-object v0
.end method

.method public blacklist getAndClearPackageToUserTypeWhitelist()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 578
    .local v0, "r":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 579
    return-object v0
.end method

.method public blacklist getApexPrivAppDenyPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 5
    .param p1, "apexName"    # Ljava/lang/String;
    .param p2, "apkPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/SystemConfig;->EMPTY_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 494
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 493
    return-object v0
.end method

.method public blacklist getApexPrivAppPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 5
    .param p1, "apexName"    # Ljava/lang/String;
    .param p2, "apkPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/SystemConfig;->EMPTY_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 488
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 487
    return-object v0
.end method

.method public blacklist getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getAvailableFeatures()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getBackupTransportWhitelist()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getBgRestrictionExemption()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBgRestrictionExemption:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getBugreportWhitelistedPackages()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getDataUsageSystemUidPackages()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDataUsageSystemUidPackages:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getDefaultVrComponents()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getGlobalGids()[I
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    return-object v0
.end method

.method public blacklist getHiddenApiWhitelistedApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getLinkedApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getModulesInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamedActors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public blacklist getOemPermissions(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 531
    .local v0, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_b

    .line 532
    return-object v0

    .line 534
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getOverlayConfigSignaturePackage()Ljava/lang/String;
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 602
    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 601
    :goto_c
    return-object v0
.end method

.method public blacklist getPermissions()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mProductPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getRollbackWhitelistedPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSharedLibraries()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$SharedLibraryEntry;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getSplitPermissions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemExtPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSystemPermissions()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mVendorPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getWhitelistedStagedInstallers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist readApexPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;Ljava/nio/file/Path;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permFile"    # Ljava/io/File;
    .param p3, "apexDirectoryPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2065
    nop

    .line 2066
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/SystemConfig;->getApexModuleNameFromFilePath(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, "moduleName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2069
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .local v1, "privAppPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_24

    .line 2071
    .end local v1    # "privAppPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_1a
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2072
    .restart local v1    # "privAppPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mApexPrivAppPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    :goto_24
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2076
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .local v2, "privAppDenyPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3f

    .line 2078
    .end local v2    # "privAppDenyPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_35
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2079
    .restart local v2    # "privAppDenyPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/android/server/SystemConfig;->mApexPrivAppDenyPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    :goto_3f
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/SystemConfig;->readPrivAppPermissions(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 2082
    return-void
.end method

.method blacklist readOemPermissions(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1885
    const/4 v0, 0x0

    const-string v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1886
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_2a

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package is required for <oem-permissions> in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1888
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1887
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    return-void

    .line 1892
    :cond_2a
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1893
    .local v2, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v2, :cond_3a

    .line 1894
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v4

    .line 1896
    :cond_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1897
    .local v4, "depth":I
    :goto_3e
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1898
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1899
    .local v5, "name":Ljava/lang/String;
    const-string v6, "permission"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "name"

    if-eqz v6, :cond_7d

    .line 1900
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1901
    .local v6, "permName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1902
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name is required for <permission> in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1903
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1902
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    goto :goto_3e

    .line 1906
    :cond_77
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "permName":Ljava/lang/String;
    goto :goto_b0

    .line 1907
    :cond_7d
    const-string v6, "deny-permission"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 1908
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1909
    .restart local v6    # "permName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 1910
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name is required for <deny-permission> in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1911
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1910
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    goto :goto_3e

    .line 1914
    :cond_aa
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    .line 1907
    .end local v6    # "permName":Ljava/lang/String;
    :cond_b0
    :goto_b0
    nop

    .line 1916
    .end local v5    # "name":Ljava/lang/String;
    :goto_b1
    goto :goto_3e

    .line 1917
    :cond_b2
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mOemPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    return-void
.end method

.method blacklist readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1762
    const/4 v0, 0x0

    const-string v1, "perUser"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    .line 1763
    .local v0, "perUser":Z
    new-instance v1, Lcom/android/server/SystemConfig$PermissionEntry;

    invoke-direct {v1, p2, v0}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 1764
    .local v1, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v2, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1768
    .local v2, "outerDepth":I
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_76

    const/4 v3, 0x3

    if-ne v4, v3, :cond_2e

    .line 1770
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_76

    .line 1771
    :cond_2e
    if-eq v4, v3, :cond_1d

    const/4 v3, 0x4

    if-ne v4, v3, :cond_34

    .line 1773
    goto :goto_1d

    .line 1776
    :cond_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1777
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "group"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 1778
    const/4 v5, 0x0

    const-string v6, "gid"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1779
    .local v5, "gidStr":Ljava/lang/String;
    if-eqz v5, :cond_56

    .line 1780
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    .line 1781
    .local v6, "gid":I
    iget-object v7, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 1782
    .end local v6    # "gid":I
    goto :goto_72

    .line 1783
    :cond_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<group> without gid at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1784
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1783
    const-string v7, "SystemConfig"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    .end local v5    # "gidStr":Ljava/lang/String;
    :cond_72
    :goto_72
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1788
    .end local v3    # "tagName":Ljava/lang/String;
    goto :goto_1d

    .line 1789
    :cond_76
    return-void

    .line 1759
    .end local v0    # "perUser":Z
    .end local v1    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v2    # "outerDepth":I
    .end local v4    # "type":I
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate permission definition for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "libraryDir"    # Ljava/io/File;
    .param p3, "permissionFlag"    # I

    .line 798
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "SystemConfig"

    if-eqz v0, :cond_f1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_f1

    .line 804
    :cond_10
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v2, " cannot be read"

    if-nez v0, :cond_33

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    .line 810
    :cond_33
    const/4 v0, 0x0

    .line 811
    .local v0, "platformFile":Ljava/io/File;
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v4, :cond_eb

    aget-object v6, v3, v5

    .line 812
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_46

    .line 813
    goto/16 :goto_e7

    .line 817
    :cond_46
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "etc/permissions/platform.xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 818
    move-object v0, v6

    .line 819
    goto/16 :goto_e7

    .line 822
    :cond_55
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    goto :goto_e7

    .line 826
    :cond_88
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_a9

    .line 827
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permissions library file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    goto :goto_e7

    .line 830
    :cond_a9
    iget-boolean v7, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    if-nez v7, :cond_e4

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "aer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 831
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aer = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/SystemConfig;->mAerSupported:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", f.getPath().contains = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    goto :goto_e7

    .line 835
    :cond_e4
    invoke-direct {p0, p1, v6, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 811
    .end local v6    # "f":Ljava/io/File;
    :goto_e7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3a

    .line 839
    :cond_eb
    if-eqz v0, :cond_f0

    .line 840
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 842
    :cond_f0
    return-void

    .line 799
    .end local v0    # "platformFile":Ljava/io/File;
    :cond_f1
    :goto_f1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_110

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_110
    return-void
.end method
