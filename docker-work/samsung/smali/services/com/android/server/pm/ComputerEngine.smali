.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

# interfaces
.implements Lcom/android/server/pm/Computer;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ComputerEngine$Settings;
    }
.end annotation


# static fields
.field public static final sProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field public final mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

.field public final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field public final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field public final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final mLocalResolveComponentName:Landroid/content/ComponentName;

.field public final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field public final mService:Lcom/android/server/pm/PackageManagerService;

.field public final mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

.field public mUsed:I

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mVersion:I

.field public final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$vyWc2DTudQZ-4Lq-trQbr939X2M(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ComputerEngine;->lambda$static$0(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 419
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .registers 4

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 428
    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 485
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 486
    new-instance p2, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 487
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 488
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 489
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 490
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 491
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 492
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 493
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 494
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 495
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 496
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 497
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 498
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 499
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 500
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 502
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 506
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 507
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 508
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 509
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 510
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 511
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 512
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 513
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 514
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 515
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 516
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 517
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 518
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 522
    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;
    .registers 6

    .line 3326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_f

    .line 3328
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    .line 3329
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string p2, "UID "

    .line 3331
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3332
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " requires "

    .line 3333
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3334
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_37

    const-string p0, " or "

    .line 3336
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 3337
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_37

    .line 3339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 3340
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    const-string p0, " to access user "

    .line 3343
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3344
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    .line 3345
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_f

    .line 3400
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    .line 3401
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string p2, "UID "

    .line 3403
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " requires "

    .line 3405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3406
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2d

    const-string p0, " or "

    .line 3408
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 3409
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string p0, " to access user "

    .line 3411
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3412
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    .line 3413
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isHomeIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 3992
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "android.intent.category.HOME"

    .line 3993
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "android.intent.category.DEFAULT"

    .line 3994
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static synthetic lambda$static$0(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 2

    .line 420
    iget p0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 421
    iget p1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-le p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_d

    :cond_8
    if-ge p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p1

    .line 4290
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_e

    return v6

    .line 4294
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4295
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4296
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v1, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_20

    return v8

    .line 4300
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_2b

    return v8

    :cond_2b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .line 4304
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_37

    return v8

    :cond_37
    move v0, v8

    .line 4308
    :goto_38
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 4309
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v9

    .line 4310
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 4311
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    const-string v15, "PackageManager"

    move-object/from16 v11, p4

    .line 4310
    invoke-virtual/range {v9 .. v15}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6b

    return v6

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_6e
    return v8
.end method

.method public final addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[",
            "Ljava/lang/String;",
            "[ZJI)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 5142
    :goto_3
    array-length v3, p3

    if-ge v1, v3, :cond_1f

    .line 5143
    aget-object v3, p3, v1

    .line 5144
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    .line 5146
    aput-boolean v3, p4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 5149
    :cond_1a
    aput-boolean v0, p4, v1

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1f
    if-nez v2, :cond_22

    return-void

    .line 5155
    :cond_22
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_51

    const-wide/16 v3, 0x1000

    and-long/2addr p5, v3

    const-wide/16 v3, 0x0

    cmp-long p2, p5, v3

    if-nez p2, :cond_4e

    .line 5161
    array-length p2, p3

    if-ne v2, p2, :cond_37

    .line 5162
    iput-object p3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_4e

    .line 5164
    :cond_37
    new-array p2, v2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move p2, v0

    .line 5166
    :goto_3c
    array-length p5, p3

    if-ge v0, p5, :cond_4e

    .line 5167
    aget-boolean p5, p4, v0

    if-eqz p5, :cond_4b

    .line 5168
    iget-object p5, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object p6, p3, v0

    aput-object p6, p5, p2

    add-int/lit8 p2, p2, 0x1

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 5174
    :cond_4e
    :goto_4e
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    return-void
.end method

.method public androidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 481
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p6

    .line 1553
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {v6, v9}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v12, v11

    goto :goto_18

    :cond_17
    const/4 v12, 0x0

    .line 1554
    :goto_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    :goto_1e
    if-ltz v13, :cond_11c

    .line 1555
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1557
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v1, :cond_35

    if-eqz v12, :cond_35

    .line 1558
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2f
    move/from16 v14, p4

    move v10, v11

    :goto_32
    const/4 v11, 0x0

    goto/16 :goto_117

    :cond_35
    if-eqz p3, :cond_b0

    .line 1562
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_b0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_b0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1565
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_53

    .line 1571
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    :cond_53
    if-eqz v12, :cond_65

    .line 1574
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-virtual {v6, v1, v9, v2}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1576
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    .line 1584
    :cond_65
    new-instance v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1586
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v14, p4

    invoke-virtual {v6, v2, v14, v9}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v16

    .line 1588
    new-instance v2, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v10, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object v15, v2

    move-object/from16 v17, v4

    move-wide/from16 v18, v10

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v20}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1594
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1599
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1600
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1601
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->icon:I

    const/4 v10, 0x1

    .line 1602
    iput-boolean v10, v1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1603
    invoke-interface {v7, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_b0
    move/from16 v14, p4

    move v10, v11

    if-nez v8, :cond_d9

    .line 1608
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1609
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 1610
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    .line 1611
    invoke-virtual {v6, v0, v11}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-nez p5, :cond_117

    .line 1612
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v5, p6

    .line 1613
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_114

    goto :goto_117

    :cond_d9
    const/4 v11, 0x0

    .line 1617
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    goto :goto_117

    :cond_e5
    if-eqz p5, :cond_102

    .line 1621
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 1622
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_102

    .line 1623
    :cond_f5
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_102

    .line 1624
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_102

    goto :goto_117

    .line 1627
    :cond_102
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_114

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1629
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_114

    goto :goto_117

    .line 1633
    :cond_114
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_117
    :goto_117
    add-int/lit8 v13, v13, -0x1

    move v11, v10

    goto/16 :goto_1e

    :cond_11c
    return-object v7
.end method

.method public final applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1640
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_b2

    .line 1641
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez p2, :cond_30

    .line 1643
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1644
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 1645
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1646
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 1647
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v5, p0

    move v6, p4

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_ae

    .line 1652
    :cond_30
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1654
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 1655
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_ae

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1656
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_69

    .line 1659
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_65

    const-string v1, "No installer - not adding it to the ResolveInfolist"

    .line 1660
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_65
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ae

    .line 1668
    :cond_69
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_72

    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    .line 1669
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_72
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1673
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1679
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1681
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1682
    invoke-interface {p1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    :cond_9f
    if-nez v2, :cond_ab

    .line 1687
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_ab

    goto :goto_ae

    .line 1692
    :cond_ab
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_ae
    :goto_ae
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_b2
    return-object p1
.end method

.method public final areWebInstantAppsDisabled(I)Z
    .registers 2

    .line 2607
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final bestDomainVerificationStatus(II)I
    .registers 3

    const/4 p0, 0x3

    if-ne p1, p0, :cond_4

    return p2

    :cond_4
    if-ne p2, p0, :cond_7

    return p1

    .line 3139
    :cond_7
    invoke-static {p1, p2}, Landroid/util/MathUtils;->max(II)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 11

    .line 5996
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    .line 5997
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 22

    move-object/from16 v7, p0

    .line 6065
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6068
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_2b

    .line 6070
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v9

    :goto_17
    if-ge v2, v1, :cond_2b

    .line 6072
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v3}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v3

    move/from16 v4, p4

    if-ne v3, v4, :cond_28

    return v8

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 6075
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 6077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move/from16 v10, p3

    .line 6078
    invoke-virtual {v7, v10}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-nez v11, :cond_3e

    return v9

    :cond_3e
    const-wide/16 v12, 0x0

    .line 6082
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v15, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v3, p2

    .line 6084
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v16

    move-wide v1, v12

    move v3, v14

    move v4, v6

    move v5, v15

    move/from16 v6, v16

    .line 6082
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    or-long v3, v0, v2

    .line 6087
    iget v6, v11, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    if-eqz v0, :cond_70

    goto :goto_71

    :cond_70
    move v8, v9

    :goto_71
    return v8

    :cond_72
    return v9
.end method

.method public canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    .line 6036
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 6037
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "may package query"

    move-object v2, p0

    move v3, v0

    move v4, p3

    .line 6038
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6040
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 6041
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_29

    if-nez v3, :cond_27

    goto :goto_29

    :cond_27
    move v5, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v5, v4

    :goto_2a
    if-nez v5, :cond_3a

    .line 6045
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    .line 6047
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v5, :cond_38

    if-eqz v0, :cond_39

    :cond_38
    move v1, v4

    :cond_39
    move v5, v1

    :cond_3a
    if-nez v5, :cond_4a

    .line 6055
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 6056
    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 6052
    :cond_4a
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p3, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and/or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public canQueryPackage(ILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    if-eqz p1, :cond_7d

    if-nez p2, :cond_7

    goto/16 :goto_7d

    .line 5942
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return v2

    .line 5947
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-wide/16 v4, 0x0

    .line 5949
    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5948
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_40

    .line 5952
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p2

    .line 5953
    instance-of v1, p2, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_38

    .line 5954
    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 5957
    :cond_38
    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 5964
    :cond_40
    instance-of p1, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_57

    .line 5965
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 5966
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_56

    :cond_55
    move v0, v2

    :goto_56
    return v0

    .line 5968
    :cond_57
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5970
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p1

    .line 5971
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_62
    if-ltz v1, :cond_7c

    .line 5972
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 5973
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v4, v3, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    return v0

    :cond_79
    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    :cond_7c
    return v2

    :cond_7d
    :goto_7d
    return v0
.end method

.method public canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
    .registers 11

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p2

    .line 4430
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq p2, v0, :cond_32

    if-eqz p2, :cond_32

    if-ne p2, v1, :cond_13

    goto :goto_32

    .line 4433
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Caller uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not own package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4436
    :cond_32
    :goto_32
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3a

    return v1

    .line 4439
    :cond_3a
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez p2, :cond_45

    return v1

    .line 4443
    :cond_45
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_4e

    return v1

    .line 4446
    :cond_4e
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p2

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    const-string p0, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_64

    const-string p1, "PackageManager"

    .line 4454
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4452
    :cond_64
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4459
    :cond_6a
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final canViewInstantApps(II)Z
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_6

    return v0

    .line 2628
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 2632
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 2634
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 2636
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2d

    return v0

    .line 2640
    :cond_2d
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz p2, :cond_38

    .line 2641
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    return v0

    :cond_3a
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .line 4218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4219
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object p1

    .line 4222
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 4223
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4224
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 4225
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_19
    if-ltz v4, :cond_58

    .line 4226
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4e

    .line 4229
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    if-eqz v8, :cond_38

    .line 4231
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_38

    move v9, v5

    goto :goto_39

    :cond_38
    move v9, v7

    :goto_39
    if-eqz v9, :cond_4d

    if-nez v3, :cond_4d

    .line 4232
    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4235
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 4234
    invoke-virtual {v9, v2, v10, v8}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v8

    if-eqz v8, :cond_4e

    :cond_4d
    move v7, v5

    :cond_4e
    if-eqz v7, :cond_51

    goto :goto_53

    .line 4237
    :cond_51
    aget-object v6, p1, v4

    :goto_53
    aput-object v6, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_58
    return-object v1
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .registers 3

    .line 6478
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 6479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to be frozen!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "PackageManager"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 4716
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4717
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v0, 0x0

    if-nez p1, :cond_15

    move-object v1, v0

    goto :goto_1d

    .line 4719
    :cond_15
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    :goto_1d
    if-nez p2, :cond_20

    goto :goto_28

    .line 4721
    :cond_20
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    :goto_28
    const/4 v2, -0x4

    if-eqz p1, :cond_54

    if-eqz v1, :cond_54

    if-eqz p2, :cond_54

    if-nez v0, :cond_32

    goto :goto_54

    .line 4725
    :cond_32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4726
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4727
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_54

    .line 4728
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_54

    .line 4731
    :cond_47
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_54
    :goto_54
    return v2
.end method

.method public final checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 5

    const/4 p0, 0x1

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p0, -0x1

    :goto_7
    return p0

    :cond_8
    if-nez p2, :cond_c

    const/4 p0, -0x2

    return p0

    .line 4796
    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 4797
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 4796
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_1b

    return v0

    .line 4804
    :cond_1b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-nez v1, :cond_27

    .line 4805
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 4806
    :cond_27
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    new-array v0, p0, [Landroid/content/pm/Signature;

    .line 4807
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p1

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    goto :goto_3d

    .line 4808
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 4809
    :goto_3d
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_4e

    new-array p0, p0, [Landroid/content/pm/Signature;

    .line 4810
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p1

    aget-object p1, p1, v1

    aput-object p1, p0, v1

    goto :goto_52

    .line 4811
    :cond_4e
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 4812
    :goto_52
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    :cond_56
    return v0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 3

    .line 3144
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkUidSignatures(II)I
    .registers 7

    .line 4736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4737
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4739
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4740
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    .line 4743
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    const/4 v2, -0x4

    if-eqz p1, :cond_6c

    .line 4745
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_2b

    .line 4746
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4747
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v3

    if-eqz v3, :cond_26

    return v2

    .line 4750
    :cond_26
    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_3c

    .line 4751
    :cond_2b
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_6c

    .line 4752
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4753
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_38

    return v2

    .line 4756
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 4763
    :goto_3c
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p2

    if-eqz p2, :cond_6c

    .line 4765
    instance-of v3, p2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_56

    .line 4766
    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    .line 4767
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v0

    if-eqz v0, :cond_51

    return v2

    .line 4770
    :cond_51
    iget-object p2, p2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p2, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_67

    .line 4771
    :cond_56
    instance-of v3, p2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_6c

    .line 4772
    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 4773
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_63

    return v2

    .line 4776
    :cond_63
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    .line 4783
    :goto_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_6c
    return v2
.end method

.method public final createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 16

    .line 2169
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v7

    .line 2170
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ComputerEngine;->isUserEnabled(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_c

    return-object v8

    .line 2174
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p3

    .line 2176
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object v8

    .line 2181
    :cond_1e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_3f

    .line 2182
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2183
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_3c

    .line 2185
    invoke-virtual {p0, p1, p6, v7}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_40

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_3f
    move-object p1, v8

    :goto_40
    if-nez p1, :cond_43

    return-object v8

    .line 2198
    :cond_43
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p6

    const/4 v0, 0x0

    move v6, v0

    move v8, v6

    :goto_4a
    if-ge v6, p6, :cond_75

    .line 2200
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2201
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_57

    goto :goto_72

    .line 2204
    :cond_57
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2205
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_64

    goto :goto_72

    .line 2209
    :cond_64
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v2, p2

    move-wide v3, p4

    move v5, v7

    .line 2210
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    .line 2209
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v8, v0

    :goto_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 2213
    :cond_75
    new-instance p0, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {p0, p1, v8}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    return-object p0
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .registers 16

    .line 2218
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2229
    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v3
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_a4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v3, :cond_3a

    .line 2230
    :try_start_13
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2231
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    .line 2233
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    .line 2234
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v8

    if-eqz v8, :cond_28

    const-string v6, "4"

    .line 2238
    :cond_28
    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v9, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 2239
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    .line 2240
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v3

    if-eqz v3, :cond_46

    move v7, v4

    goto :goto_46

    .line 2245
    :cond_3a
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_a4

    move v8, v5

    move v9, v8

    .line 2249
    :cond_46
    :goto_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_4e

    .line 2256
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    goto :goto_50

    .line 2258
    :cond_4e
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    :goto_50
    if-eqz v8, :cond_6d

    .line 2264
    new-instance v2, Landroid/content/ComponentName;

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 2268
    :cond_6d
    new-instance v2, Landroid/content/ComponentName;

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    const-wide/16 v10, 0x0

    .line 2275
    invoke-virtual {p0, v2, v10, v11, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz v8, :cond_82

    .line 2278
    iput-boolean v4, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    :cond_82
    if-nez v7, :cond_8c

    if-nez v9, :cond_8c

    if-eqz p0, :cond_8a

    .line 2285
    iput p3, p0, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 2287
    :cond_8a
    iput-boolean v4, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 2292
    :cond_8c
    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2293
    iput v5, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 2294
    iput v5, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 2295
    iput v5, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 2296
    iput-boolean v4, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 2297
    new-instance p0, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 2298
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    return-object v0

    :catchall_a4
    move-exception p0

    .line 2249
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2250
    throw p0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .line 4193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4194
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object p1

    .line 4197
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 4198
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4199
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 4200
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_19
    if-ltz v4, :cond_55

    .line 4201
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_47

    .line 4203
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_47

    .line 4204
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 4205
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_46

    if-nez v3, :cond_46

    .line 4206
    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4209
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    .line 4208
    invoke-virtual {v8, v2, v9, v10}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v8

    if-eqz v8, :cond_47

    :cond_46
    move v7, v5

    :cond_47
    if-eqz v7, :cond_4e

    .line 4211
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v6

    goto :goto_50

    :cond_4e
    aget-object v6, p1, v4

    :goto_50
    aput-object v6, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_55
    return-object v1
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 12

    const-string v0, "Failed writing: "

    .line 3481
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3482
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3483
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    if-eqz v1, :cond_14

    if-nez v2, :cond_14

    return-void

    :cond_14
    const/4 v3, 0x1

    if-eq p1, v3, :cond_270

    const/16 v4, 0x200

    if-eq p1, v4, :cond_26a

    const/16 v4, 0x1000

    if-eq p1, v4, :cond_264

    const/16 v4, 0x2000

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq p1, v4, :cond_1f3

    const p2, 0x8000

    const-string v0, "  "

    if-eq p1, p2, :cond_1d9

    const/high16 p2, 0x40000

    if-eq p1, p2, :cond_1a8

    const/high16 p2, 0x80000

    if-eq p1, p2, :cond_150

    const/high16 p2, 0x100000

    const-string v1, "]"

    const-string v3, "["

    if-eq p1, p2, :cond_d5

    const/high16 p2, 0x200000

    if-eq p1, p2, :cond_66

    const/high16 p2, 0x4000000

    if-eq p1, p2, :cond_46

    goto/16 :goto_275

    :cond_46
    if-nez v2, :cond_49

    goto :goto_51

    .line 3536
    :cond_49
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_51
    move-object v2, v6

    .line 3537
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3538
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    move-object v1, p3

    move-object v3, p4

    .line 3537
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    goto/16 :goto_275

    .line 3600
    :cond_66
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3601
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_74

    .line 3602
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_74
    const-string p2, "Compiler stats:"

    .line 3604
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    if-eqz v2, :cond_83

    .line 3608
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_8d

    .line 3610
    :cond_83
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    .line 3613
    :goto_8d
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_91
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_275

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3614
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p3

    if-nez p3, :cond_a4

    goto :goto_91

    .line 3618
    :cond_a4
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 3619
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3622
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 3623
    invoke-virtual {p4, p3}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p3

    if-nez p3, :cond_ce

    const-string p3, "(No recorded stats)"

    .line 3625
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d1

    .line 3627
    :cond_ce
    invoke-virtual {p3, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3629
    :goto_d1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_91

    .line 3565
    :cond_d5
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3566
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_e3

    .line 3567
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_e3
    const-string p2, "Dexopt state:"

    .line 3569
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    if-eqz v2, :cond_f2

    .line 3573
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_fc

    .line 3575
    :cond_f2
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    .line 3578
    :goto_fc
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_100
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3579
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    if-nez p4, :cond_113

    goto :goto_100

    .line 3583
    :cond_113
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3587
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 3588
    invoke-virtual {v4, v0}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 3587
    invoke-virtual {v2, p1, p4, p3, v0}, Lcom/android/server/pm/PackageDexOptimizer;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    .line 3589
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_100

    :cond_13e
    const-string p2, "BgDexopt state:"

    .line 3591
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3593
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3594
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_275

    .line 3642
    :cond_150
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p1

    if-eqz p1, :cond_159

    .line 3643
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 3645
    :cond_159
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 p2, 0x78

    invoke-direct {p1, p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3646
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Frozen packages:"

    .line 3647
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3649
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_179

    const-string p0, "(none)"

    .line 3650
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a3

    .line 3652
    :cond_179
    :goto_179
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    if-ge v5, p2, :cond_1a3

    const-string/jumbo p2, "package="

    .line 3653
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3654
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ", refCounts="

    .line 3655
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3656
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_179

    .line 3659
    :cond_1a3
    :goto_1a3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_275

    .line 3545
    :cond_1a8
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3547
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_1b6

    .line 3548
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_1b6
    const-string p2, "Domain verification status:"

    .line 3550
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3553
    :try_start_1be
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 p4, -0x1

    .line 3554
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 3553
    invoke-interface {p2, p0, p1, v1, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1c8} :catch_1c9

    goto :goto_1d4

    :catch_1c9
    move-exception p0

    const-string p2, "Failure printing domain verification information"

    .line 3556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "PackageManager"

    .line 3557
    invoke-static {p3, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3559
    :goto_1d4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto/16 :goto_275

    .line 3493
    :cond_1d9
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p1

    if-eqz p1, :cond_1e2

    .line 3494
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_1e2
    const-string p1, "Database versions:"

    .line 3496
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3497
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_275

    .line 3511
    :cond_1f3
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 3512
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3513
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3514
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object p1

    .line 3516
    :try_start_204
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3517
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v6, p2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 3518
    invoke-interface {p1, p2, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3520
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3521
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result p2

    .line 3520
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 3522
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3523
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_227
    .catch Ljava/lang/IllegalArgumentException; {:try_start_204 .. :try_end_227} :catch_250
    .catch Ljava/lang/IllegalStateException; {:try_start_204 .. :try_end_227} :catch_23c
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_227} :catch_228

    goto :goto_275

    :catch_228
    move-exception p0

    .line 3529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_275

    :catch_23c
    move-exception p0

    .line 3527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_275

    :catch_250
    move-exception p0

    .line 3525
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_275

    .line 3506
    :cond_264
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    goto :goto_275

    .line 3635
    :cond_26a
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    goto :goto_275

    .line 3502
    :cond_270
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p3, p4}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_275
    :goto_275
    return-void
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 4

    .line 6506
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
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

    .line 6500
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 6523
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 5
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

    .line 6493
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 6528
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
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

    .line 6513
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 6518
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 13

    if-ltz p2, :cond_4a

    if-eqz p4, :cond_10

    .line 3298
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 3299
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    const-string/jumbo v0, "no_debugging_features"

    .line 3298
    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3302
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    .line 3303
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 3307
    :cond_21
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result p4

    if-eqz p4, :cond_3b

    .line 3308
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    .line 3313
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 3308
    invoke-static {v0, v2, v1, p1, p0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3b

    return-void

    .line 3317
    :cond_3b
    invoke-static {p1, p2, p5, p3, p4}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3319
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3295
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid userId "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 3358
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14

    if-ltz p2, :cond_2f

    if-eqz p4, :cond_10

    .line 3380
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 3381
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    const-string/jumbo v0, "no_debugging_features"

    .line 3380
    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3384
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p5

    .line 3385
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p0

    if-eqz p0, :cond_20

    return-void

    .line 3390
    :cond_20
    invoke-static {p1, p2, p6, p3}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3392
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3377
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid userId "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public filterAppAccess(II)Z
    .registers 6

    .line 3452
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    if-ne p2, p1, :cond_a

    return v1

    .line 3457
    :cond_a
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p0

    if-ne p0, p1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0

    .line 3465
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3466
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 3467
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 3469
    instance-of v2, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_2c

    .line 3470
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    return p0

    :cond_2c
    if-eqz p1, :cond_34

    .line 3472
    instance-of v2, p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    return v1

    .line 3474
    :cond_34
    :goto_34
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0
.end method

.method public filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 4

    .line 3440
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 3441
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .registers 4

    .line 3446
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 3447
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0
.end method

.method public final filterCandidatesWithDomainPreferredActivitiesLPr(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1700
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v8, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 1708
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 1250
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    const/4 v8, 0x0

    .line 1261
    :goto_28
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "application_policy"

    .line 1267
    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 1266
    invoke-static {v12}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_3e

    .line 1270
    :try_start_39
    invoke-interface {v12, v1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v12
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    :cond_3e
    move-object v12, v13

    :goto_3f
    const/4 v14, 0x0

    :goto_40
    const-wide/16 v15, 0x0

    const-wide/32 v17, 0x20000

    if-ge v14, v11, :cond_9d

    .line 1277
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroid/content/pm/ResolveInfo;

    and-long v17, p2, v17

    cmp-long v15, v17, v15

    if-eqz v15, :cond_57

    const/4 v15, 0x1

    goto :goto_58

    :cond_57
    const/4 v15, 0x0

    :goto_58
    if-nez v15, :cond_7c

    if-eqz v12, :cond_7c

    .line 1285
    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1286
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 1287
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_7c
    if-eqz v8, :cond_8f

    .line 1294
    iget-boolean v10, v9, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-nez v10, :cond_9a

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x3e8

    .line 1295
    invoke-virtual {v0, v10, v4, v15}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_8f

    goto :goto_9a

    .line 1301
    :cond_8f
    iget-boolean v10, v9, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v10, :cond_97

    .line 1302
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 1304
    :cond_97
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    :goto_9a
    add-int/lit8 v14, v14, 0x1

    goto :goto_40

    .line 1311
    :cond_9d
    invoke-static/range {p1 .. p3}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result v8

    if-nez v8, :cond_b2

    .line 1312
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v3, :cond_db

    .line 1314
    iget v1, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-lez v1, :cond_db

    .line 1316
    iget-object v1, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 1320
    :cond_b2
    iget-object v8, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v9, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1322
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v10, v9}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 1321
    invoke-interface {v8, v1, v7, v4, v10}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;

    move-result-object v1

    .line 1323
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 1324
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1327
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_dd

    if-eqz v3, :cond_db

    .line 1329
    iget v1, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-lez v1, :cond_db

    .line 1331
    iget-object v1, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    :goto_db
    const/4 v9, 0x1

    goto :goto_f0

    .line 1334
    :cond_dd
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v3, :cond_ef

    .line 1337
    iget v7, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1338
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v7, v1, :cond_ef

    .line 1339
    iget-object v1, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    const/4 v9, 0x0

    :goto_f0
    if-eqz v9, :cond_176

    and-long v7, p2, v17

    cmp-long v1, v7, v15

    if-eqz v1, :cond_fd

    .line 1350
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_16d

    .line 1354
    :cond_fd
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v0

    .line 1358
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_109
    const-string v4, "PackageManager"

    if-ge v10, v1, :cond_144

    .line 1360
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1362
    iget v8, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v8, v3, :cond_118

    move v3, v8

    .line 1366
    :cond_118
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_141

    if-eqz v13, :cond_12a

    .line 1367
    iget v8, v13, Landroid/content/pm/ResolveInfo;->priority:I

    iget v9, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v8, v9, :cond_141

    :cond_12a
    if-eqz p7, :cond_140

    .line 1370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Considering default browser match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_140
    move-object v13, v7

    :cond_141
    add-int/lit8 v10, v10, 0x1

    goto :goto_109

    :cond_144
    if-eqz v13, :cond_16a

    .line 1376
    iget v1, v13, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v1, v3, :cond_16a

    .line 1378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16a

    if-eqz p7, :cond_166

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default browser match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_166
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 1384
    :cond_16a
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1389
    :goto_16d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_176

    .line 1390
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_176
    return-object v5
.end method

.method public final filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p1

    .line 1732
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_9
    if-ltz p0, :cond_20

    .line 1733
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 1734
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1d

    .line 1735
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_20
    return-object p1
.end method

.method public varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    if-nez p1, :cond_b

    .line 6278
    const-class p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 6281
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6283
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_59

    aget-object v4, p1, v3

    if-nez v4, :cond_1b

    goto :goto_56

    .line 6288
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    const-string v6, "PackageManager"

    if-nez v5, :cond_38

    .line 6290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 6294
    :cond_38
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v5

    if-nez v5, :cond_53

    .line 6295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not system"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 6299
    :cond_53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_59
    new-array p0, v2, [Ljava/lang/String;

    .line 6302
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 12

    const-wide/32 v0, 0x4000000

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-eqz p4, :cond_23

    .line 2709
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_22

    const/16 v0, 0x7d0

    if-eq p4, v0, :cond_22

    if-nez p4, :cond_1a

    goto :goto_22

    :cond_1a
    const-string p4, "android.permission.INSTALL_PACKAGES"

    .line 2716
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_23

    :cond_22
    :goto_22
    return p5

    :cond_23
    if-eqz p1, :cond_9d

    .line 2722
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    if-eqz p4, :cond_9d

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSdkLibrary()Z

    move-result p4

    if-nez p4, :cond_36

    goto :goto_9d

    .line 2727
    :cond_36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v0, v0

    .line 2726
    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p4

    if-nez p4, :cond_4e

    return p5

    .line 2732
    :cond_4e
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 2733
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_5e

    return p3

    .line 2738
    :cond_5e
    array-length v0, p2

    move v1, p5

    :goto_60
    if-ge v1, v0, :cond_9c

    aget-object v2, p2, v1

    .line 2739
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    return p5

    .line 2742
    :cond_6f
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 2744
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2745
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2744
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_86

    goto :goto_99

    .line 2749
    :cond_86
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v2

    aget-wide v2, v2, v3

    .line 2750
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_99

    return p5

    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_9c
    return p3

    :cond_9d
    :goto_9d
    return p5
.end method

.method public final filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 7

    .line 2761
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 12

    const-wide/32 v0, 0x4000000

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-eqz p4, :cond_23

    .line 2653
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_22

    const/16 v0, 0x7d0

    if-eq p4, v0, :cond_22

    if-nez p4, :cond_1a

    goto :goto_22

    :cond_1a
    const-string p4, "android.permission.INSTALL_PACKAGES"

    .line 2660
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_23

    :cond_22
    :goto_22
    return p5

    :cond_23
    if-eqz p1, :cond_9c

    .line 2666
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    if-eqz p4, :cond_9c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result p4

    if-nez p4, :cond_36

    goto :goto_9c

    .line 2671
    :cond_36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v0

    .line 2670
    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p4

    if-nez p4, :cond_4d

    return p5

    .line 2676
    :cond_4d
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 2677
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_5d

    return p3

    .line 2682
    :cond_5d
    array-length v0, p2

    move v1, p5

    :goto_5f
    if-ge v1, v0, :cond_9b

    aget-object v2, p2, v1

    .line 2683
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    return p5

    .line 2686
    :cond_6e
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 2688
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2689
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2688
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_85

    goto :goto_98

    .line 2693
    :cond_85
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    aget-wide v2, v2, v3

    .line 2694
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_98

    return p5

    :cond_98
    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_9b
    return p3

    :cond_9c
    :goto_9c
    return p5
.end method

.method public final findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 15

    .line 1039
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v7, p2

    move v8, p3

    .line 1042
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object p0

    .line 1046
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3a

    const/4 p3, 0x0

    :goto_1f
    if-ge p3, p2, :cond_3a

    .line 1049
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1050
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v1, :cond_30

    add-int/lit8 p3, p3, 0x1

    goto :goto_1f

    .line 1053
    :cond_30
    new-instance p0, Landroid/content/ComponentName;

    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p7

    .line 4033
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    .line 4034
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 4035
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    const-string v9, "PackageManager"

    if-eqz p6, :cond_16

    const-string v1, "Looking for persistent preferred activities..."

    .line 4038
    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_35

    const-wide/32 v1, 0x10000

    and-long v1, p3, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    move v4, v1

    goto :goto_29

    :cond_28
    move v4, v11

    :goto_29
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p7

    .line 4041
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, v10

    :goto_36
    if-eqz v0, :cond_100

    .line 4045
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_100

    .line 4046
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v11

    :goto_43
    if-ge v2, v1, :cond_100

    .line 4048
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    const-string v4, "  "

    const/4 v5, 0x3

    const/4 v12, 0x2

    if-eqz p6, :cond_84

    .line 4050
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4051
    invoke-virtual {v3}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v14

    if-lez v14, :cond_66

    invoke-virtual {v3, v11}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_68

    :cond_66
    const-string v14, "<none>"

    :goto_68
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n  component="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4050
    invoke-static {v9, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    new-instance v13, Landroid/util/LogPrinter;

    invoke-direct {v13, v12, v9, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v13, v4}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4055
    :cond_84
    iget-object v3, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v13, 0x200

    or-long v13, p3, v13

    invoke-virtual {p0, v3, v13, v14, v7}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz p6, :cond_a5

    const-string v13, "Found persistent preferred activity:"

    .line 4058
    invoke-static {v9, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a0

    .line 4060
    new-instance v13, Landroid/util/LogPrinter;

    invoke-direct {v13, v12, v9, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v13, v4}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_a5

    :cond_a0
    const-string v4, "  null"

    .line 4062
    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    if-nez v3, :cond_aa

    :cond_a7
    move-object/from16 v5, p5

    goto :goto_fc

    :cond_aa
    move v4, v11

    :goto_ab
    if-ge v4, v8, :cond_a7

    move-object/from16 v5, p5

    .line 4071
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 4072
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4073
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c6

    goto :goto_d2

    .line 4076
    :cond_c6
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d5

    :goto_d2
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    :cond_d5
    if-eqz p6, :cond_fb

    .line 4081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning persistent preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    return-object v12

    :goto_fc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_43

    :cond_100
    return-object v10
.end method

.method public findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move/from16 v8, p9

    .line 3671
    new-instance v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p9

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 3675
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    const/4 v6, 0x0

    move-wide/from16 v2, p3

    move/from16 v4, p9

    move/from16 v5, p11

    .line 3673
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v12

    .line 3677
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v14

    .line 3681
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    const-string v15, "android.intent.category.HOME"

    const/4 v7, 0x0

    if-eqz v0, :cond_b2

    .line 3683
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 3684
    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 3685
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_b2

    .line 3687
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    const/16 v1, 0x2f

    .line 3691
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_76

    add-int/lit8 v2, v1, 0x1

    .line 3693
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3694
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3695
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3696
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3697
    iget-object v3, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3698
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_77

    :cond_76
    move-object v2, v7

    .line 3704
    :cond_77
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 3705
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3706
    iget-object v3, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3707
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3708
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    if-eqz v2, :cond_af

    .line 3710
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3712
    :cond_af
    iput-object v3, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v11

    .line 3723
    :cond_b2
    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v16, "kioskmode"

    const-string v4, "PackageManager"

    if-eqz v0, :cond_f0

    .line 3727
    :try_start_bd
    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3726
    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 3729
    invoke-interface {v0, v8}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 3732
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_d2
    if-ge v2, v1, :cond_f0

    .line 3734
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3735
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 3736
    iput-object v3, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_e6} :catch_ea

    return-object v11

    :cond_e7
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    :catch_ea
    move-exception v0

    const-string v1, "Failed talking with kiosk mode service"

    .line 3743
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f0
    const-string v0, "application_policy"

    .line 3747
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3746
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_132

    .line 3750
    :try_start_fc
    invoke-interface {v0, v14, v8}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_132

    .line 3752
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_107
    if-ge v2, v1, :cond_132

    .line 3754
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3755
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12e

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3756
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 3757
    iput-object v3, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_12d} :catch_132

    return-object v11

    :cond_12e
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    goto :goto_107

    :catch_132
    :cond_132
    if-eqz v10, :cond_13c

    .line 3769
    invoke-static/range {p9 .. p9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_13c

    const/4 v0, 0x0

    goto :goto_13d

    :cond_13c
    move v0, v8

    :goto_13d
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v8, v4

    move-wide v4, v12

    move-object/from16 p3, v15

    const/4 v15, 0x0

    move-object/from16 v6, p5

    move/from16 v7, p8

    move-object v15, v8

    move v8, v0

    .line 3773
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_156

    return-object v11

    .line 3781
    :cond_156
    iget-object v1, v9, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v7

    if-eqz p8, :cond_163

    const-string v1, "Looking for preferred activities..."

    .line 3783
    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_163
    if-eqz v7, :cond_17e

    const-wide/32 v1, 0x10000

    and-long/2addr v1, v12

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_171

    const/4 v5, 0x1

    goto :goto_172

    :cond_171
    const/4 v5, 0x0

    :goto_172
    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p2

    move v6, v0

    .line 3785
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    goto :goto_17f

    :cond_17e
    const/4 v1, 0x0

    :goto_17f
    if-eqz v1, :cond_43e

    .line 3789
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43e

    if-eqz p8, :cond_18e

    const-string v2, "Figuring out best match..."

    .line 3797
    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :cond_18e
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_194
    if-ge v6, v2, :cond_1ca

    .line 3802
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-eqz p8, :cond_1c2

    .line 3804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Match for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": 0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3805
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3804
    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    :cond_1c2
    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v4, v3, :cond_1c7

    move v3, v4

    :cond_1c7
    add-int/lit8 v6, v6, 0x1

    goto :goto_194

    :cond_1ca
    if-eqz p8, :cond_1e4

    .line 3813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Best match: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e4
    const/high16 v4, 0xfff0000

    and-int/2addr v3, v4

    .line 3816
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1ec
    if-ge v6, v4, :cond_43e

    .line 3818
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    const-string v8, "  "

    move-object/from16 p9, v1

    if-eqz p8, :cond_23a

    .line 3820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "Checking PreferredActivity ds="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    invoke-virtual {v5}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v4

    if-lez v4, :cond_212

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_215

    :cond_212
    const/4 v4, 0x0

    const-string v19, "<none>"

    :goto_215
    move-object/from16 v4, v19

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  component="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3820
    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    new-instance v1, Landroid/util/LogPrinter;

    move/from16 v19, v6

    const/4 v4, 0x3

    const/4 v6, 0x2

    invoke-direct {v1, v6, v15, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v1, v8}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_23e

    :cond_23a
    move/from16 v18, v4

    move/from16 v19, v6

    .line 3825
    :goto_23e
    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v1, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v4, v3, :cond_270

    if-eqz p8, :cond_262

    .line 3827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping bad match "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3828
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3827
    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_262
    :goto_262
    move-object/from16 v1, p3

    move/from16 v17, v2

    move/from16 p11, v3

    :goto_268
    move-wide/from16 v20, v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_42e

    :cond_270
    if-eqz p6, :cond_27e

    .line 3834
    iget-boolean v4, v1, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v4, :cond_27e

    if-eqz p8, :cond_262

    const-string v1, "Skipping mAlways=false entry"

    .line 3835
    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_262

    .line 3838
    :cond_27e
    iget-object v1, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v20, 0x200

    or-long v20, v12, v20

    const-wide/32 v22, 0x80000

    or-long v20, v20, v22

    const-wide/32 v22, 0x40000

    move v6, v3

    or-long v3, v20, v22

    invoke-virtual {v9, v1, v3, v4, v0}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz p8, :cond_2b1

    const-string v3, "Found preferred activity:"

    .line 3843
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2a9

    .line 3845
    new-instance v3, Landroid/util/LogPrinter;

    move/from16 p11, v6

    const/4 v4, 0x3

    const/4 v6, 0x2

    invoke-direct {v3, v6, v15, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3, v8}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_2b3

    :cond_2a9
    move/from16 p11, v6

    const-string v3, "  null"

    .line 3847
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b3

    :cond_2b1
    move/from16 p11, v6

    .line 3850
    :goto_2b3
    invoke-static {v14}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2bd

    if-nez p12, :cond_2bd

    const/4 v6, 0x1

    goto :goto_2be

    :cond_2bd
    const/4 v6, 0x0

    :goto_2be
    if-nez v6, :cond_2c4

    if-nez p10, :cond_2c4

    const/4 v3, 0x1

    goto :goto_2c5

    :cond_2c4
    const/4 v3, 0x0

    :goto_2c5
    if-nez v1, :cond_2f5

    if-nez v3, :cond_2cb

    goto/16 :goto_428

    .line 3866
    :cond_2cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing dangling preferred activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    invoke-virtual {v7, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v1, 0x1

    .line 3869
    iput-boolean v1, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    move v3, v1

    move/from16 v17, v2

    move-wide/from16 v20, v12

    const/4 v4, 0x0

    move-object/from16 v2, p2

    :goto_2f1
    move-object/from16 v1, p3

    goto/16 :goto_42e

    :cond_2f5
    const/4 v4, 0x0

    :goto_2f6
    if-ge v4, v2, :cond_428

    .line 3873
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    move/from16 v17, v2

    .line 3874
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-wide/from16 v20, v12

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3875
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_313

    goto :goto_31f

    .line 3878
    :cond_313
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_326

    :goto_31f
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v17

    move-wide/from16 v12, v20

    goto :goto_2f6

    :cond_326
    if-eqz p7, :cond_335

    if-eqz v3, :cond_335

    .line 3883
    invoke-virtual {v7, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v1, 0x1

    .line 3884
    iput-boolean v1, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    move-object/from16 v2, p2

    move v3, v1

    const/4 v4, 0x0

    goto :goto_2f1

    :cond_335
    if-eqz p6, :cond_3ff

    .line 3897
    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3898
    invoke-virtual {v1, v10, v6, v0}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v1

    if-nez v1, :cond_3ff

    move-object/from16 v1, p3

    .line 3903
    invoke-virtual {v14, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_360

    .line 3906
    :try_start_347
    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v1

    if-eqz v1, :cond_360

    .line 3909
    invoke-interface {v1, v0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_360

    .line 3910
    iput-object v8, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_359
    .catch Landroid/os/RemoteException; {:try_start_347 .. :try_end_359} :catch_35a

    return-object v11

    :catch_35a
    move-exception v0

    const-string v1, "Failed talking to Kiosk mode service"

    .line 3915
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3920
    :cond_360
    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v0, v10, v6}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_3a5

    if-eqz v3, :cond_3ff

    .line 3931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set changed, but still valid, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v10, v0}, Lcom/android/server/pm/PackageManagerSamsungUtils;->logDroppingPreferredActivity(Lcom/android/server/pm/PreferredActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 3937
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v2, v1, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3939
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PreferredComponent;->discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;

    move-result-object v20

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v3, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-boolean v1, v1, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 v19, v2

    move-object/from16 v21, v3

    move/from16 v22, v1

    invoke-direct/range {v17 .. v22}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3942
    invoke-virtual {v7, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3943
    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v1, 0x1

    .line 3944
    iput-boolean v1, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    goto :goto_3ff

    :cond_3a5
    if-eqz v3, :cond_3fb

    .line 3952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set changed, dropping preferred activity for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set changed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v10, v0}, Lcom/android/server/pm/PackageManagerSamsungUtils;->logDroppingPreferredActivity(Lcom/android/server/pm/PreferredActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 3965
    invoke-virtual {v7, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3967
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v2, v1, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/4 v4, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, v5

    move/from16 p7, v2

    move-object/from16 p8, v3

    move-object/from16 p9, v1

    move/from16 p10, v4

    invoke-direct/range {p5 .. p10}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3970
    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v3, 0x1

    .line 3971
    iput-boolean v3, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    :cond_3fb
    const/4 v4, 0x0

    .line 3973
    iput-object v4, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v11

    :cond_3ff
    :goto_3ff
    if-eqz p8, :cond_425

    .line 3980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    :cond_425
    iput-object v8, v11, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v11

    :cond_428
    :goto_428
    move-object/from16 v1, p3

    move/from16 v17, v2

    goto/16 :goto_268

    :goto_42e
    add-int/lit8 v6, v19, 0x1

    move/from16 v3, p11

    move-object/from16 p3, v1

    move/from16 v2, v17

    move/from16 v4, v18

    move-wide/from16 v12, v20

    move-object/from16 v1, p9

    goto/16 :goto_1ec

    :cond_43e
    return-object v11
.end method

.method public final findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    .line 4018
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object v0, p0

    .line 4021
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 4022
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    move v12, v2

    goto :goto_18

    :cond_17
    move v12, v3

    :goto_18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 4025
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    return-object v0
.end method

.method public final findPreferredActivityInternal2(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    .line 4004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    .line 4007
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    return-object v0
.end method

.method public findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 5504
    invoke-static {p1}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object p1

    .line 5505
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 5506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 5509
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 5510
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 5511
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_33
    return-object v0

    .line 5516
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 14

    .line 1131
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 1132
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_51

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-wide v6, p2

    .line 1134
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object v1

    .line 1137
    :cond_1e
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p4

    if-eqz p4, :cond_25

    return-object v1

    .line 1140
    :cond_25
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object p4

    if-nez p4, :cond_35

    .line 1141
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 1143
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_34
    return-object v1

    .line 1147
    :cond_35
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 1148
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    move-wide v3, p2

    move v6, p5

    move-object v7, p1

    .line 1147
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_50

    .line 1150
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_50
    return-object p2

    :cond_51
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .registers 20

    move-object v0, p0

    move-object/from16 v12, p1

    move/from16 v11, p4

    .line 1849
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_f

    return-object v13

    :cond_f
    if-nez v12, :cond_12

    return-object v13

    .line 1853
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1860
    invoke-virtual {p0, v12, v1, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object v13

    :cond_1d
    const-wide/16 v1, 0x2000

    and-long v3, p2, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33

    .line 1865
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_33

    const-wide/32 v3, 0x400000

    or-long v3, p2, v3

    goto :goto_35

    :cond_33
    move-wide/from16 v3, p2

    .line 1869
    :goto_35
    invoke-interface {v12, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    .line 1870
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_99

    const-wide/16 v1, 0x100

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_49

    .line 1873
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_57

    .line 1874
    :cond_49
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v11, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v1

    :goto_57
    move-object v2, v1

    const-wide/16 v7, 0x1000

    and-long/2addr v7, v3

    cmp-long v1, v7, v5

    if-eqz v1, :cond_75

    .line 1877
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6a

    goto :goto_75

    .line 1878
    :cond_6a
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v1

    goto :goto_79

    .line 1877
    :cond_75
    :goto_75
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_79
    move-object v9, v1

    .line 1881
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v7

    move-object v1, v14

    move/from16 v11, p4

    move-object/from16 v12, p1

    .line 1880
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_8e

    return-object v13

    .line 1888
    :cond_8e
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1889
    invoke-virtual {p0, v14}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v1

    :cond_99
    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_a4

    .line 1893
    invoke-static {v10, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 1894
    :cond_a4
    invoke-static {v12, v3, v4, v11}, Lcom/android/server/pm/PackageManagerSamsungUtils;->installedOnSdcardAsUser(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 1896
    :cond_aa
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1897
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1898
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1899
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 1900
    invoke-interface {v0}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v13

    :cond_ca
    iput-object v13, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1901
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1902
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1904
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1905
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1906
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v11, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1907
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1908
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1909
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1910
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1911
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1912
    invoke-static {v0, v3, v4, v10, v11}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    :cond_113
    return-object v13
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11

    .line 1061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 14

    .line 1072
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1073
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v0

    const-wide/32 v2, 0x20000000

    or-long v6, v0, v2

    .line 1080
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get activity info"

    move-object v0, p0

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    :cond_2a
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v6

    move v4, p4

    move v5, p5

    .line 1086
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 20

    move-object v0, p0

    move-object v3, p1

    move/from16 v10, p5

    .line 1091
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_f

    move-object v13, v12

    goto :goto_1c

    .line 1095
    :cond_f
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v13, v1

    :goto_1c
    if-eqz v13, :cond_57

    .line 1096
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v5, v13

    move-object v6, v11

    move-wide/from16 v7, p2

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1097
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-nez v6, :cond_39

    return-object v12

    :cond_39
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, v6

    move/from16 v2, p4

    move-object v3, p1

    move/from16 v5, p5

    .line 1099
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_48

    return-object v12

    .line 1104
    :cond_48
    invoke-interface {v6, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    move-object v0, v13

    move-object v1, v11

    move-wide/from16 v2, p2

    move/from16 v5, p5

    .line 1103
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1107
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-wide/from16 v2, p2

    invoke-static {v0, v2, v3, v1, v10}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    :cond_6c
    return-object v12
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .registers 2

    .line 2017
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 5574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5575
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5577
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5578
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5579
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    .line 5580
    :cond_1b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    :goto_1f
    if-eqz v2, :cond_7b

    .line 5581
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_7b

    .line 5584
    :cond_2c
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 5585
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5587
    :cond_37
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p0

    .line 5588
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_46
    if-ge v1, p0, :cond_75

    .line 5590
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 5591
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v3

    move v4, v0

    .line 5592
    :goto_57
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 5593
    new-instance v5, Landroid/content/IntentFilter;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 5596
    :cond_75
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 5582
    :cond_7b
    :goto_7b
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAllPackages()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x42f

    if-eq v0, v1, :cond_d

    const-string v0, "getAllPackages is limited to privileged callers"

    .line 4885
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4888
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4889
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4890
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4891
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4893
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4894
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_57

    .line 4897
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4898
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isVisibleToInstantApps()Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_3c

    .line 4901
    :cond_4f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 4905
    :cond_57
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4906
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_92

    .line 4908
    invoke-interface {v5, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4910
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    .line 4909
    invoke-virtual {v6, v1, v7, v5}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v5

    if-nez v5, :cond_92

    goto :goto_61

    .line 4913
    :cond_92
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_9a
    return-object v3
.end method

.method public getAllSharedUsers()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 6540
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 5094
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 5096
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5097
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 5098
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 5100
    :cond_12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5102
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5103
    invoke-interface {v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 5104
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_27
    if-ltz p1, :cond_42

    .line 5105
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5106
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_3f

    .line 5110
    :cond_3c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :goto_3f
    add-int/lit8 p1, p1, -0x1

    goto :goto_27

    .line 5112
    :cond_42
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 11

    .line 5761
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_a

    return v1

    .line 5762
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get enabled"

    move-object v2, p0

    move v3, v0

    move v4, p2

    .line 5763
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5766
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v2, :cond_23

    invoke-static {p2, p1}, Lcom/android/server/pm/SProtect;->checkForHiddenPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    return v1

    .line 5771
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5772
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5771
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_36

    .line 5775
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 5773
    :cond_36
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_3c} :catch_3c

    .line 5777
    :catch_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 12

    .line 5527
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationHidden for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5533
    :try_start_29
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_4c

    const/4 v3, 0x1

    if-nez p1, :cond_36

    .line 5542
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 5537
    :cond_36
    :try_start_36
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_4c

    if-eqz p0, :cond_40

    .line 5542
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 5540
    :cond_40
    :try_start_40
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_4c

    .line 5542
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_4c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5543
    throw p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 11

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 16

    .line 1171
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1172
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v2

    .line 1174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result p2

    if-nez p2, :cond_25

    .line 1175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "get application info"

    move-object v4, p0

    move v6, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    :cond_25
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    .line 1180
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 16

    const-wide/16 v0, -0x1

    .line 1188
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 1191
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v0, 0x0

    if-eqz p1, :cond_63

    .line 1198
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_1a

    return-object v0

    .line 1201
    :cond_1a
    invoke-static {p5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1202
    invoke-static {v3}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1203
    invoke-static {v3}, Lcom/android/server/DualAppManagerService;->isDefalutAppPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 p5, 0x0

    :cond_3b
    move-object v4, p0

    move-object v5, v1

    move v6, p4

    move v7, p5

    move-wide v8, p2

    .line 1207
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    if-eqz v2, :cond_47

    return-object v0

    .line 1210
    :cond_47
    invoke-virtual {p0, v1, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p4

    if-eqz p4, :cond_4e

    return-object v0

    .line 1215
    :cond_4e
    invoke-interface {v1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    move-object v4, p1

    move-wide v5, p2

    move v8, p5

    move-object v9, v1

    .line 1214
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_62

    .line 1217
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_62
    return-object p2

    :cond_63
    const-wide/32 v1, 0x40000000

    and-long/2addr v1, p2

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-eqz p1, :cond_83

    const/4 p1, 0x1

    const-wide/32 p4, 0x100000

    and-long/2addr p2, p4

    cmp-long p2, p2, v4

    if-eqz p2, :cond_77

    const/4 p1, 0x2

    .line 1230
    :cond_77
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_80

    return-object v0

    .line 1234
    :cond_80
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_83
    const-string p1, "android"

    .line 1236
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    const-string/jumbo p1, "system"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    goto :goto_a7

    :cond_95
    const-wide/32 v1, 0x402000

    and-long/2addr v1, p2

    cmp-long p1, v1, v4

    if-eqz p1, :cond_a6

    move-object v2, p0

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 1241
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_a6
    return-object v0

    .line 1237
    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v0, :cond_10

    .line 757
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 759
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    return-object p0
.end method

.method public getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6130
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 6131
    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method public final getBaseSdkSandboxUid()I
    .registers 2

    .line 6387
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p0

    return p0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 3

    .line 6370
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 8

    const-string v0, "application_policy"

    .line 5605
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5604
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 5607
    :try_start_e
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "PackageManager"

    const-string v3, "This app uninstallation is not allowed"

    .line 5608
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1d

    move v0, v1

    goto :goto_22

    :catch_1d
    move-exception v0

    .line 5612
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_21
    move v0, v2

    .line 5616
    :goto_22
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 5617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_3f

    :cond_35
    if-eqz v0, :cond_38

    return v1

    .line 5625
    :cond_38
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3f
    :goto_3f
    return v2
.end method

.method public getBroadcastAllowList(Ljava/lang/String;[IZ)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[IZ)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    return-object v0

    :cond_4
    const/16 p3, 0x3e8

    .line 5635
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_d

    return-object v0

    .line 5639
    :cond_d
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    move-object v0, p0

    move v1, p2

    move v2, p3

    .line 5785
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5787
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result p0

    return p0
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .registers 12

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 5795
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x2

    return p0

    .line 5798
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5799
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    move v7, p3

    .line 5798
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 5803
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    return p0

    .line 5801
    :cond_2a
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_34} :catch_34

    .line 5805
    :catch_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown component: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 1

    .line 6405
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object p0
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 23

    move-object/from16 v7, p0

    move/from16 v8, p5

    .line 1478
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_10

    return-object v9

    .line 1482
    :cond_10
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1485
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_7f

    .line 1489
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v9

    :goto_2f
    if-ge v2, v1, :cond_77

    .line 1491
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1495
    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v5, :cond_3e

    :goto_3b
    move/from16 v6, p6

    goto :goto_74

    .line 1498
    :cond_3e
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1499
    iget-object v5, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-nez v11, :cond_4b

    goto :goto_3b

    .line 1504
    :cond_4b
    iget-object v10, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v12, p1

    move-wide/from16 v13, p3

    move/from16 v15, p6

    .line 1505
    invoke-interface/range {v10 .. v15}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v4

    if-nez v3, :cond_6a

    .line 1508
    new-instance v3, Lcom/android/server/pm/CrossProfileDomainInfo;

    new-instance v5, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v5}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    move/from16 v6, p6

    invoke-virtual {v7, v5, v8, v6}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_74

    :cond_6a
    move/from16 v6, p6

    .line 1511
    iget v5, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1512
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_77
    if-eqz v3, :cond_7e

    .line 1515
    iget v0, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz v0, :cond_7e

    return-object v9

    :cond_7e
    return-object v3

    :cond_7f
    :goto_7f
    return-object v9
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    .line 4548
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v3, "getDeclaredSharedLibraries"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getDeclaredSharedLibraries"

    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, p4

    .line 4551
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-string/jumbo v1, "packageName cannot be null"

    .line 4554
    invoke-static {v9, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId must be >= 0"

    .line 4555
    invoke-static {v10, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4556
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_35

    return-object v12

    .line 4560
    :cond_35
    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    return-object v12

    .line 4565
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v13

    .line 4568
    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    move-object v1, v12

    move v8, v15

    :goto_47
    if-ge v8, v14, :cond_11f

    .line 4571
    invoke-virtual {v13, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v7, :cond_56

    move/from16 v21, v8

    goto/16 :goto_11b

    .line 4576
    :cond_56
    invoke-virtual {v7}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    move-object/from16 v16, v1

    move v6, v15

    :goto_5d
    if-ge v6, v5, :cond_117

    .line 4578
    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4580
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    .line 4581
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    goto/16 :goto_108

    .line 4585
    :cond_7f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 4588
    :try_start_83
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4589
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    const-wide/32 v20, 0x4000000

    or-long v20, p2, v20

    .line 4591
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v1, p0

    move/from16 v23, v5

    move/from16 v24, v6

    move-wide/from16 v5, v20

    move-object/from16 v20, v7

    move/from16 v7, v22

    move/from16 v21, v8

    move/from16 v8, p4

    .line 4587
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_a8
    .catchall {:try_start_83 .. :try_end_a8} :catchall_112

    if-nez v1, :cond_ae

    .line 4596
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_108

    :cond_ae
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4599
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4600
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 4601
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v29

    .line 4602
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v30

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v32

    .line 4603
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, p2

    move v5, v11

    move/from16 v6, p4

    .line 4604
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v34

    .line 4606
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e5

    move-object/from16 v35, v12

    goto :goto_f0

    .line 4607
    :cond_e5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v35, v1

    .line 4608
    :goto_f0
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v36

    move-object/from16 v25, v7

    invoke-direct/range {v25 .. v36}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    if-nez v16, :cond_101

    .line 4611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_103

    :cond_101
    move-object/from16 v1, v16

    .line 4613
    :goto_103
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    :goto_108
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v7, v20

    move/from16 v8, v21

    move/from16 v5, v23

    goto/16 :goto_5d

    :catchall_112
    move-exception v0

    .line 4596
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4597
    throw v0

    :cond_117
    move/from16 v21, v8

    move-object/from16 v1, v16

    :goto_11b
    add-int/lit8 v8, v21, 0x1

    goto/16 :goto_47

    :cond_11f
    if-eqz v1, :cond_126

    .line 4617
    new-instance v12, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v12, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_126
    return-object v12
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 8

    .line 1401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    const-string p0, "PackageManager"

    const-string p1, "Default package for ROLE_HOME is not set in RoleManager"

    .line 1408
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    .line 1414
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1c
    if-ge v1, p1, :cond_37

    .line 1416
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1417
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, p0, :cond_31

    .line 1418
    iget-object p0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1419
    iget p0, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_34

    :cond_31
    if-ne v5, p0, :cond_34

    move-object v3, v2

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_37
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    .line 6411
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getFlagsForUid(I)I
    .registers 6

    .line 5007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5008
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 5011
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5012
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5014
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5015
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5016
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 5017
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_36

    .line 5018
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 5019
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_31

    return v2

    .line 5022
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    return p0

    .line 5023
    :cond_36
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_48

    .line 5024
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 5025
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_43

    return v2

    .line 5028
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    return p0

    :cond_48
    return v2
.end method

.method public getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6473
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 12

    .line 5358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5359
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 5362
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v1, "com.android.contacts"

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v5, v6

    .line 5361
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 5363
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3b

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5364
    invoke-static {v0, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    move v5, v6

    .line 5370
    :try_start_2e
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_36

    .line 5373
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_36
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5374
    throw p0

    .line 5365
    :cond_3b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allow to call grantImplicitAccess"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 11

    .line 6248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6249
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "getHarmfulAppInfo"

    move-object v0, p0

    move v1, v6

    move v2, p2

    .line 6251
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_29

    if-eqz v7, :cond_29

    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    .line 6255
    invoke-virtual {p0, v0, v6}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 6256
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6260
    :cond_29
    :goto_29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 6264
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6262
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v5, p2

    .line 1431
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v11

    .line 1433
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    const/4 v12, 0x0

    if-nez v11, :cond_17

    return-object v12

    :cond_17
    move-object/from16 v0, p1

    .line 1437
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    .line 1439
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move/from16 v9, p2

    invoke-virtual {v1, v9}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_56

    .line 1448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_38

    const/4 v1, 0x1

    move v10, v1

    goto :goto_39

    :cond_38
    move v10, v14

    :goto_39
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v5, v11

    move v6, v7

    move v7, v8

    move v8, v15

    move/from16 v9, p2

    .line 1451
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    .line 1453
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_56

    .line 1454
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_56

    .line 1455
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_56
    if-nez v13, :cond_59

    return-object v12

    .line 1462
    :cond_59
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    :goto_5d
    if-ge v14, v0, :cond_80

    .line 1464
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1466
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_7d

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1468
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7d
    add-int/lit8 v14, v14, 0x1

    goto :goto_5d

    :cond_80
    return-object v12
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .registers 2

    .line 1523
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 1524
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 1525
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .registers 10

    .line 6020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "get install reason"

    move-object v0, p0

    move v1, v6

    move v2, p2

    .line 6021
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6023
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 6024
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    return v0

    :cond_1c
    if-eqz p1, :cond_27

    .line 6028
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0

    :cond_27
    return v0
.end method

.method public final getInstallSource(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;
    .registers 5

    .line 5663
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_13

    .line 5666
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5667
    sget-object p0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object p0

    :cond_13
    if-eqz v0, :cond_25

    .line 5671
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_25

    .line 5675
    :cond_20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 14

    .line 5681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5682
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5688
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    return-object v3

    .line 5693
    :cond_10
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_24

    .line 5695
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 5696
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_22
    move-object v10, v3

    goto :goto_25

    :cond_24
    move-object v10, v4

    .line 5701
    :goto_25
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-eqz v4, :cond_3f

    .line 5706
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    if-nez v4, :cond_3d

    .line 5707
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 5708
    iget-object p1, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    goto :goto_5c

    :cond_3d
    move-object p1, v3

    goto :goto_5c

    .line 5713
    :cond_3f
    iget-object p1, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    move-object v7, v10

    goto :goto_5f

    .line 5719
    :cond_4b
    iget-object p1, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 5720
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 5721
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_5e

    :cond_5c
    :goto_5c
    move-object v7, p1

    goto :goto_5f

    :cond_5e
    :goto_5e
    move-object v7, v3

    .line 5727
    :goto_5f
    iget-object p1, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_72

    .line 5729
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 5730
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_71
    move-object p1, v3

    :cond_72
    if-eqz p1, :cond_80

    .line 5738
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_80

    move-object v9, v3

    goto :goto_81

    :cond_80
    move-object v9, p1

    .line 5746
    :goto_81
    iget-object p0, v2, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v7, :cond_94

    if-eqz p0, :cond_94

    .line 5747
    iget-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq p1, v0, :cond_94

    .line 5749
    new-instance v3, Landroid/content/pm/SigningInfo;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v3, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    :cond_94
    move-object v8, v3

    .line 5754
    new-instance p0, Landroid/content/pm/InstallSourceInfo;

    iget v11, v2, Lcom/android/server/pm/InstallSource;->packageSource:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public getInstalledApplications(JII)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    .line 5183
    invoke-virtual {v6, v8}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5186
    :cond_11
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5187
    :cond_1e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v9

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v11, 0x0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    move v12, v0

    goto :goto_31

    :cond_30
    move v12, v11

    :goto_31
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed application info"

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p3

    .line 5190
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v12, :cond_101

    .line 5201
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5202
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_55
    :goto_55
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_182

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5205
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_6e

    const-wide/32 v0, 0x400000

    or-long/2addr v0, v9

    move-wide v15, v0

    goto :goto_6f

    :cond_6e
    move-wide v15, v9

    .line 5208
    :goto_6f
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_a8

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p4

    move/from16 v3, p3

    move-wide v4, v9

    .line 5209
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_55

    .line 5212
    :cond_84
    invoke-virtual {v6, v14, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_8b

    goto :goto_55

    .line 5215
    :cond_8b
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 5216
    invoke-interface {v14, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    move-wide v1, v15

    move/from16 v4, p3

    move-object v5, v14

    .line 5215
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 5218
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_b7

    .line 5223
    :cond_a8
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-wide v2, v15

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_b7
    :goto_b7
    if-eqz v0, :cond_55

    .line 5228
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v1, :cond_c6

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/android/server/pm/SProtect;->checkForHiddenPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    goto :goto_55

    :cond_c6
    const/4 v1, 0x0

    .line 5236
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 5237
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 5238
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    goto :goto_f4

    .line 5240
    :cond_de
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x1080

    invoke-virtual {v6, v2, v3, v4, v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_f3

    .line 5243
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5244
    invoke-static {v2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    goto :goto_f4

    :cond_f3
    move v2, v11

    .line 5247
    :goto_f4
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungOverlayPermission(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_55

    if-nez v2, :cond_55

    .line 5248
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 5256
    :cond_101
    new-instance v12, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5257
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_114
    :goto_114
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_182

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5258
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    if-nez v15, :cond_128

    goto :goto_114

    .line 5262
    :cond_128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v3, p3

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_139

    goto :goto_114

    .line 5265
    :cond_139
    invoke-virtual {v6, v14, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_140

    goto :goto_114

    .line 5269
    :cond_140
    invoke-interface {v14, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    move-object v0, v15

    move-wide v1, v9

    move/from16 v4, p3

    move-object v5, v14

    .line 5268
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_114

    .line 5271
    invoke-virtual {v6, v15}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5273
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v2, :cond_160

    invoke-static {v7, v1}, Lcom/android/server/pm/SProtect;->checkForHiddenPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_160

    goto :goto_114

    .line 5279
    :cond_160
    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungOverlayPermission(Ljava/util/List;)Z

    move-result v1

    .line 5280
    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_179

    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.samsung.android.zippedOverlay"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_17a

    :cond_179
    move v2, v11

    :goto_17a
    if-nez v1, :cond_114

    if-nez v2, :cond_114

    .line 5283
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_114

    :cond_182
    return-object v12
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 2033
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2034
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2035
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 2037
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 2038
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed packages"

    move-object v0, p0

    move v1, v6

    move v2, p3

    .line 2040
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2043
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p4

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v12, 0x1

    goto :goto_13

    :cond_12
    const/4 v12, 0x0

    :goto_13
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    const/4 v13, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v13, 0x0

    :goto_1e
    const-wide/32 v0, 0x200000

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    const/4 v14, 0x1

    goto :goto_29

    :cond_28
    const/4 v14, 0x0

    :goto_29
    if-nez v12, :cond_39

    .line 2053
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2054
    invoke-static {v7, v8, v9}, Lcom/android/server/DualAppManagerService;->mayForwardInstalledPackagesToOwner(JI)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v15, 0x0

    goto :goto_3b

    :cond_39
    move/from16 v15, p3

    :goto_3b
    const-string v4, "/data/overlays"

    const-string v5, "/data/app"

    if-eqz v12, :cond_105

    .line 2061
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2062
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v14, :cond_81

    .line 2064
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-nez v1, :cond_73

    goto :goto_5e

    .line 2067
    :cond_73
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2068
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_81

    move-object v2, v1

    goto :goto_82

    :cond_81
    move-object v2, v0

    :goto_82
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v10, v2

    move/from16 v2, p4

    move-object v11, v3

    move v3, v15

    move/from16 v17, v12

    move/from16 v18, v13

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, p1

    .line 2073
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_98
    :goto_98
    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move/from16 v12, v17

    move/from16 v13, v18

    goto :goto_5e

    .line 2076
    :cond_a0
    invoke-virtual {v6, v10, v9, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_a7

    goto :goto_98

    .line 2079
    :cond_a7
    invoke-virtual {v6, v10, v7, v8, v15}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 2082
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v1, :cond_ba

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v15, v1}, Lcom/android/server/pm/SProtect;->checkForHiddenPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    goto :goto_98

    .line 2088
    :cond_ba
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_e8

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_e8

    .line 2089
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2090
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 2091
    :cond_d2
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_e8

    .line 2092
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 2091
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungOverlayPermission(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e8

    const/4 v1, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    .line 2093
    :goto_e9
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_f5

    invoke-static {v0}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_f5

    const/4 v2, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v2, 0x0

    :goto_f6
    if-nez v1, :cond_98

    if-nez v2, :cond_98

    .line 2095
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_fe
    move-object v11, v3

    move/from16 v17, v12

    move/from16 v18, v13

    goto/16 :goto_1c5

    :cond_105
    move/from16 v17, v12

    move/from16 v18, v13

    move-object v12, v4

    move-object v13, v5

    .line 2103
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2104
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_120
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2105
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v14, :cond_14f

    .line 2107
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_13d

    goto :goto_120

    :cond_13d
    if-nez v1, :cond_141

    const/4 v0, 0x0

    goto :goto_14b

    .line 2111
    :cond_141
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    :goto_14b
    if-eqz v0, :cond_14f

    move-object v4, v0

    goto :goto_150

    :cond_14f
    move-object v4, v1

    :goto_150
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move v3, v15

    move-object/from16 p3, v11

    move-object v11, v4

    move-wide/from16 v4, p1

    .line 2116
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_164

    :cond_161
    :goto_161
    move-object/from16 v11, p3

    goto :goto_120

    .line 2119
    :cond_164
    invoke-virtual {v6, v11, v9, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_16b

    goto :goto_161

    .line 2122
    :cond_16b
    invoke-virtual {v6, v11, v7, v8, v15}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_161

    .line 2125
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v1, :cond_17e

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v15, v1}, Lcom/android/server/pm/SProtect;->checkForHiddenPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17e

    goto :goto_161

    .line 2131
    :cond_17e
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1ae

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_1ae

    .line 2132
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_196

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2133
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    :cond_196
    if-eqz v11, :cond_1ae

    .line 2134
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_1ae

    .line 2135
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 2134
    invoke-static {v1}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungOverlayPermission(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    const/4 v1, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v1, 0x0

    .line 2136
    :goto_1af
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1bb

    invoke-static {v0}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    const/4 v2, 0x1

    goto :goto_1bc

    :cond_1bb
    const/4 v2, 0x0

    :goto_1bc
    if-nez v1, :cond_161

    if-nez v2, :cond_161

    .line 2138
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_161

    :cond_1c4
    move-object v3, v10

    :goto_1c5
    if-eqz v18, :cond_1e7

    if-eqz v14, :cond_1d3

    .line 2148
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getFactoryPackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1e7

    .line 2150
    :cond_1d3
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getActivePackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v17, :cond_1e7

    .line 2152
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getInactivePackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2156
    :cond_1e7
    :goto_1e7
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 5645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5646
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 5650
    iget-object p1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_21

    .line 5652
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 5654
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5653
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 p1, 0x0

    :cond_21
    return-object p1

    .line 5648
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 1

    .line 6486
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    .line 6487
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 6417
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 4

    .line 2426
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2427
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2429
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2430
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 2431
    instance-of v0, p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2432
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2433
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    .line 2434
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 2435
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_31
    return-object v1
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 13

    .line 5452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5453
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5454
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5455
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 5456
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v9, 0x0

    if-eqz v8, :cond_3e

    if-nez v6, :cond_21

    goto :goto_3e

    :cond_21
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v3, p1

    move v5, v7

    .line 5458
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-object v9

    .line 5462
    :cond_2d
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    int-to-long p0, p2

    move-object v4, v6

    move-wide v5, p0

    .line 5463
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object p0

    return-object p0

    :cond_3e
    :goto_3e
    return-object v9
.end method

.method public final getIsolatedOwner(I)I
    .registers 4

    .line 2445
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_a

    return p0

    .line 2447
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No owner UID found for isolated UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 6

    if-eqz p1, :cond_62

    if-nez p2, :cond_5

    goto :goto_62

    .line 5840
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_35

    .line 5842
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 5842
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_35

    .line 5847
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5848
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5844
    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5845
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .line 1533
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 6

    .line 4922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4923
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 4926
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4927
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4929
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4930
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4931
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4932
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_4a

    .line 4933
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4934
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_31

    return-object v2

    .line 4937
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4938
    :cond_4a
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_5c

    .line 4939
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4940
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_57

    return-object v2

    .line 4943
    :cond_57
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5c
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_77

    .line 4951
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_77

    .line 4954
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4955
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    return-object v0

    .line 4958
    :cond_13
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4959
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4960
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_1d
    if-ltz v4, :cond_76

    .line 4961
    aget v5, p1, v4

    .line 4962
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4963
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4965
    :cond_2b
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 4966
    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 4967
    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_5b

    .line 4968
    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4969
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 4970
    aput-object v0, v3, v4

    goto :goto_73

    .line 4972
    :cond_44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shared:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_73

    .line 4974
    :cond_5b
    instance-of v6, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_71

    .line 4975
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4976
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 4977
    aput-object v0, v3, v4

    goto :goto_73

    .line 4979
    :cond_6a
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_73

    .line 4982
    :cond_71
    aput-object v0, v3, v4

    :goto_73
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    :cond_76
    return-object v3

    :cond_77
    :goto_77
    return-object v0
.end method

.method public getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4119
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4121
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4122
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 4123
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4124
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-nez v6, :cond_20

    .line 4125
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 6

    const/16 v0, 0x3e8

    .line 1120
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    move v1, v0

    goto :goto_c

    .line 1122
    :cond_b
    array-length v1, p1

    :goto_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_1e

    if-ge v0, v1, :cond_1e

    .line 1124
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return-object v2
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 4

    const-wide/16 v0, -0x1

    .line 1114
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 1116
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPackageGids(Ljava/lang/String;JI)[I
    .registers 13

    .line 4245
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4246
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4247
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "getPackageGids"

    move-object v2, p0

    move v3, v0

    move v4, p4

    .line 4248
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4251
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_24

    return-object v1

    .line 4255
    :cond_24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 4256
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 4257
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 4258
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_53

    .line 4259
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4260
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 4259
    invoke-static {p4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0

    :cond_53
    const-wide/32 v2, 0x402000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_78

    .line 4264
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 4265
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-nez p2, :cond_78

    .line 4266
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4267
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 4266
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0

    :cond_78
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 13

    .line 1928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v7, p4

    .line 1927
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 18

    move-object v6, p0

    move/from16 v7, p7

    .line 1939
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    move-wide v0, p4

    .line 1940
    invoke-virtual {p0, p4, p5, v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v8

    .line 1941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get package info"

    move-object v0, p0

    move/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    move/from16 v6, p6

    move/from16 v7, p7

    .line 1944
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 16

    .line 1952
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 1954
    invoke-static {p7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_26

    .line 1955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1956
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1957
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->isDefalutAppPackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_26

    move p7, p3

    :cond_26
    const-wide/32 v0, 0x200000

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    if-eqz p2, :cond_32

    move p3, v0

    :cond_32
    const-wide/32 v4, 0x40000000

    const/4 p2, 0x0

    if-eqz p3, :cond_66

    and-long v6, p4, v4

    cmp-long v1, v6, v2

    if-eqz v1, :cond_46

    .line 1965
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 1968
    :cond_46
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_66

    move-object v0, p0

    move-object v1, v6

    move v2, p6

    move v3, p7

    move-wide v4, p4

    .line 1970
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    if-eqz p1, :cond_5a

    return-object p2

    .line 1973
    :cond_5a
    invoke-virtual {p0, v6, p6, p7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_61

    return-object p2

    .line 1976
    :cond_61
    invoke-virtual {p0, v6, p4, p5, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 1980
    :cond_66
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p3, :cond_79

    if-eqz v1, :cond_79

    .line 1981
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v6

    if-nez v6, :cond_79

    return-object p2

    :cond_79
    if-eqz v1, :cond_9d

    .line 1988
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p7

    move-wide v4, p4

    .line 1989
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p3

    if-eqz p3, :cond_8f

    return-object p2

    :cond_8f
    if-eqz p1, :cond_98

    .line 1992
    invoke-virtual {p0, p1, p6, p7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-eqz p3, :cond_98

    return-object p2

    .line 1996
    :cond_98
    invoke-virtual {p0, p1, p4, p5, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_9d
    if-nez p3, :cond_c8

    const-wide/32 v6, 0x402000

    and-long/2addr v6, p4

    cmp-long p3, v6, v2

    if-eqz p3, :cond_c8

    .line 1999
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_b0

    return-object p2

    :cond_b0
    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p7

    move-wide v4, p4

    .line 2001
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p3

    if-eqz p3, :cond_bc

    return-object p2

    .line 2004
    :cond_bc
    invoke-virtual {p0, p1, p6, p7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-eqz p3, :cond_c3

    return-object p2

    .line 2007
    :cond_c3
    invoke-virtual {p0, p1, p4, p5, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_c8
    and-long p3, p4, v4

    cmp-long p3, p3, v2

    if-eqz p3, :cond_d5

    .line 2010
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_d5
    return-object p2
.end method

.method public getPackageOrSharedUser(I)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/pkg/SharedUserApi;",
            ">;"
        }
    .end annotation

    .line 6376
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 6377
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 6378
    check-cast p0, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 6379
    :cond_12
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_1d

    .line 6380
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v0
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .registers 7

    .line 4136
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    .line 4137
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 4138
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-nez p3, :cond_3f

    .line 4139
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p3

    if-nez p3, :cond_1b

    goto :goto_3f

    :cond_1b
    if-eqz p1, :cond_25

    .line 4143
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p0, 0x2

    return p0

    .line 4147
    :cond_25
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x3

    return p0

    :cond_2f
    if-nez v0, :cond_3d

    .line 4151
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_3d

    const/4 p0, 0x4

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    return p0
.end method

.method public getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 4

    .line 4707
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4708
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    return-object p1

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3

    .line 2022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5

    const-wide/16 v0, -0x1

    .line 2027
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 2029
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStates()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 4099
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .registers 12

    .line 5984
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 5985
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5986
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "getPackageUid"

    move-object v0, p0

    move v1, v6

    move v2, p4

    .line 5987
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, v6

    .line 5989
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    return p0
.end method

.method public getPackageUidInternal(Ljava/lang/String;JII)I
    .registers 10

    .line 3150
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_33

    .line 3151
    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3152
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 3153
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3154
    invoke-virtual {p0, v1, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_33

    .line 3155
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p0

    invoke-static {p4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_33
    const-wide/32 v0, 0x402000

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5a

    .line 3159
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 3160
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 3161
    invoke-virtual {p0, p1, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 3162
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_5a
    const/4 p0, -0x1

    return p0
.end method

.method public getPackagesForAppId(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 6308
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 6309
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_11

    .line 6310
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 6311
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 6312
    :cond_11
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_20

    .line 6313
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 6314
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 6316
    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 3

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForUidInternal(II)[Ljava/lang/String;
    .registers 6

    .line 2553
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2554
    :goto_9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2555
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2556
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 2558
    :cond_17
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2559
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .registers 10

    .line 2565
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p3

    .line 2566
    instance-of v0, p3, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    if-eqz p4, :cond_f

    return-object v1

    .line 2570
    :cond_f
    check-cast p3, Lcom/android/server/pm/SharedUserSetting;

    .line 2572
    invoke-virtual {p3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p3

    .line 2573
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p4

    .line 2574
    new-array v0, p4, [Ljava/lang/String;

    move v1, v2

    :goto_1c
    if-ge v2, p4, :cond_40

    .line 2577
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2578
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2579
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_3d

    add-int/lit8 v4, v1, 0x1

    .line 2580
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v4

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2583
    :cond_40
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 2584
    :cond_47
    instance-of p4, p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p4, :cond_67

    .line 2585
    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2586
    invoke-interface {p3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p4

    if-eqz p4, :cond_67

    .line 2587
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_67

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .line 2588
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    return-object p0

    :cond_67
    return-object v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p4

    .line 5120
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    :cond_11
    move-wide/from16 v0, p2

    .line 5121
    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 5122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    move-object/from16 v0, p0

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    move v12, v0

    .line 5126
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, p1

    .line 5127
    array-length v0, v14

    new-array v15, v0, [Z

    .line 5128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5129
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_60

    if-nez v12, :cond_60

    goto :goto_4a

    :cond_60
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v15

    move-wide v5, v10

    move/from16 v7, p4

    .line 5132
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    goto :goto_4a

    .line 5135
    :cond_6d
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v13}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SharedLibraryInfo;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 4486
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4487
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_df

    .line 4489
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v4, :cond_16

    goto/16 :goto_db

    .line 4494
    :cond_16
    invoke-interface {v4, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-static {v5, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_db

    .line 4498
    :cond_22
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4499
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v6

    if-nez v6, :cond_75

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_75

    .line 4525
    :cond_33
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_db

    .line 4526
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 4527
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 4528
    :cond_55
    invoke-virtual {p0, v4, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_5d

    goto/16 :goto_db

    :cond_5d
    if-nez v2, :cond_64

    .line 4532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4534
    :cond_64
    new-instance v5, Landroid/content/pm/VersionedPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4535
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4534
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 4501
    :cond_75
    :goto_75
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v6

    goto :goto_84

    :cond_80
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v6

    .line 4502
    :goto_84
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object v7

    goto :goto_93

    .line 4503
    :cond_8f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v7

    .line 4505
    :goto_93
    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_9a

    goto :goto_db

    .line 4509
    :cond_9a
    aget-wide v5, v7, v5

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a5

    goto :goto_db

    .line 4512
    :cond_a5
    invoke-virtual {p0, v4, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_ac

    goto :goto_db

    :cond_ac
    if-nez v2, :cond_b3

    .line 4516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4519
    :cond_b3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4520
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_cf

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 4521
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4523
    :cond_cf
    new-instance v6, Landroid/content/pm/VersionedPackage;

    .line 4524
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v7

    invoke-direct {v6, v5, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4523
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_db
    :goto_db
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_df
    return-object v2
.end method

.method public getPersistentApplications(ZI)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 6097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6099
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 6100
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_11
    if-ge v10, v1, :cond_67

    .line 6102
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v10}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/high16 v3, 0x40000

    and-int/2addr v3, p2

    const/4 v4, 0x1

    if-eqz v3, :cond_29

    .line 6105
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDirectBootAware()Z

    move-result v3

    if-nez v3, :cond_29

    move v3, v4

    goto :goto_2a

    :cond_29
    move v3, v9

    :goto_2a
    const/high16 v5, 0x80000

    and-int/2addr v5, p2

    if-eqz v5, :cond_36

    .line 6107
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDirectBootAware()Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_37

    :cond_36
    move v4, v9

    .line 6109
    :goto_37
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_64

    if-eqz p1, :cond_45

    .line 6110
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_64

    :cond_45
    if-nez v3, :cond_49

    if-eqz v4, :cond_64

    .line 6112
    :cond_49
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v7, :cond_64

    int-to-long v3, p2

    .line 6115
    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    move v6, v8

    .line 6114
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 6117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_67
    return-object v0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 2

    .line 4093
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateFlagsForUid(I)I
    .registers 6

    .line 5035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5036
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 5039
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5040
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5042
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5043
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5044
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 5045
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_36

    .line 5046
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 5047
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_31

    return v2

    .line 5050
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    return p0

    .line 5051
    :cond_36
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_48

    .line 5052
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 5053
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_43

    return v2

    .line 5056
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    return p0

    :cond_48
    return v2
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 6353
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6354
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 6356
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 6357
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 6358
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_23

    .line 6359
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 6360
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    .line 6361
    :cond_23
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_36

    .line 6362
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 6363
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProcesses()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 2595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2597
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    throw p0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 15

    .line 4624
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4625
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4626
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get provider info"

    move-object v2, p0

    move v3, v0

    move v4, p4

    .line 4627
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4629
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object v8

    if-nez v8, :cond_25

    return-object v1

    .line 4636
    :cond_25
    invoke-interface {v8}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    if-eqz v9, :cond_69

    .line 4637
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_36

    goto :goto_69

    .line 4641
    :cond_36
    invoke-static {v9, v8, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v6, 0x4

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    move-object v5, p1

    move v7, p4

    .line 4642
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_49

    return-object v1

    .line 4646
    :cond_49
    invoke-interface {v9, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 4648
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    move-wide v3, p2

    move-object v5, p0

    move v6, p4

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-nez v7, :cond_5c

    return-object v1

    .line 4652
    :cond_5c
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    move-object v3, v8

    move-wide v4, p2

    move-object v6, p0

    move v8, p4

    invoke-static/range {v2 .. v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0

    :cond_69
    :goto_69
    return-object v1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 15

    .line 4322
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4323
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4324
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get receiver info"

    move-object v2, p0

    move v3, v0

    move v4, p4

    .line 4325
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4328
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v8

    if-nez v8, :cond_25

    return-object v1

    .line 4336
    :cond_25
    invoke-interface {v8}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    if-eqz v9, :cond_5a

    .line 4337
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_36

    goto :goto_5a

    .line 4341
    :cond_36
    invoke-static {v9, v8, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    move-object v5, p1

    move v7, p4

    .line 4342
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_49

    return-object v1

    .line 4345
    :cond_49
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 4346
    invoke-interface {v9, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    move-object v3, v8

    move-wide v4, p2

    move v7, p4

    move-object v8, v9

    .line 4345
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public final getRecentlyUsedPackages(J)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 6188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 6191
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 6192
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p0

    const/4 v1, 0x0

    move v9, v1

    .line 6194
    :goto_11
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v9, v1, :cond_44

    .line 6195
    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6196
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_41

    .line 6200
    :cond_25
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v11

    move-wide v1, v7

    move-wide v3, p1

    move-wide v5, v11

    .line 6201
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isActiveInForegroundWithinThresholdTime(JJJ)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6204
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    :goto_41
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_44
    return-object v0
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 4105
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 12

    .line 2381
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2382
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2383
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get service info"

    move-object v0, p0

    move v1, v6

    move v2, p4

    .line 2384
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, v6

    .line 2387
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;
    .registers 19

    move-object v0, p0

    .line 2392
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p1

    invoke-interface {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_c

    return-object v11

    .line 2401
    :cond_c
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2402
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v5, v12

    move-object v6, v10

    move-wide v7, p2

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2403
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    if-nez v8, :cond_33

    return-object v11

    :cond_33
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v8

    move/from16 v2, p5

    move-object v3, p1

    move/from16 v5, p4

    .line 2405
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_42

    return-object v11

    :cond_42
    move/from16 v0, p4

    .line 2410
    invoke-interface {v8, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    move-object v2, v12

    move-object v3, v10

    move-wide v4, p2

    move/from16 v7, p4

    .line 2409
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0

    :cond_52
    return-object v11
.end method

.method public getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v9, p4

    .line 4355
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_e

    return-object v10

    :cond_e
    const-string/jumbo v1, "userId must be >= 0"

    .line 4356
    invoke-static {v9, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4358
    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v10

    :cond_1f
    move-wide/from16 v1, p2

    .line 4362
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v12

    .line 4364
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 4365
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    .line 4367
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_59

    move-object/from16 v1, p1

    .line 4369
    invoke-virtual {v0, v1, v11, v9, v14}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REQUEST_DELETE_PACKAGES"

    .line 4371
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    .line 4373
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_57

    goto :goto_59

    :cond_57
    move v15, v14

    goto :goto_5b

    :cond_59
    :goto_59
    const/4 v1, 0x1

    move v15, v1

    .line 4377
    :goto_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 4379
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    move-object v1, v10

    move v5, v14

    :goto_65
    if-ge v5, v7, :cond_14a

    .line 4381
    invoke-virtual {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v6, :cond_78

    move/from16 v34, v5

    move/from16 v36, v7

    move-object/from16 v37, v8

    goto/16 :goto_142

    .line 4386
    :cond_78
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    move-object/from16 v16, v1

    move v4, v14

    :goto_7f
    if-ge v4, v3, :cond_13a

    .line 4388
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    if-nez v15, :cond_99

    .line 4389
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v1

    if-nez v1, :cond_13a

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v1

    if-eqz v1, :cond_99

    goto/16 :goto_13a

    .line 4392
    :cond_99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 4393
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v28

    .line 4396
    :try_start_a1
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4397
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v20

    const-wide/32 v22, 0x4000000

    or-long v22, v12, v22

    .line 4399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    move-object/from16 v1, p0

    move/from16 v32, v3

    move/from16 v33, v4

    move-wide/from16 v3, v20

    move/from16 v34, v5

    move-object/from16 v35, v6

    move-wide/from16 v5, v22

    move/from16 v36, v7

    move/from16 v7, v24

    move-object/from16 v37, v8

    move/from16 v8, p4

    .line 4395
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_cc
    .catchall {:try_start_a1 .. :try_end_cc} :catchall_135

    if-nez v1, :cond_d2

    .line 4404
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_127

    :cond_d2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4407
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 4408
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v23

    .line 4409
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v25

    .line 4410
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v27

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide v3, v12

    move v5, v11

    move/from16 v6, p4

    .line 4411
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v29

    .line 4412
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_104

    move-object/from16 v30, v10

    goto :goto_10f

    .line 4414
    :cond_104
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v30, v1

    .line 4415
    :goto_10f
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v31

    move-object/from16 v20, v7

    invoke-direct/range {v20 .. v31}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    if-nez v16, :cond_120

    .line 4418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_122

    :cond_120
    move-object/from16 v1, v16

    .line 4420
    :goto_122
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    :goto_127
    add-int/lit8 v4, v33, 0x1

    move/from16 v3, v32

    move/from16 v5, v34

    move-object/from16 v6, v35

    move/from16 v7, v36

    move-object/from16 v8, v37

    goto/16 :goto_7f

    :catchall_135
    move-exception v0

    .line 4404
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4405
    throw v0

    :cond_13a
    :goto_13a
    move/from16 v34, v5

    move/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v1, v16

    :goto_142
    add-int/lit8 v5, v34, 0x1

    move/from16 v7, v36

    move-object/from16 v8, v37

    goto/16 :goto_65

    :cond_14a
    if-eqz v1, :cond_151

    .line 4424
    new-instance v10, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v10, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_151
    return-object v10
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation

    .line 4112
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 4

    .line 2417
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 2

    .line 6393
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromAppId(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackages(I)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 6399
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .line 6140
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 6141
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4d

    .line 6145
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 6146
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 6147
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    .line 6148
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_23
    if-ge v1, p1, :cond_41

    .line 6151
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6152
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_3e

    add-int/lit8 v4, v2, 0x1

    .line 6153
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 6156
    :cond_41
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_4a

    goto :goto_4c

    .line 6157
    :cond_4a
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_4c
    return-object p0

    .line 6142
    :cond_4d
    :goto_4d
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .registers 2

    .line 3426
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 3427
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 3429
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_17

    .line 3430
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 3431
    :cond_17
    instance-of p1, p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p1, :cond_22

    .line 3432
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3433
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0

    .line 3436
    :cond_22
    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 2

    .line 3418
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 3422
    :cond_c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5857
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5858
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5859
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_47

    .line 5861
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_47

    .line 5867
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    if-eq v1, v0, :cond_37

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_2f

    goto :goto_37

    .line 5869
    :cond_2f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "May not access signing KeySet of other apps."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5871
    :cond_37
    :goto_37
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5872
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5863
    :cond_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeySet requested for unknown package: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5865
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 19

    .line 4663
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4665
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    :goto_c
    if-ge v4, v1, :cond_73

    .line 4667
    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v6, :cond_17

    goto :goto_70

    .line 4671
    :cond_17
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v7

    move v8, v2

    :goto_1c
    if-ge v8, v7, :cond_70

    .line 4673
    invoke-virtual {v6, v8}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/SharedLibraryInfo;

    .line 4674
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v10

    if-nez v10, :cond_39

    if-nez v5, :cond_31

    .line 4676
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 4678
    :cond_31
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 4682
    :cond_39
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v15, p0

    invoke-virtual {v15, v10}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-eqz v12, :cond_6d

    .line 4683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 4684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const-wide/32 v16, 0x4000000

    move-object/from16 v11, p0

    move-wide/from16 v15, v16

    .line 4683
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v10

    if-nez v10, :cond_6d

    if-nez v5, :cond_65

    .line 4687
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 4689
    :cond_65
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_70
    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_73
    if-eqz v5, :cond_7f

    .line 4696
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 4697
    invoke-interface {v5, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_7f
    return-object v3
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 5

    .line 4276
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_26

    .line 4277
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_26

    .line 4280
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4281
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4280
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    .line 4284
    :cond_1d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public getTopPriorityPackages(J)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6214
    new-instance v1, Ljava/util/PriorityQueue;

    .line 6215
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Map$Entry;->comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 6218
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getRecentlyUsedPackages(J)Ljava/util/Map;

    move-result-object p0

    .line 6219
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6220
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-direct {v2, p2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 6223
    :cond_39
    new-instance p0, Ljava/util/ArrayList;

    const-string p1, "com.google.android.gms"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 6224
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6227
    :goto_48
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7c

    .line 6228
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6230
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 6231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipped because it\'s an exception package : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 6235
    :cond_78
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_7c
    return-object v0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 4993
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4994
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    return v0

    .line 4997
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4999
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4998
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-nez p0, :cond_24

    .line 5000
    iget p0, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return p0

    :cond_24
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 6

    .line 6322
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6323
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 6325
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 6326
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 6327
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const/16 v0, 0x2710

    if-eqz p1, :cond_42

    .line 6328
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 6330
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 6332
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_25
    if-ge v1, p1, :cond_41

    .line 6334
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6335
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 6336
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v2

    if-ge v2, v0, :cond_3e

    move v0, v2

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_41
    return v0

    .line 6341
    :cond_42
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_57

    .line 6342
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 6343
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 6344
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_57
    return v0
.end method

.method public getUnusedPackages(J)Ljava/util/Set;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 6164
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 6166
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 6167
    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v15

    const/4 v2, 0x0

    move v11, v2

    .line 6168
    :goto_13
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v11, v2, :cond_63

    .line 6169
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6170
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_2a

    move/from16 v19, v11

    goto :goto_60

    .line 6173
    :cond_2a
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 6174
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v8

    .line 6176
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v2

    .line 6178
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v9

    .line 6179
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v17

    move-wide v4, v13

    move-wide/from16 v6, p1

    move/from16 v19, v11

    move-wide/from16 v11, v17

    .line 6175
    invoke-static/range {v2 .. v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 6180
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_60
    :goto_60
    add-int/lit8 v11, v19, 0x1

    goto :goto_13

    :cond_63
    return-object v1
.end method

.method public final getUsed()I
    .registers 1

    .line 542
    iget p0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return p0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 1

    .line 6546
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .registers 1

    .line 527
    iget p0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return p0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 7

    const/16 v0, 0x3e8

    .line 5927
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 5931
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    .line 5932
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    .line 5931
    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 5933
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [I

    :cond_23
    return-object v0
.end method

.method public getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    .line 6534
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final hasCrossUserPermission(IIIZZ)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    return v0

    :cond_6
    const/16 p5, 0x3e8

    if-eq p1, p5, :cond_2d

    if-nez p1, :cond_d

    goto :goto_2d

    .line 2775
    :cond_d
    invoke-static {p2, p3}, Lcom/android/server/DualAppManagerService;->isCrossAccessAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_14

    return v0

    :cond_14
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_1d

    .line 2780
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2782
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2d

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2783
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public final hasNonNegativePriority(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2791
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_12

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 2795
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 8

    .line 4820
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 4824
    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    .line 4828
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4829
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4830
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_26

    return v0

    :cond_26
    if-eqz p3, :cond_35

    const/4 p0, 0x1

    if-eq p3, p0, :cond_2c

    return v0

    .line 4837
    :cond_2c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0

    .line 4835
    :cond_35
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result p0

    return p0
.end method

.method public hasUidSigningCertificate(I[BI)Z
    .registers 8

    .line 4846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4847
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4849
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4851
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_48

    .line 4853
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_27

    .line 4854
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4855
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_22

    return v2

    .line 4858
    :cond_22
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_38

    .line 4859
    :cond_27
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_48

    .line 4860
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4861
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_34

    return v2

    .line 4864
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    :goto_38
    if-eqz p3, :cond_43

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3e

    return v2

    .line 4875
    :cond_3e
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0

    .line 4873
    :cond_43
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result p0

    return p0

    :cond_48
    return v2
.end method

.method public instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 6006
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_f

    return v0

    .line 6012
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 6011
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 6014
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .registers 6

    .line 2800
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_17

    .line 2801
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2802
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 2804
    :cond_19
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p0, :cond_2e

    .line 2806
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .registers 6

    const/4 v0, 0x0

    .line 5813
    :try_start_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5814
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5815
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 5817
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_16

    return v0

    :cond_13
    if-eq v1, v2, :cond_16

    return v0

    .line 5824
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5825
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 5824
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    if-nez p0, :cond_27

    .line 5827
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_26} :catch_2a

    return p0

    :cond_27
    if-ne p0, v2, :cond_2a

    move v0, v2

    :catch_2a
    :cond_2a
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .registers 4

    const/4 v0, 0x1

    .line 2810
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x3

    .line 2813
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x4

    .line 2816
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .registers 8

    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_2c

    .line 2822
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_11

    return v3

    .line 2827
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v3

    .line 2829
    :goto_1b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    move p0, v3

    :goto_25
    if-eqz p1, :cond_2a

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    return v2

    :cond_2c
    const/4 v4, 0x2

    if-ne p2, v4, :cond_53

    .line 2833
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_38

    return v3

    .line 2838
    :cond_38
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_41

    move p1, v2

    goto :goto_42

    :cond_41
    move p1, v3

    .line 2840
    :goto_42
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_4b

    move p0, v2

    goto :goto_4c

    :cond_4b
    move p0, v3

    :goto_4c
    if-eqz p1, :cond_51

    if-nez p0, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    return v2

    :cond_53
    const/4 v0, 0x3

    if-ne p2, v0, :cond_68

    .line 2844
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 2846
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_66

    goto :goto_67

    :cond_66
    move v2, v3

    :goto_67
    return v2

    :cond_68
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7d

    .line 2848
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 2850
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_7b

    goto :goto_7c

    :cond_7b
    move v2, v3

    :goto_7c
    return v2

    :cond_7d
    if-nez p2, :cond_84

    .line 2852
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_84
    return v3
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 7

    .line 2869
    invoke-virtual {p1}, Landroid/content/Intent;->isImplicitImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isInstallDisabledForPackage(Ljava/lang/String;II)Z
    .registers 7

    .line 4469
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    .line 4470
    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_27

    .line 4474
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 p3, 0x0

    if-eqz p0, :cond_26

    .line 4475
    invoke-interface {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    move v1, p3

    :goto_25
    return v1

    :cond_26
    return p3

    :cond_27
    :goto_27
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 10

    .line 2874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "isInstantApp"

    move-object v0, p0

    move v1, v6

    move v2, p2

    .line 2875
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2878
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .registers 4

    .line 2886
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isInstantAppInternalBody(Ljava/lang/String;II)Z
    .registers 6

    .line 2891
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2892
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2894
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2897
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 2898
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2900
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    .line 2899
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result p0

    if-eqz p0, :cond_31

    :cond_2f
    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    move p0, v1

    :goto_32
    if-eqz p0, :cond_3d

    .line 2902
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0

    :cond_3d
    return v1
.end method

.method public final isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZJ)Z"
        }
    .end annotation

    .line 2910
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2913
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 2916
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    return v1

    .line 2919
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    if-nez p4, :cond_26

    .line 2922
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    return v1

    .line 2925
    :cond_26
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p2, :cond_34

    .line 2928
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3c

    .line 2929
    :cond_34
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_59

    :cond_3c
    return v1

    .line 2933
    :cond_3d
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5e

    .line 2935
    :cond_52
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_59

    return v1

    .line 2941
    :cond_59
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result p0

    return p0

    :cond_5e
    :goto_5e
    return v1
.end method

.method public isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZJ)Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move v3, v2

    goto :goto_c

    .line 2950
    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_c
    move v4, v2

    :goto_d
    if-ge v4, v3, :cond_7e

    .line 2952
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2953
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2954
    iget-object v7, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v7, :cond_79

    .line 2957
    iget-boolean v5, v5, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    const-string v14, "PackageManager"

    if-nez v5, :cond_54

    .line 2958
    iget-object v8, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v9, v7

    move-object/from16 v10, p1

    move-wide/from16 v11, p5

    move/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 2960
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_53

    .line 2961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DENY instant app; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", approved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return v2

    :cond_54
    move/from16 v5, p3

    .line 2967
    invoke-interface {v7, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 2968
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_78

    .line 2969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DENY instant app installed; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return v2

    :cond_79
    move/from16 v5, p3

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_7e
    const/4 v0, 0x1

    return v0
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .registers 11

    .line 4173
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 4174
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "is package available"

    move-object v2, p0

    move v3, v0

    move v4, p2

    .line 4175
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4178
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 4179
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 4180
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v1

    .line 4183
    :cond_2c
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    if-eqz p0, :cond_39

    const-wide/16 p1, 0x0

    .line 4185
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    return p0

    :cond_39
    return v1
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 7

    .line 5877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5878
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    :cond_c
    if-eqz p1, :cond_70

    if-nez p2, :cond_11

    goto :goto_70

    .line 5884
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_43

    .line 5886
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5887
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5886
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_43

    .line 5891
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 5892
    instance-of v0, p2, Lcom/android/server/pm/KeySetHandle;

    if-eqz v0, :cond_42

    .line 5893
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5894
    check-cast p2, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result p0

    return p0

    :cond_42
    return v2

    .line 5888
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5889
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    :goto_70
    return v2
.end method

.method public isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 7

    .line 5901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5902
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    :cond_c
    if-eqz p1, :cond_70

    if-nez p2, :cond_11

    goto :goto_70

    .line 5908
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_43

    .line 5910
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5911
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5910
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_43

    .line 5915
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 5916
    instance-of v0, p2, Lcom/android/server/pm/KeySetHandle;

    if-eqz v0, :cond_42

    .line 5917
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5918
    check-cast p2, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result p0

    return p0

    :cond_42
    return v2

    .line 5912
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    :goto_70
    return v2
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 10

    .line 5548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPackageSuspendedForUser for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5551
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 5552
    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_35

    .line 5555
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p0

    return p0

    .line 5553
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown target package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 14

    .line 2982
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2983
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_20

    const-wide/32 v2, 0x10000

    and-long/2addr p4, v2

    const-wide/16 v2, 0x0

    cmp-long p4, p4, v2

    if-eqz p4, :cond_16

    move v5, v0

    goto :goto_17

    :cond_16
    move v5, v7

    :goto_17
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, p2

    .line 2986
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_25

    .line 2989
    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2990
    :goto_25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2991
    iget-boolean p1, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz p1, :cond_29

    return v0

    :cond_3a
    return v7
.end method

.method public final isRecentsAccessingChildProfiles(II)Z
    .registers 7

    .line 2999
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3000
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 3003
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3005
    :try_start_16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 3006
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2e

    if-eq v0, p1, :cond_24

    .line 3011
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 3009
    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2e

    .line 3011
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3012
    throw p0
.end method

.method public final isSameProfileGroup(II)Z
    .registers 5

    .line 3017
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3019
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 3021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3022
    throw p0
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .registers 5

    .line 5561
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5562
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 5563
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 5564
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public isUidPrivileged(I)Z
    .registers 5

    .line 5063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 5066
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5067
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5069
    :cond_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5070
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5071
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_42

    .line 5072
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5074
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 5075
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    move v0, v1

    :goto_2f
    if-ge v0, p1, :cond_4d

    .line 5077
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5078
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 5082
    :cond_42
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_4d

    .line 5083
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5084
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result p0

    return p0

    :cond_4d
    return v1
.end method

.method public final isUserEnabled(I)Z
    .registers 4

    .line 3026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3028
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 3029
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 3031
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3032
    throw p0
.end method

.method public final maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p6

    const-wide/32 v0, 0x800000

    and-long v2, p4, v0

    const-wide/16 v13, 0x0

    cmp-long v2, v2, v13

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_15

    move v2, v11

    goto :goto_16

    :cond_15
    move v2, v12

    :goto_16
    const-string v10, "PackageManager"

    if-nez v2, :cond_9c

    .line 1749
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const-wide/16 v3, 0x40

    or-long v3, p4, v3

    or-long/2addr v0, v3

    const-wide/32 v3, 0x1000000

    or-long v4, v0, v3

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 1757
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_38
    if-ltz v1, :cond_9c

    .line 1758
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1759
    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1760
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 1761
    invoke-interface {v2, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1762
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v1, v2

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-object v9, v5

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1764
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_7d

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    move v0, v12

    goto :goto_9e

    .line 1770
    :cond_7f
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_97

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app not approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    move v0, v11

    goto :goto_9d

    :cond_99
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_9c
    move v0, v12

    :goto_9d
    const/4 v6, 0x0

    :goto_9e
    if-nez v0, :cond_f7

    if-nez v6, :cond_e3

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "resolveEphemeral"

    .line 1785
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1786
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1788
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v2

    .line 1789
    new-instance v3, Landroid/content/pm/InstantAppRequest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    .line 1794
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v19

    move-object v9, v3

    move-object v2, v10

    move-object v10, v4

    move v4, v11

    move-object/from16 v11, p2

    move v4, v12

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move v5, v15

    move/from16 v15, p8

    move/from16 v16, p6

    move/from16 v18, p7

    invoke-direct/range {v9 .. v20}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1795
    iget-object v6, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v9, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v7, v6, v9, v3}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v9

    .line 1797
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_fb

    :cond_e3
    move-object v2, v10

    move v4, v12

    move v5, v15

    .line 1804
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1805
    new-instance v1, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v12, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_fb

    :cond_f7
    move-object v2, v10

    move v4, v12

    move v5, v15

    const/4 v9, 0x0

    .line 1810
    :goto_fb
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_104

    if-nez v9, :cond_104

    return-object v8

    .line 1813
    :cond_104
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1815
    invoke-interface {v0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 1816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    const-wide/16 v10, 0x0

    .line 1815
    invoke-static {v1, v3, v10, v11}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v1

    if-nez v1, :cond_123

    goto :goto_183

    .line 1819
    :cond_123
    new-instance v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1822
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1823
    invoke-interface {v0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 1821
    invoke-static {v3, v10, v11, v0, v5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const v0, 0x588000

    .line 1824
    iput v0, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1827
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_153

    .line 1829
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1831
    :cond_153
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_170

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 1832
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1832
    invoke-virtual {v0, v3, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_170
    const/4 v0, 0x1

    .line 1835
    iput-boolean v0, v1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1837
    iput-boolean v0, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1838
    iput-object v9, v1, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1839
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_180

    const-string v0, "Adding ephemeral installer to the ResolveInfo list"

    .line 1840
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_180
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_183
    :goto_183
    return-object v8
.end method

.method public queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 5412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eqz p1, :cond_d

    .line 5413
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_11

    .line 5414
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    :goto_11
    move v10, v0

    .line 5415
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    :cond_1f
    move-wide/from16 v0, p3

    .line 5416
    invoke-virtual {v8, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v11

    const/4 v13, 0x0

    .line 5418
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p2

    move-wide v5, v11

    move v7, v10

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_3b

    move v7, v0

    goto :goto_40

    .line 5420
    :cond_3b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    move v7, v1

    :goto_40
    move-object v14, v13

    move v13, v0

    :goto_42
    if-ge v13, v7, :cond_86

    .line 5422
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ProviderInfo;

    .line 5423
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 5424
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5423
    invoke-static {v0, v15, v11, v12, v10}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_83

    .line 5428
    :cond_5a
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5429
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move v2, v9

    move v5, v10

    .line 5431
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_83

    :cond_77
    if-nez v14, :cond_80

    .line 5436
    new-instance v14, Ljava/util/ArrayList;

    sub-int v0, v7, v13

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5438
    :cond_80
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    :cond_86
    if-eqz v14, :cond_93

    .line 5442
    sget-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5443
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 5446
    :cond_93
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public final queryCrossProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZ)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZ)",
            "Lcom/android/server/pm/CrossProfileDomainInfo;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-nez v8, :cond_8

    return-object v9

    .line 2313
    :cond_8
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2317
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_13
    if-ge v13, v11, :cond_5a

    .line 2319
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 2320
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v14

    .line 2322
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v15, 0x1

    if-eqz v0, :cond_2b

    move v0, v15

    goto :goto_2c

    :cond_2b
    move v0, v12

    .line 2324
    :goto_2c
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_36

    move v2, v15

    goto :goto_37

    :cond_36
    move v2, v12

    :goto_37
    if-nez v0, :cond_57

    .line 2325
    invoke-virtual {v10, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_57

    if-eqz v2, :cond_43

    if-nez p7, :cond_57

    :cond_43
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    .line 2329
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    if-eqz v0, :cond_54

    goto :goto_5b

    .line 2335
    :cond_54
    invoke-virtual {v10, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_57
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_5a
    move-object v0, v9

    :goto_5b
    if-nez v0, :cond_5e

    return-object v9

    .line 2343
    :cond_5e
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2344
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v7, v2}, Lcom/android/server/pm/ComputerEngine;->isUserEnabled(I)Z

    move-result v2

    if-nez v2, :cond_69

    return-object v9

    .line 2349
    :cond_69
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move/from16 v2, p6

    invoke-virtual {v7, v1, v2}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 2351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7a

    return-object v9

    :cond_7a
    return-object v0
.end method

.method public final queryCrossProfileIntentsforKnox(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZ)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZ)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 6432
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6433
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 6435
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v4, :cond_7e

    .line 6437
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 6438
    invoke-virtual {v9}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v7

    .line 6440
    invoke-virtual {v9}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    const/4 v15, 0x1

    if-eqz v8, :cond_2e

    move v8, v15

    goto :goto_2f

    :cond_2e
    move v8, v5

    .line 6442
    :goto_2f
    invoke-virtual {v9}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_39

    move v10, v15

    goto :goto_3a

    :cond_39
    move v10, v5

    :goto_3a
    if-nez v8, :cond_77

    .line 6443
    invoke-virtual {v3, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_77

    if-eqz v10, :cond_46

    if-nez p7, :cond_77

    :cond_46
    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    move/from16 v14, p6

    .line 6447
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v8

    if-eqz v8, :cond_6f

    .line 6450
    iget-object v9, v8, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 6452
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v10, p0

    move/from16 v11, p6

    invoke-virtual {v10, v9, v11}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 6454
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6b

    goto :goto_7b

    .line 6457
    :cond_6b
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_6f
    move-object/from16 v10, p0

    move/from16 v11, p6

    .line 6459
    :goto_73
    invoke-virtual {v3, v7, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_7b

    :cond_77
    move-object/from16 v10, p0

    move/from16 v11, p6

    :goto_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 6463
    :cond_7e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_85

    return-object v1

    :cond_85
    return-object v2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .line 5470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5471
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5472
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5473
    invoke-virtual {p0, v1, v0, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5474
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5477
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5479
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_26
    if-ge v9, v8, :cond_5e

    .line 5481
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v9}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    if-eqz p1, :cond_3c

    .line 5483
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 5484
    :cond_3c
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5485
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5486
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v3, :cond_5b

    int-to-long v4, p2

    move-object v2, v3

    move-wide v3, v4

    move v5, v7

    .line 5488
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 5491
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 5497
    :cond_5e
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v8, p5

    .line 765
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 748
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p7

    move/from16 v8, p8

    .line 550
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 551
    :cond_13
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v13

    .line 552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    move-object/from16 v0, p0

    move/from16 v2, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    const-string v10, "android.intent.action.SEND"

    const/4 v14, 0x0

    if-eqz v0, :cond_5f

    .line 559
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 560
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_3e
    const-string/jumbo v0, "restriction_policy"

    .line 563
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 565
    :try_start_4b
    invoke-interface {v0, v8, v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "PackageManager"

    const-string/jumbo v1, "queryIntentActivitiesInternal() : Share List not allowed"

    .line 566
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5e} :catch_5f

    return-object v0

    .line 574
    :catch_5f
    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x0

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_7d

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v16, p1

    move-object/from16 v17, v0

    goto :goto_81

    :cond_7d
    move-object/from16 v17, p1

    move-object/from16 v16, v0

    :goto_81
    move-object v7, v1

    const/4 v6, 0x1

    if-nez v7, :cond_8b

    if-eqz v15, :cond_88

    goto :goto_8b

    :cond_88
    move/from16 v18, v14

    goto :goto_8d

    :cond_8b
    :goto_8b
    move/from16 v18, v6

    :goto_8d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p8

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    .line 587
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v19

    move-wide/from16 v1, p3

    move/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, v18

    move-object v14, v7

    move/from16 v7, v19

    .line 585
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v0

    const-wide/32 v2, 0x20000000

    or-long v6, v0, v2

    .line 595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v14, :cond_1ad

    .line 598
    invoke-virtual {v11, v14, v6, v7, v8}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_d3

    .line 600
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 601
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const/4 v2, 0x0

    .line 603
    invoke-virtual {v11, v14, v6, v7, v2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v8, 0x0

    :cond_d3
    if-eqz v1, :cond_1a8

    const-wide/32 v2, 0x800000

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e1

    const/4 v2, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v2, 0x0

    :goto_e2
    const-wide/32 v9, 0x1000000

    and-long/2addr v9, v6

    cmp-long v3, v9, v4

    if-eqz v3, :cond_ec

    const/4 v3, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v3, 0x0

    :goto_ed
    const-wide/32 v9, 0x2000000

    and-long/2addr v6, v9

    cmp-long v4, v6, v4

    if-eqz v4, :cond_f7

    const/4 v6, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v6, 0x0

    :goto_f8
    if-eqz v13, :cond_fc

    const/4 v4, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v4, 0x0

    .line 619
    :goto_fd
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 620
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_10f

    const/4 v9, 0x1

    goto :goto_110

    :cond_10f
    const/4 v9, 0x0

    .line 623
    :goto_110
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v14, 0x100000

    and-int/2addr v14, v10

    if-eqz v14, :cond_119

    const/4 v14, 0x1

    goto :goto_11a

    :cond_119
    const/4 v14, 0x0

    :goto_11a
    if-eqz v14, :cond_123

    const/high16 v15, 0x200000

    and-int/2addr v10, v15

    if-nez v10, :cond_123

    const/4 v10, 0x1

    goto :goto_124

    :cond_123
    const/4 v10, 0x0

    :goto_124
    if-eqz v14, :cond_12d

    if-eqz v6, :cond_12b

    if-nez v10, :cond_12b

    goto :goto_12d

    :cond_12b
    const/4 v6, 0x0

    goto :goto_12e

    :cond_12d
    :goto_12d
    const/4 v6, 0x1

    :goto_12e
    if-nez v5, :cond_13e

    if-nez v2, :cond_136

    if-nez v4, :cond_136

    if-nez v9, :cond_13c

    :cond_136
    if-eqz v3, :cond_13e

    if-eqz v4, :cond_13e

    if-eqz v6, :cond_13e

    :cond_13c
    const/4 v6, 0x1

    goto :goto_13f

    :cond_13e
    const/4 v6, 0x0

    :goto_13f
    if-nez p9, :cond_155

    if-nez v9, :cond_155

    if-nez v4, :cond_155

    .line 638
    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x3e8

    .line 641
    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 640
    invoke-virtual {v11, v2, v12, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_155

    const/4 v2, 0x1

    goto :goto_156

    :cond_155
    const/4 v2, 0x0

    :goto_156
    if-nez v6, :cond_1a8

    if-nez v2, :cond_1a8

    .line 644
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 645
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    move-result-object v2

    if-eqz v2, :cond_173

    .line 650
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_173

    .line 653
    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 658
    :cond_173
    new-instance v7, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v2, :cond_191

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/android/server/pm/SProtect;->checkForHiddenPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_191

    .line 662
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_194

    .line 663
    :cond_191
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_194
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 667
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    move-object v2, v7

    move-object/from16 v4, v17

    move-object/from16 v5, p2

    move/from16 v6, p7

    .line 666
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    move-object v0, v7

    :cond_1a8
    move-object v7, v0

    move v14, v8

    const/4 v15, 0x0

    goto/16 :goto_2b8

    :cond_1ad
    const/4 v14, 0x1

    .line 673
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 674
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1c0

    move v0, v14

    goto :goto_1c1

    :cond_1c0
    const/4 v0, 0x0

    .line 675
    :goto_1c1
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_269

    .line 676
    invoke-static {v12, v1}, Lcom/android/server/DualAppManagerService;->isSelfContainedAction(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_269

    .line 677
    invoke-static/range {v17 .. v17}, Lcom/android/server/DualAppManagerService;->mayForwardIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 678
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_264

    .line 679
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_264

    .line 680
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-wide v4, v6

    move-wide/from16 v18, v6

    move/from16 v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_266

    .line 682
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v14, :cond_266

    const/4 v0, 0x0

    .line 683
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.settings"

    .line 684
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_266

    const-string v0, "com.google.android.packageinstaller"

    .line 685
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_266

    const-string v0, "com.google.android.permissioncontroller"

    .line 687
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_266

    const-string v0, "com.samsung.android.permissioncontroller"

    .line 689
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_266

    .line 691
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-wide/from16 v4, v18

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x0

    .line 694
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.android.internal.app.ChooserActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 696
    invoke-static {v8}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_261

    if-eqz v0, :cond_261

    .line 699
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v14, :cond_261

    .line 700
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 699
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_263

    :cond_261
    if-eqz v1, :cond_267

    :cond_263
    return-object v7

    :cond_264
    move-wide/from16 v18, v6

    :cond_266
    const/4 v10, 0x0

    :cond_267
    move v9, v10

    goto :goto_26d

    :cond_269
    move-wide/from16 v18, v6

    const/4 v10, 0x0

    move v9, v8

    :goto_26d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-wide/from16 v3, v18

    move/from16 v5, p7

    move v6, v9

    move/from16 v7, p9

    move/from16 v8, p10

    move v14, v9

    move-object v9, v15

    move v15, v10

    move-object v10, v13

    .line 711
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v9

    .line 714
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v0, :cond_28b

    move-object v7, v0

    const/4 v15, 0x1

    goto :goto_2b8

    .line 718
    :cond_28b
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v0, :cond_2aa

    .line 719
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {v11, v0, v14}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v8

    .line 721
    iget-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-wide/from16 v4, v18

    move v6, v14

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 725
    :cond_2aa
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_2b5

    .line 726
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 728
    :cond_2b5
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object v7, v0

    :goto_2b8
    if-eqz v16, :cond_2cd

    .line 734
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 735
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    move-object v2, v7

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    move/from16 v6, p7

    .line 734
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    :cond_2cd
    if-eqz v15, :cond_2d0

    goto :goto_2e1

    :cond_2d0
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    move/from16 v3, p10

    move/from16 v4, p7

    move/from16 v5, p9

    move v6, v14

    move-object/from16 v7, v17

    .line 739
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    :goto_2e1
    return-object v7
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .registers 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p6

    move-object/from16 v0, p9

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v0, :cond_15d

    move-object/from16 v13, p2

    .line 898
    invoke-virtual {v8, v9, v13, v10}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    .line 900
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->querySkipCurrentProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v15, 0x1

    if-eqz v0, :cond_48

    .line 903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 904
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v11, Lcom/android/server/pm/QueryIntentActivitiesResult;

    .line 907
    invoke-virtual {v8, v1, v10}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p10

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move-object/from16 v7, p1

    .line 906
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object v11

    .line 913
    :cond_48
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, p6

    move-wide/from16 v5, p3

    .line 915
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v16

    if-eqz v7, :cond_9c

    .line 918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v9, v0, v10}, Lcom/android/server/DualAppManagerService;->addDualAppResolveInfo(Landroid/content/Intent;II)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 919
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v6

    .line 920
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 p9, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9c

    .line 923
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v0, p9

    .line 924
    invoke-virtual {v8, v7, v0}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 928
    :cond_9c
    invoke-virtual {v8, v7}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move-object/from16 p9, v7

    move/from16 v7, v17

    .line 929
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryCrossProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZ)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v18

    .line 934
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryCrossProfileIntentsforKnox(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZ)Ljava/util/List;

    move-result-object v0

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 940
    invoke-virtual {v8, v10}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 942
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v11

    :cond_d3
    if-eqz v11, :cond_d7

    move-object v5, v11

    goto :goto_d9

    :cond_d7
    move-object/from16 v5, v18

    :goto_d9
    if-nez v16, :cond_126

    .line 952
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_103

    if-eqz v5, :cond_103

    .line 956
    iget-object v0, v5, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v7, p9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    new-instance v11, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p10

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move-object/from16 v7, p1

    .line 958
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object v11

    :cond_103
    move-object/from16 v7, p9

    .line 961
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v15, :cond_128

    if-nez v5, :cond_128

    .line 965
    new-instance v11, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p10

    move/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move-object/from16 v7, p1

    .line 966
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object v11

    :cond_126
    move-object/from16 v7, p9

    :cond_128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object v4, v7

    move/from16 v6, p6

    .line 974
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPr(Landroid/content/Intent;JLjava/util/List;Lcom/android/server/pm/CrossProfileDomainInfo;I)Ljava/util/List;

    move-result-object v7

    move v12, v15

    goto :goto_15a

    :cond_137
    move-object/from16 v7, p9

    if-eqz v0, :cond_15a

    .line 981
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15a

    .line 982
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_145
    :goto_145
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    if-eqz v1, :cond_145

    .line 984
    iget-object v1, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v15

    goto :goto_145

    :cond_15a
    :goto_15a
    move/from16 v0, v16

    goto :goto_1b7

    :cond_15d
    move-object/from16 v13, p2

    const/16 v1, 0x3e8

    .line 1009
    invoke-virtual {v8, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_194

    .line 1011
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v1

    if-eqz v1, :cond_194

    if-nez p7, :cond_177

    move/from16 v1, p5

    .line 1012
    invoke-virtual {v8, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_194

    .line 1013
    :cond_177
    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 1014
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getActivities()Ljava/util/List;

    move-result-object v6

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    .line 1013
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v11

    :cond_194
    if-eqz v11, :cond_1a0

    .line 1017
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19d

    goto :goto_1a0

    :cond_19d
    move-object v7, v11

    move v0, v12

    goto :goto_1b7

    :cond_1a0
    :goto_1a0
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p6

    move-wide/from16 v5, p3

    .line 1020
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v0

    if-nez v11, :cond_1b6

    .line 1023
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b7

    :cond_1b6
    move-object v7, v11

    .line 1027
    :goto_1b7
    new-instance v1, Lcom/android/server/pm/QueryIntentActivitiesResult;

    invoke-direct {v1, v12, v0, v7}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(ZZLjava/util/List;)V

    return-object v1
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v7, p5

    move/from16 v9, p6

    .line 773
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent receivers"

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    .line 774
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 779
    invoke-virtual {v8, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    .line 780
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v3

    const/4 v0, 0x0

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 784
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v1, :cond_53

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v11, p1

    move-object v5, v0

    goto :goto_56

    :cond_53
    move-object/from16 v5, p1

    move-object v11, v0

    .line 792
    :goto_56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_104

    .line 794
    invoke-virtual {v8, v1, v3, v4, v7}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    const/4 v12, 0x0

    if-ne v7, v2, :cond_7a

    .line 796
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 797
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 798
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    move v7, v12

    :cond_7a
    if-eqz v6, :cond_112

    const-wide/32 v13, 0x800000

    and-long/2addr v13, v3

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    const/4 v13, 0x1

    if-eqz v2, :cond_89

    move v2, v13

    goto :goto_8a

    :cond_89
    move v2, v12

    :goto_8a
    const-wide/32 v17, 0x1000000

    and-long v3, v3, v17

    cmp-long v3, v3, v15

    if-eqz v3, :cond_95

    move v3, v13

    goto :goto_96

    :cond_95
    move v3, v12

    :goto_96
    if-eqz v10, :cond_9a

    move v4, v13

    goto :goto_9b

    :cond_9a
    move v4, v12

    .line 813
    :goto_9b
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 814
    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_ad

    move v14, v13

    goto :goto_ae

    :cond_ad
    move v14, v12

    .line 817
    :goto_ae
    iget v15, v6, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v15, v15, v16

    if-nez v15, :cond_b8

    move v15, v13

    goto :goto_b9

    :cond_b8
    move v15, v12

    :goto_b9
    if-nez v1, :cond_c9

    if-nez v2, :cond_c1

    if-nez v4, :cond_c1

    if-nez v14, :cond_c7

    :cond_c1
    if-eqz v3, :cond_c9

    if-eqz v4, :cond_c9

    if-eqz v15, :cond_c9

    :cond_c7
    move v1, v13

    goto :goto_ca

    :cond_c9
    move v1, v12

    :goto_ca
    if-nez v14, :cond_dd

    if-nez v4, :cond_dd

    .line 825
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x3e8

    .line 827
    invoke-virtual {v8, v2, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 826
    invoke-virtual {v8, v2, v9, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_dd

    move v12, v13

    :cond_dd
    if-nez v1, :cond_112

    if-nez v12, :cond_112

    .line 830
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 831
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 832
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 833
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 835
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    move-object v2, v7

    move-object v4, v5

    move-object/from16 v5, p2

    move/from16 v6, p6

    .line 834
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    move-object v0, v7

    goto :goto_112

    :cond_104
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    .line 840
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_112
    :goto_112
    move-object v7, v0

    if-eqz v11, :cond_127

    .line 846
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 847
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    move-object v2, v7

    move-object v4, v11

    move-object/from16 v5, p2

    move/from16 v6, p6

    .line 846
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    :cond_127
    return-object v7
.end method

.method public queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    move/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 858
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 860
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_20

    .line 863
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 865
    :cond_20
    invoke-virtual {p0, v0, v10, v7, v9}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 868
    :cond_25
    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v7, v2, :cond_46

    .line 871
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 872
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    move v11, v0

    goto :goto_47

    :cond_46
    move v11, v7

    :goto_47
    if-eqz v1, :cond_64

    .line 876
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 877
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v7, v11

    .line 876
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 880
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 882
    :cond_5f
    invoke-virtual {p0, v0, v10, v11, v9}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 885
    :cond_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final querySkipCurrentProfileIntents(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object v0, p1

    if-eqz v0, :cond_2b

    .line 2362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_2b

    .line 2364
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 2365
    invoke-virtual {v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_28

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    move/from16 v10, p6

    .line 2368
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfo(Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JI)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 2371
    iget-object v0, v3, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 5383
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5384
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5385
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 5386
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move v5, p1

    move v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 5387
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_29
    if-ltz p1, :cond_59

    .line 5388
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 5389
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5390
    new-instance v4, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x4

    move-object v1, p0

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_56

    .line 5396
    :cond_50
    invoke-interface {v7, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5397
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_56
    add-int/lit8 p1, p1, -0x1

    goto :goto_29

    .line 5399
    :cond_59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_62

    .line 5400
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5402
    :cond_62
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6b

    .line 5403
    invoke-interface {p3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6b
    return-void
.end method

.method public resolveComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 475
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 15

    .line 5300
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const-string/jumbo v0, "media"

    .line 5302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    move p4, v2

    .line 5306
    :cond_1b
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 5307
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    .line 5312
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq p4, v4, :cond_41

    .line 5313
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v5, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 5314
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 5316
    invoke-interface {v4, p5, v0, p4, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v4

    goto :goto_42

    :cond_41
    move v4, v2

    :goto_42
    if-nez v4, :cond_73

    .line 5322
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 5323
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    .line 5325
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 5326
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v4

    if-eqz v4, :cond_65

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p1, p4, :cond_65

    goto :goto_66

    :cond_65
    move v2, v3

    :goto_66
    if-eqz v2, :cond_73

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "resolveContentProvider"

    move-object v3, p0

    move v4, p5

    move v5, p4

    .line 5333
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    :cond_73
    if-nez v0, :cond_76

    return-object v1

    .line 5341
    :cond_76
    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5343
    invoke-static {v4, v0, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result p1

    if-nez p1, :cond_83

    return-object v1

    .line 5346
    :cond_83
    new-instance v6, Landroid/content/ComponentName;

    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p2, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v6, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    move-object v3, p0

    move v5, p5

    move v8, p4

    .line 5348
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_97

    return-object v1

    :cond_97
    return-object v0
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2

    .line 2454
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2455
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2457
    :cond_b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    .line 2528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2529
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 14

    .line 2463
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object p1, v0

    .line 2467
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 2468
    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 2469
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_19

    goto/16 :goto_b4

    .line 2475
    :cond_19
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_60

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_60

    if-eqz v1, :cond_60

    .line 2478
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 2479
    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2480
    invoke-virtual {p0, p4, p4}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_61

    .line 2482
    array-length v5, p4

    move v6, v4

    :goto_40
    if-ge v6, v5, :cond_61

    aget-object v7, p4, v6

    .line 2483
    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 2484
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_5d

    .line 2486
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object v7

    aget-wide v7, v7, v8

    .line 2487
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/util/LongSparseLongArray;->append(JJ)V

    :cond_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_60
    move-object v1, v3

    :cond_61
    if-eqz v1, :cond_6a

    .line 2494
    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->size()I

    move-result p0

    if-gtz p0, :cond_6a

    return-object p1

    .line 2500
    :cond_6a
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result p0

    :goto_6e
    if-ge v4, p0, :cond_ad

    .line 2502
    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    if-eqz v1, :cond_83

    .line 2504
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v5

    .line 2503
    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v2

    if-gez v2, :cond_83

    goto :goto_aa

    .line 2507
    :cond_83
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, p2, v7

    if-eqz v2, :cond_9a

    cmp-long v2, v5, p2

    if-nez v2, :cond_aa

    .line 2510
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9a
    if-nez v3, :cond_9d

    goto :goto_a9

    .line 2515
    :cond_9d
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_aa

    :goto_a9
    move-object v3, p4

    :cond_aa
    :goto_aa
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_ad
    if-eqz v3, :cond_b4

    .line 2521
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b4
    :goto_b4
    return-object p1
.end method

.method public final safeMode()Z
    .registers 1

    .line 472
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 13

    .line 3120
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p1

    .line 3121
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_22

    if-eqz v1, :cond_22

    .line 3122
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_22
    return v1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 3110
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .registers 14

    .line 3046
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3047
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    if-eqz p1, :cond_18

    .line 3049
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {p5, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_18

    return v1

    .line 3054
    :cond_18
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3055
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    :cond_22
    move v4, p2

    .line 3057
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2c

    move p2, v0

    goto :goto_2d

    :cond_2c
    move p2, v1

    :goto_2d
    if-nez p1, :cond_39

    if-nez p2, :cond_37

    .line 3061
    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_37
    move v1, v0

    :cond_38
    return v1

    .line 3064
    :cond_39
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_44

    return v1

    :cond_44
    if-eqz p2, :cond_78

    .line 3069
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_51

    return v0

    :cond_51
    if-eqz p3, :cond_6e

    .line 3075
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 3076
    invoke-virtual {p1, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    if-eqz p1, :cond_68

    .line 3078
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_68

    return v1

    .line 3081
    :cond_68
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 3084
    :cond_6e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isVisibleToInstantApps()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 3086
    :cond_78
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 3088
    invoke-virtual {p0, v4, p5}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p2

    if-eqz p2, :cond_89

    return v1

    :cond_89
    if-eqz p3, :cond_8c

    return v0

    .line 3097
    :cond_8c
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3098
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 3097
    invoke-virtual {p0, p5, p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 3100
    :cond_9c
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    .line 3101
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 3102
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v3, p0

    move-object v6, p1

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p0

    return p0
.end method

.method public final updateFlags(JI)J
    .registers 10

    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_1d

    .line 3179
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    .line 3181
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1c

    :cond_19
    const-wide/32 v0, 0x80000

    :goto_1c
    or-long/2addr p1, v0

    :goto_1d
    return-wide p1
.end method

.method public final updateFlagsForApplication(JI)J
    .registers 4

    .line 3194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForComponent(JI)J
    .registers 4

    .line 3201
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForPackage(JI)J
    .registers 13

    .line 3208
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const-wide/32 v3, 0x400000

    and-long v5, p1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    .line 3213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const-string v6, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    move-object v0, p0

    move v1, v2

    move v2, p3

    .line 3213
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_43

    :cond_2f
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_43

    if-eqz v0, :cond_43

    .line 3216
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3218
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_43

    or-long v0, p1, v3

    goto :goto_44

    :cond_43
    :goto_43
    move-wide v0, p1

    .line 3227
    :goto_44
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForResolve(JIIZZ)J
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 3245
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForResolve(JIIZZZ)J
    .registers 10

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p7, :cond_c

    :cond_8
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 3257
    :cond_c
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p7

    const-wide/32 v0, 0x800000

    if-eqz p7, :cond_21

    if-eqz p6, :cond_1b

    const-wide/32 p4, 0x2000000

    or-long/2addr p1, p4

    :cond_1b
    const-wide/32 p4, 0x1000000

    or-long/2addr p1, p4

    or-long/2addr p1, v0

    goto :goto_44

    :cond_21
    and-long p6, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p6, p6, v0

    const/4 p7, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_2d

    move p6, p7

    goto :goto_2e

    :cond_2d
    move p6, v0

    :goto_2e
    if-nez p5, :cond_3a

    if-eqz p6, :cond_39

    .line 3267
    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p4

    if-eqz p4, :cond_39

    goto :goto_3a

    :cond_39
    move p7, v0

    :cond_3a
    :goto_3a
    const-wide/32 p4, -0x3000001

    and-long/2addr p1, p4

    if-nez p7, :cond_44

    const-wide/32 p4, -0x800001

    and-long/2addr p1, p4

    .line 3274
    :cond_44
    :goto_44
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final use()Lcom/android/server/pm/Computer;
    .registers 2

    .line 534
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return-object p0
.end method
