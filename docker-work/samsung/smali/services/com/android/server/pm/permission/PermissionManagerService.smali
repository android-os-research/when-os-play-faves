.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;,
        Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;,
        Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

.field public mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

.field public final mLock:Ljava/lang/Object;

.field public final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$OGUGmeWUOZhChdtlRo-7uv9kXH8(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$getPackagesWithAutoRevokePolicy$0(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllUserIds(Lcom/android/server/pm/permission/PermissionManagerService;)[I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDelegatedShellPermissionsInternal(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getDelegatedShellPermissionsInternal()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetAutoRevokeExemptedInternal(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartShellPermissionIdentityDelegationInternal(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopShellPermissionIdentityDelegationInternal(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->stopShellPermissionIdentityDelegationInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 101
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->LOG_TAG:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 142
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 143
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 145
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 146
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 147
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 148
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 150
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    .line 152
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl-IA;)V

    .line 154
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 155
    const-class v1, Landroid/permission/PermissionManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 157
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;"
        }
    .end annotation

    .line 173
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 174
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const-string/jumbo v0, "permissionmgr"

    .line 179
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService;

    if-nez v1, :cond_29

    .line 181
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 182
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 183
    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "permission_checker"

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    :cond_29
    const-class p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public static killUid(IILjava/lang/String;)V
    .registers 6

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_11

    if-eqz v2, :cond_d

    .line 204
    :try_start_a
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 210
    :catch_d
    :cond_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw p0
.end method

.method public static synthetic lambda$getPackagesWithAutoRevokePolicy$0(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    .line 455
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_d

    .line 456
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 5

    .line 538
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 2

    .line 520
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 3

    .line 492
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    move v0, v2

    .line 292
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 293
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result p0

    if-nez v0, :cond_23

    if-eqz p0, :cond_1b

    goto :goto_23

    .line 296
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    return v2
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    if-eqz p1, :cond_26

    if-nez p2, :cond_5

    goto :goto_26

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 223
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_23

    if-nez v1, :cond_14

    .line 226
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 228
    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 229
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    .line 228
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result p0

    return p0

    :catchall_23
    move-exception p0

    .line 223
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    const/4 p0, -0x1

    return p0
.end method

.method public final checkUidPermission(ILjava/lang/String;)I
    .registers 5

    if-nez p2, :cond_4

    const/4 p0, -0x1

    return p0

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    .line 241
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_22

    if-nez v1, :cond_13

    .line 244
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 246
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 247
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    .line 246
    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I

    move-result p0

    return p0

    :catchall_22
    move-exception p0

    .line 241
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getAllUserIds()[I
    .registers 1

    .line 897
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p0

    return-object p0
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 445
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDelegatedShellPermissionsInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-nez p0, :cond_b

    .line 352
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 354
    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedPermissionNames()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 355
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    if-eqz v1, :cond_f

    .line 371
    monitor-exit v0

    return-object v1

    .line 373
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3c

    .line 378
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    .line 381
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_23
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    if-eqz v2, :cond_2f

    .line 384
    monitor-exit v1

    return-object v2

    .line 387
    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 389
    invoke-virtual {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    return-object v0

    :catchall_39
    move-exception p0

    .line 388
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0

    :catchall_3c
    move-exception p0

    .line 373
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v1, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 502
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 503
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 3

    .line 471
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 4

    .line 476
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSplitPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 583
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 551
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public isAutoRevokeExempted(Ljava/lang/String;I)Z
    .registers 7

    .line 305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    return v3

    .line 313
    :cond_17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 317
    :cond_1e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 321
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x61

    invoke-virtual {p0, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_3a

    const/4 p1, 0x1

    if-ne p0, p1, :cond_36

    move v3, p1

    .line 325
    :cond_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw p0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 577
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 578
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z
    .registers 3

    .line 434
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    new-instance v0, Landroid/content/AttributionSource;

    invoke-direct {v0, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result p0

    return p0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 482
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 487
    :cond_a
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public registerAttributionSource(Landroid/content/AttributionSourceState;)V
    .registers 3

    .line 428
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAttributionSourceRegistry:Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;

    new-instance v0, Landroid/content/AttributionSource;

    invoke-direct {v0, p1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->registerAttributionSource(Landroid/content/AttributionSource;)V

    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 5

    .line 545
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 2

    .line 525
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 2

    .line 497
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removePermission(Ljava/lang/String;)V

    return-void
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 3

    .line 563
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 557
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .registers 5

    .line 253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    move-result p0

    return p0
.end method

.method public final setAutoRevokeExemptedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z
    .registers 9

    .line 267
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 269
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    .line 268
    invoke-virtual {v0, v2, p3, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return v1

    .line 274
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 276
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x61

    .line 277
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    if-eqz p2, :cond_28

    move v1, v4

    .line 276
    :cond_28
    invoke-virtual {p0, v0, p3, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    .line 279
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_2f
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    throw p0
.end method

.method public final setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V
    .registers 3

    if-nez p1, :cond_6

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-eqz v0, :cond_9

    .line 360
    :cond_6
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 362
    :cond_9
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 570
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJJ)V
    .registers 15

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 404
    :try_start_10
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JJ)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    throw p0
.end method

.method public final startShellPermissionIdentityDelegationInternal(ILjava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;

    if-eqz v1, :cond_16

    .line 333
    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;->getDelegatedUid()I

    move-result v1

    if-ne v1, p1, :cond_e

    goto :goto_16

    .line 334
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Shell can delegate permissions only to one UID at a time"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_16
    :goto_16
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$ShellDelegate;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 420
    :try_start_10
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    throw p0
.end method

.method public final stopShellPermissionIdentityDelegationInternal()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 344
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->setCheckPermissionDelegateLocked(Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;)V

    .line 345
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 14

    .line 509
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .registers 4

    .line 515
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsForAllApps(III)V

    return-void
.end method
