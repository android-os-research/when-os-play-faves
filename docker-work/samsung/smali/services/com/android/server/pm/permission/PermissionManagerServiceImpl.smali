.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;,
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field public static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field public static final BACKUP_TIMEOUT_MILLIS:J

.field public static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field public static final EMPTY_INT_ARRAY:[I

.field public static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KILL_APP_REASON_GIDS_CHANGED:Ljava/lang/String; = "permission grant or revoke changed gids"

.field public static final KILL_APP_REASON_PERMISSIONS_REVOKED:Ljava/lang/String; = "permissions revoked"

.field public static final KILL_REASON_APP_OP_CHANGE:Ljava/lang/String; = "Permission related app op changed"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field public static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SKIP_KILL_APP_REASON_NOTIFICATION_TEST:Ljava/lang/String; = "skip permission revoke app kill for notification test"

.field public static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field public static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field public static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field public static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field public mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

.field public final mGlobalGids:[I

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mIsLeanback:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

.field public final mPackageGrantedPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
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

.field public final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mState:Lcom/android/server/pm/permission/DevicePermissionState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$2cuxveqoFNNjfn0dZqozdbNyjhY(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionFlagsForAllApps$2(I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2i8MJWknOO3Xzi-Dmmn7HMNkzAQ(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WgQB2l-zF1LgAskn3cy3fOfXEs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionGroupInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$getAllPermissionGroups$0(IILandroid/content/pm/PermissionGroupInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$87uNlMctQgsWrZBh5WmS50_aQuk(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeSharedUserPermissionsForLeavingPackageInternal$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2ktNJr5yCXYzfIvQJ6zFv3xeUs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeRuntimePermissionsIfGroupChangedInternal$7([ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B320amYMv9ybZX5ymc94msv1v-8(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$getGrantedPermissionsInternal$9(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BoCcOeOKE8rPpnHRO72HeFxnnkg(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissions$11(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpJUozSDEE5AXK-K6oMPW_52dtA(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$readLegacyPermissionStateTEMP$15([ILcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GQ--PghU0n7yCrMKwgb4qE7HghA(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onSystemReady$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRwNyN4nL3ZRoAjk29OQUIJMks4(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILcom/android/server/pm/PackageSetting;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$writeLegacyPermissionStateTEMP$16([ILcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QIEK0uVVr7dFNkZvGt-we8FZxec(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$resetRuntimePermissionsInternal$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rf3Wjv7UVGe9aF693BUaNb76f_k(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$queryPermissionsByGroup$1(IILandroid/content/pm/PermissionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U6dHZiKYL1sqwBzuluAdLwWnm8o(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$handleDenyLocked$6(IIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XNze7pB3dafy7gEC3ap2oaLqD94(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$8([ILjava/lang/String;ZILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YO_T-yOJ-mB-NGWYjtmCedUirFk(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionSourcePackage$12(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0JK3jT42VJvnItiTl0rY6gYjHM(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$handleDenyLocked$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$cAusQ8uHVJo298pgZGr7uWxqjj0(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$restoreDelayedRuntimePermissions$4(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0NwkmUEUGpHzNTNSuQ3JpNK-RY(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onPackageAddedInternal$17(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zk8aEC0rYgsHH8C0xI1d_p575aY(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionSourcePackage$13(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smkillUid(IILjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 8

    .line 198
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 204
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 209
    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 226
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 228
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    .line 245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 248
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 251
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 253
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 255
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 256
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 257
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 258
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 259
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 260
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 261
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 262
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 263
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 264
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 9
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

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 272
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 280
    new-instance v2, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 303
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 316
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v2, "platform_compat"

    .line 318
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 317
    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 321
    new-instance v2, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v2}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 342
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 362
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 459
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 460
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 462
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 463
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 464
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    const-string p1, "android.software.leanback"

    .line 465
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    const-string p1, "android"

    .line 467
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string p1, "android.hardware.type.automotive"

    .line 470
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    const-string/jumbo p1, "ro.android.car.carservice.package"

    const/4 p2, 0x0

    .line 472
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8d

    .line 475
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_8d
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p2, "PackageManager"

    const/16 v0, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 481
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 482
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 483
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 485
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 487
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    .line 488
    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 492
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object p1

    .line 493
    monitor-enter v1

    const/4 p2, 0x0

    .line 494
    :goto_d7
    :try_start_d7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_107

    .line 495
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 496
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, v0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_fb

    .line 498
    new-instance v3, Lcom/android/server/pm/permission/Permission;

    iget-object v4, v0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v5, "android"

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 499
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 501
    :cond_fb
    iget-object v4, v0, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v4, :cond_104

    .line 502
    iget-boolean v0, v0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    :cond_104
    add-int/lit8 p2, p2, 0x1

    goto :goto_d7

    .line 505
    :cond_107
    monitor-exit v1

    return-void

    :catchall_109
    move-exception p0

    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_d7 .. :try_end_10b} :catchall_109

    throw p0
.end method

.method public static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 4979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_f

    .line 4981
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    .line 4982
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string p2, "UID "

    .line 4984
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4985
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " requires "

    .line 4986
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4987
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2d

    const-string p0, " or "

    .line 4989
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 4990
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string p0, " to access user "

    .line 4992
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4993
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    .line 4994
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 5

    .line 4182
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4187
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    .line 4193
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 4189
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested by package "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be explicitly declared granted or not"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 5093
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 5095
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5096
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo p0, "primary_physical"

    return-object p0

    .line 5099
    :cond_19
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5102
    :cond_1e
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0
.end method

.method public static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6

    .line 5107
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 5111
    :cond_c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_16
    if-ltz v0, :cond_30

    .line 5112
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_30
    return v1
.end method

.method public static isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 7

    .line 3857
    sget-object v0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_46

    .line 3858
    sget-object v3, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    aget-object v3, v3, v2

    .line 3859
    invoke-virtual {v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3860
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v3

    if-ge v4, v3, :cond_43

    .line 3862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to old pkg "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3863
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 3862
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_46

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_46
    :goto_46
    return v1
.end method

.method public static isProfileOwner(I)Z
    .registers 4

    .line 4197
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4198
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 4201
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static killUid(IILjava/lang/String;)V
    .registers 6

    .line 525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 527
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_11

    if-eqz v2, :cond_d

    .line 530
    :try_start_a
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 536
    :catch_d
    :cond_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    throw p0
.end method

.method private synthetic lambda$getAllPermissionGroups$0(IILandroid/content/pm/PermissionGroupInfo;)Z
    .registers 4

    .line 569
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object p3, p3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getGrantedPermissionsInternal$9(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .registers 8

    .line 3078
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_a

    return v0

    .line 3082
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_30

    const p0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "140256621"

    aput-object v3, v2, v1

    .line 3084
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    .line 3083
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v0

    :cond_30
    return v1
.end method

.method public static synthetic lambda$handleDenyLocked$5(II)V
    .registers 3

    const-string/jumbo v0, "permissions revoked"

    .line 2330
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleDenyLocked$6(IIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 8

    .line 2346
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2347
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1e

    .line 2349
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 2348
    invoke-virtual {p0, p3, v0, p4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p4

    if-nez p4, :cond_1e

    move p4, v1

    goto :goto_1f

    :cond_1e
    const/4 p4, 0x0

    :goto_1f
    if-eqz p4, :cond_29

    .line 2352
    invoke-virtual {p0, p3, v0, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    const-string p0, "Permission related app op changed"

    .line 2353
    invoke-static {p2, p1, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    :cond_29
    return-void
.end method

.method private synthetic lambda$onPackageAddedInternal$17(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V
    .registers 6

    if-eqz p1, :cond_b

    .line 5374
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5375
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5376
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_b
    if-eqz p4, :cond_10

    .line 5379
    invoke-virtual {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$onSystemReady$14(I)V
    .registers 3

    .line 5030
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$queryPermissionsByGroup$1(IILandroid/content/pm/PermissionInfo;)Z
    .registers 4

    .line 667
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$readLegacyPermissionStateTEMP$15([ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 12

    .line 5174
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    .line 5176
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5177
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5178
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v2

    .line 5177
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    .line 5178
    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    goto :goto_1d

    .line 5180
    :cond_19
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 5182
    :goto_1d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5183
    :try_start_20
    array-length v3, p1

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_4f

    aget v5, p1, v4

    .line 5184
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v6

    .line 5186
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 5187
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    move-result v8

    .line 5186
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 5188
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    .line 5189
    invoke-virtual {v6}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    .line 5190
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->isMissing(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 5192
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v5

    .line 5191
    invoke-virtual {p0, v6, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 5194
    :cond_4f
    monitor-exit v2

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public static synthetic lambda$resetRuntimePermissionsInternal$3(II)V
    .registers 3

    .line 1891
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const-string/jumbo v0, "permissions revoked"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$restoreDelayedRuntimePermissions$4(ILjava/lang/Boolean;)V
    .registers 4

    .line 2093
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 2096
    :cond_7
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2097
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2098
    monitor-exit p2

    return-void

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw p0
.end method

.method private synthetic lambda$revokeRuntimePermissionsIfGroupChangedInternal$7([ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 2805
    invoke-interface/range {p7 .. p7}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2806
    array-length v13, v10

    const/4 v14, 0x0

    move v15, v14

    :goto_d
    if-ge v15, v13, :cond_96

    aget v6, v10, v15

    .line 2808
    invoke-virtual {v9, v12, v11, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_92

    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "72710897"

    aput-object v2, v1, v14

    .line 2811
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Revoking permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as the group changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2810
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2818
    :try_start_61
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v16, v5

    move/from16 v5, p6

    move-object v7, v0

    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_72} :catch_73

    goto :goto_92

    :catch_73
    move-exception v0

    .line 2822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_92
    :goto_92
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_d

    :cond_96
    return-void
.end method

.method private synthetic lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$8([ILjava/lang/String;ZILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 2856
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2857
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v13

    const/16 v0, 0x2710

    if-ge v13, v0, :cond_13

    return-void

    .line 2862
    :cond_13
    array-length v14, v10

    const/4 v15, 0x0

    move v8, v15

    :goto_16
    if-ge v8, v14, :cond_11e

    aget v6, v10, v8

    .line 2863
    invoke-virtual {v9, v12, v11, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2865
    invoke-virtual {v9, v12, v11, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_117

    const v0, 0x8034

    and-int/2addr v0, v1

    if-nez v0, :cond_117

    .line 2872
    invoke-static {v6, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const v3, 0x534e4554

    const-string v4, " due to definition change"

    const-string v5, " from package "

    const-string v7, "Revoking permission "

    const/16 v16, 0x1

    if-eqz p3, :cond_67

    new-array v2, v2, [Ljava/lang/Object;

    const-string v17, "195338390"

    aput-object v17, v2, v15

    .line 2874
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_c0

    :cond_67
    new-array v3, v2, [Ljava/lang/Object;

    const-string v17, "154505240"

    aput-object v17, v3, v15

    .line 2878
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v1

    const v15, 0x534e4554

    invoke-static {v15, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "168319670"

    const/4 v15, 0x0

    aput-object v3, v2, v15

    .line 2881
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const v0, 0x534e4554

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2885
    :goto_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "PackageManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2888
    :try_start_df
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e1} :catch_f6

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v16, v5

    move/from16 v5, p4

    move-object v15, v7

    move-object v7, v0

    move/from16 v18, v8

    move-object/from16 v8, v16

    :try_start_f0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_119

    :catch_f4
    move-exception v0

    goto :goto_fa

    :catch_f6
    move-exception v0

    move-object v15, v7

    move/from16 v18, v8

    .line 2891
    :goto_fa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_119

    :cond_117
    move/from16 v18, v8

    :goto_119
    add-int/lit8 v8, v18, 0x1

    const/4 v15, 0x0

    goto/16 :goto_16

    :cond_11e
    return-void
.end method

.method public static synthetic lambda$revokeSharedUserPermissionsForLeavingPackageInternal$10(I)V
    .registers 3

    const/4 v0, -0x1

    const-string/jumbo v1, "permission grant or revoke changed gids"

    .line 4490
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updatePermissionFlagsForAllApps$2(I[ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9

    .line 954
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_3
    invoke-virtual {p0, p5, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string p0, "PackageManager"

    .line 957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-interface {p5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 957
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    monitor-exit v0

    return-void

    :cond_2d
    const/4 p1, 0x0

    .line 962
    aget-boolean v2, p2, p1

    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlagsForAllPermissions(II)Z

    move-result p3

    or-int/2addr p3, v2

    aput-boolean p3, p2, p1

    .line 964
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_42

    .line 965
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    return-void

    :catchall_42
    move-exception p0

    .line 964
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method private synthetic lambda$updatePermissionSourcePackage$12(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11

    .line 4723
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4724
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .line 4723
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method private synthetic lambda$updatePermissionSourcePackage$13(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11

    .line 4728
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 4729
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4730
    :try_start_9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_42

    aget v4, v0, v3

    .line 4731
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_38

    const-string v5, "PackageManager"

    .line 4734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing permissions state for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4735
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4734
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 4738
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4740
    :cond_42
    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw p0
.end method

.method private synthetic lambda$updatePermissions$11(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 13

    if-ne p6, p1, :cond_3

    return-void

    .line 4646
    :cond_3
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_11

    .line 4647
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    move v2, p1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p6

    move-object v3, p4

    move-object v4, p5

    .line 4648
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    return-void
.end method

.method private synthetic lambda$writeLegacyPermissionStateTEMP$16([ILcom/android/server/pm/PackageSetting;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 5220
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 5222
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5223
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5224
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v5

    .line 5223
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v4

    .line 5224
    invoke-interface {v4}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    goto :goto_23

    .line 5226
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    .line 5228
    :goto_23
    invoke-virtual {v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->reset()V

    .line 5229
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 5231
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5232
    :try_start_2d
    array-length v7, v1

    move v8, v3

    :goto_2f
    if-ge v8, v7, :cond_ca

    aget v9, v1, v8

    .line 5233
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v10

    if-nez v10, :cond_52

    const-string v10, "PackageManager"

    .line 5235
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing user state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 5239
    :cond_52
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_60

    const/4 v11, 0x1

    .line 5240
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 5243
    :cond_60
    invoke-virtual {v10, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10

    if-nez v10, :cond_89

    const-string v10, "PackageManager"

    .line 5245
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing permission state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 5250
    :cond_89
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v11

    invoke-virtual {v4, v11, v9}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    .line 5251
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v10

    .line 5252
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v12, v3

    :goto_99
    if-ge v12, v11, :cond_c3

    .line 5254
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/permission/PermissionState;

    .line 5256
    new-instance v14, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5257
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v15

    .line 5258
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    .line 5259
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v13

    invoke-direct {v14, v15, v3, v0, v13}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 5260
    invoke-virtual {v4, v14, v9}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto :goto_99

    :cond_c3
    :goto_c3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto/16 :goto_2f

    .line 5263
    :cond_ca
    monitor-exit v6

    return-void

    :catchall_cc
    move-exception v0

    monitor-exit v6
    :try_end_ce
    .catchall {:try_start_2d .. :try_end_ce} :catchall_cc

    throw v0
.end method


# virtual methods
.method public final addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 10

    .line 2959
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2960
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_72

    .line 2963
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissionGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 2964
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_26

    const/4 v5, 0x0

    goto :goto_2a

    .line 2965
    :cond_26
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2966
    :goto_2a
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v4, :cond_6a

    if-eqz v5, :cond_37

    goto :goto_6a

    :cond_37
    const-string v5, "PackageManager"

    .line 2981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: original from "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2981
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 2968
    :cond_6a
    :goto_6a
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)V

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2998
    :cond_72
    monitor-exit v0

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw p0
.end method

.method public final addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2901
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2902
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_af

    .line 2904
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2907
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    .line 2911
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2916
    :try_start_29
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v6

    const/16 v7, 0x16

    if-le v6, v7, :cond_3e

    .line 2917
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2918
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v6

    .line 2917
    invoke-static {v4, v6}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setParsedPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)V

    :cond_3e
    const-wide/16 v6, 0x80

    .line 2927
    invoke-static {v4, v6, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    .line 2929
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v7

    if-eqz v7, :cond_55

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    goto :goto_5f

    .line 2930
    :cond_55
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 2931
    :goto_5f
    monitor-exit v5
    :try_end_60
    .catchall {:try_start_29 .. :try_end_60} :catchall_ac

    .line 2934
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7, v6, v5}, Lcom/android/server/pm/permission/Permission;->isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    .line 2936
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2937
    :try_start_69
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2938
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v9

    .line 2937
    invoke-static {v7, v6, p1, v9, v5}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2940
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 2941
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_84

    .line 2943
    :cond_7f
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 2945
    :goto_84
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 2947
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    .line 2946
    invoke-static {v4, v6}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    .line 2949
    :cond_94
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isDefinitionChanged()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 2950
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2951
    invoke-virtual {v5, v2}, Lcom/android/server/pm/permission/Permission;->setDefinitionChanged(Z)V

    .line 2953
    :cond_a4
    monitor-exit v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :catchall_a9
    move-exception p0

    monitor-exit v8
    :try_end_ab
    .catchall {:try_start_69 .. :try_end_ab} :catchall_a9

    throw p0

    :catchall_ac
    move-exception p0

    .line 2931
    :try_start_ad
    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    return-object v1
.end method

.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 8

    .line 1204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 1211
    :cond_b
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1215
    :cond_17
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_25

    .line 1216
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_25
    return v1
.end method

.method public final addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 5680
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5682
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 5683
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 5684
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5688
    :cond_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    return-void
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5

    .line 1088
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

.method public addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 3

    .line 2105
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2106
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 11

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 675
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_83

    .line 678
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1d

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    goto :goto_1d

    .line 679
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Label must be specified in permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 683
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_20
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 685
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_34

    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 687
    :goto_35
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 688
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    if-eqz v3, :cond_4d

    .line 690
    new-instance v2, Lcom/android/server/pm/permission/Permission;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v7}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_53

    .line 691
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 695
    :goto_53
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result p1

    if-eqz v3, :cond_5e

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 699
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_20 .. :try_end_5f} :catchall_80

    if-eqz p1, :cond_66

    .line 701
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    :cond_66
    return v3

    .line 692
    :cond_67
    :try_start_67
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allowed to modify non-dynamic permission "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_80
    move-exception p0

    .line 699
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_67 .. :try_end_82} :catchall_80

    throw p0

    .line 676
    :cond_83
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant apps can\'t add permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 9

    .line 2434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 2438
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid User ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 2443
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    .line 2435
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 2414
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 2418
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PackageManager"

    if-nez v0, :cond_2a

    .line 2419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid User ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2a
    if-nez p1, :cond_41

    .line 2424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package name "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_41
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 2427
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p0

    return p0

    .line 2415
    :cond_4c
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)Z"
        }
    .end annotation

    .line 2456
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getContainerCriticalApps()Ljava/util/List;

    move-result-object v0

    .line 2457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const-string v5, "PackageManager"

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_39

    if-eqz p1, :cond_39

    if-eqz v0, :cond_39

    .line 2458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_39

    .line 2459
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is container critical application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_39
    if-eqz p3, :cond_63

    const/4 v0, 0x1

    if-eq p3, v0, :cond_56

    const/4 v0, 0x2

    if-eq p3, v0, :cond_56

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Permission State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_56
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    .line 2468
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z

    move-result v0

    return v0

    :cond_63
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    .line 2473
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z

    move-result v0

    return v0
.end method

.method public backupRuntimePermissions(I)[B
    .registers 6

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    .line 2038
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2039
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2040
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2041
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2040
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2044
    :try_start_1e
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_28} :catch_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1e .. :try_end_28} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create permission backup for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5001
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/Permission;

    .line 5002
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/Permission;->calculateFootprint(Lcom/android/server/pm/permission/Permission;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    return v0
.end method

.method public final canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 8

    .line 5388
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5389
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 5393
    :cond_a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    const-string v2, " to "

    const-string v3, "Unable to update from "

    const-string v4, "PackageManager"

    if-nez v1, :cond_3c

    .line 5394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5395
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package not in system partition"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5394
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5399
    :cond_3c
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_6e

    .line 5400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5401
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package still exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5400
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6e
    const/4 p0, 0x1

    return p0
.end method

.method public final checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .registers 2

    .line 4972
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

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

.method public final checkCrossUserPermission(IIIZ)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p3, p2, :cond_4

    return v0

    :cond_4
    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_24

    if-nez p1, :cond_b

    goto :goto_24

    :cond_b
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_14

    .line 4964
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4967
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 4968
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :cond_24
    :goto_24
    return v0
.end method

.method public final checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .registers 9

    .line 1227
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    const-string p0, "PackageManager"

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such permissions: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    monitor-exit v0

    return v2

    .line 1233
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    .line 1235
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v1

    if-eqz v1, :cond_37

    move v1, v5

    goto :goto_38

    :cond_37
    move v1, v2

    .line 1236
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_85

    .line 1238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1239
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1240
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_60

    const p0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "186404356"

    aput-object v3, v1, v2

    .line 1241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    const/4 v0, 0x2

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v2

    :cond_60
    if-eqz v1, :cond_84

    .line 1245
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6d

    goto :goto_84

    .line 1248
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    :goto_84
    return v5

    :catchall_85
    move-exception p0

    .line 1236
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public final checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I
    .registers 5

    if-eqz p2, :cond_27

    .line 3735
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isRequestLegacyExternalStorage()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 3736
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p0

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 3737
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 3738
    :cond_20
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_27
    return-object p4
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 975
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    .line 979
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    .line 983
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .registers 9

    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    if-nez p2, :cond_17

    .line 989
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_17

    .line 994
    :cond_e
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_20

    return v1

    .line 990
    :cond_17
    :goto_17
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result p2

    if-eqz p2, :cond_20

    return v1

    .line 999
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p2

    invoke-static {p4, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 1000
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    move p2, v0

    .line 1002
    :goto_34
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1003
    :try_start_37
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    if-nez v3, :cond_61

    const-string p0, "PackageManager"

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    monitor-exit v2

    return v1

    .line 1010
    :cond_61
    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 1011
    monitor-exit v2

    return v0

    .line 1014
    :cond_69
    sget-object p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7b

    .line 1015
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 1017
    monitor-exit v2

    return v0

    .line 1019
    :cond_7b
    monitor-exit v2

    return v1

    :catchall_7d
    move-exception p0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_37 .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public final checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z
    .registers 10

    .line 3872
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3875
    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    .line 3876
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    .line 3879
    :cond_13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 3882
    :cond_1a
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 3883
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 3886
    :cond_27
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p3

    .line 3887
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v2

    .line 3889
    invoke-virtual {v2, v0}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3890
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    return v1

    .line 3894
    :cond_3a
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_42

    return v5

    .line 3899
    :cond_42
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p2

    if-eqz p2, :cond_4d

    return v1

    .line 3911
    :cond_4d
    iget-boolean p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-nez p2, :cond_cb

    if-eqz v3, :cond_5e

    .line 3913
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result p2

    if-nez p2, :cond_5e

    move v5, v1

    :cond_5e
    if-nez v5, :cond_cb

    const-string p2, "PackageManager"

    .line 3917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Privileged permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3918
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") not in privapp-permissions allowlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3917
    invoke-static {p2, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    sget-boolean p2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz p2, :cond_cb

    .line 3921
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3922
    :try_start_96
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v2, :cond_a1

    .line 3923
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 3925
    :cond_a1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3927
    monitor-exit p2

    goto :goto_cb

    :catchall_c8
    move-exception p0

    monitor-exit p2
    :try_end_ca
    .catchall {:try_start_96 .. :try_end_ca} :catchall_c8

    throw p0

    .line 3931
    :cond_cb
    :goto_cb
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public final checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1027
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x1

    if-eqz p3, :cond_1b

    .line 1032
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result p0

    if-eqz p0, :cond_1a

    move v0, p1

    :cond_1a
    return v0

    :cond_1b
    return p1
.end method

.method public final checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1082
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_12

    .line 1083
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public checkUidPermission(ILjava/lang/String;)I
    .registers 5

    .line 1041
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 1046
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1047
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1060
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1061
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result p0

    return p0

    .line 1064
    :cond_c
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1065
    :try_start_f
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1066
    monitor-exit p1

    return v0

    .line 1069
    :cond_17
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_29

    .line 1071
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1072
    monitor-exit p1

    return v0

    .line 1074
    :cond_29
    monitor-exit p1

    const/4 p0, -0x1

    return p0

    :catchall_2c
    move-exception p0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 6

    .line 2129
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2130
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2131
    monitor-exit v0

    return-void

    .line 2133
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2134
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    .line 2135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p0, :cond_28

    .line 2137
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    .line 2134
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 510
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_b

    return-void

    .line 514
    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class p2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 6

    if-ltz p2, :cond_31

    if-eqz p4, :cond_a

    const-string/jumbo p4, "no_debugging_features"

    .line 4923
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 4925
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 4926
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCrossUserPermission(IIIZ)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 4930
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_22

    if-nez p2, :cond_22

    return-void

    .line 4933
    :cond_22
    invoke-static {p1, p2, p5, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 4935
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4920
    :cond_31
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

.method public final enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 6

    .line 4897
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 4899
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 4901
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_47

    .line 4903
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :goto_47
    return-void
.end method

.method public final enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 5

    .line 4886
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 4888
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    .line 4890
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

.method public final enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5011
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 5012
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I

    move-result p0

    .line 5013
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x8000

    if-gt p0, p1, :cond_17

    goto :goto_1f

    .line 5014
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission tree size cap exceeded"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final enforceShellRestriction(Ljava/lang/String;II)V
    .registers 5

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_4b

    if-ltz p3, :cond_26

    .line 4945
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_26

    .line 4946
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shell does not have permission to access user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    if-gez p3, :cond_4b

    .line 4949
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to check shell permission for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    .line 4950
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4949
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 5749
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5750
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 5751
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getAllAppOpPermissionPackages()Landroid/util/ArrayMap;

    move-result-object p0

    .line 5752
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 5753
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2c

    .line 5755
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5756
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 5757
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 5759
    :cond_2c
    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception p0

    .line 5760
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 561
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 563
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    int-to-long v5, p1

    .line 564
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 566
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_46

    .line 568
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 569
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1

    :catchall_46
    move-exception p0

    .line 566
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 5873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5875
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5876
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5877
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v3

    if-ne v3, p1, :cond_12

    const/4 v3, 0x0

    .line 5878
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 5881
    :cond_2d
    monitor-exit v1

    return-object v0

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 5890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5892
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5893
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5894
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getProtectionFlags()I

    move-result v3

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_12

    const/4 v3, 0x0

    .line 5895
    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 5898
    :cond_2e
    monitor-exit v1

    return-object v0

    :catchall_30
    move-exception p0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final getAllUserIds()[I
    .registers 1

    .line 3600
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object p0

    return-object p0
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 8
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

    .line 1107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 1108
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    int-to-float v0, p3

    const/4 v1, 0x0

    .line 1112
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1114
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_2a

    .line 1115
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowlistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_33

    return-object v1

    .line 1125
    :cond_33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1126
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_44

    return-object v1

    .line 1129
    :cond_44
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    .line 1132
    :goto_51
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1133
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_66

    if-eqz v1, :cond_5e

    goto :goto_66

    .line 1137
    :cond_5e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    and-int/lit8 v2, p2, 0x6

    if-eqz v2, :cond_77

    if-nez v1, :cond_77

    if-eqz v0, :cond_6f

    goto :goto_77

    .line 1144
    :cond_6f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1150
    :cond_77
    :goto_77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1152
    :try_start_7b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object p0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_83

    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_83
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    throw p0
.end method

.method public final getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_2e

    const-string p0, "PackageManager"

    .line 1164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing permissions state for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    monitor-exit v0

    return-object v1

    :cond_2e
    and-int/lit8 p3, p2, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_36

    const/16 p3, 0x1000

    goto :goto_37

    :cond_36
    move p3, v2

    :goto_37
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_3d

    or-int/lit16 p3, p3, 0x2000

    :cond_3d
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_43

    or-int/lit16 p3, p3, 0x800

    .line 1182
    :cond_43
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    :goto_4b
    if-ge v2, p2, :cond_6b

    .line 1184
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1186
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, p3

    if-eqz v4, :cond_68

    if-nez v1, :cond_65

    .line 1189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    :cond_65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1195
    :cond_6b
    monitor-exit v0

    return-object v1

    :catchall_6d
    move-exception p0

    .line 1196
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final getAppOp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I
    .registers 6

    .line 2361
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_16

    .line 2362
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    goto :goto_17

    :cond_16
    move p0, v0

    :goto_17
    if-eq p0, v0, :cond_1a

    return p0

    .line 2366
    :cond_1a
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid appOp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for package "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "permissionName"

    .line 5838
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5839
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    if-nez p0, :cond_f

    .line 546
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_f
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 548
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 549
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getGidsForUid(I)[I
    .registers 6

    .line 5796
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5797
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 5798
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5799
    :try_start_b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_33

    const-string p0, "PackageManager"

    .line 5801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing permissions state for app ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and user ID "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    monitor-exit v1

    return-object p0

    .line 5805
    :cond_33
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->computeGids([II)[I

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_3b
    move-exception p0

    .line 5806
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    .line 5822
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    .line 5823
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5824
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3058
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_d

    .line 3060
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 3063
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3064
    :try_start_10
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string p0, "PackageManager"

    .line 3066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing permissions state for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3069
    :cond_3a
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 3070
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3075
    :cond_4a
    new-instance p1, Landroid/util/ArraySet;

    .line 3076
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 3077
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3089
    monitor-exit v1

    return-object p1

    :catchall_5d
    move-exception p0

    .line 3091
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_10 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5766
    new-instance v2, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v2}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 5767
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5768
    :try_start_c
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v4

    .line 5769
    array-length v5, v4

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v5, :cond_70

    aget v8, v4, v7

    .line 5770
    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    if-nez v9, :cond_3d

    const-string v9, "PackageManager"

    .line 5772
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 5777
    :cond_3d
    invoke-virtual {v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 5778
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_46
    if-ge v11, v10, :cond_6d

    .line 5780
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    .line 5782
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5783
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    .line 5784
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    .line 5785
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v6

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v12

    invoke-direct {v13, v14, v15, v6, v12}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 5786
    invoke-virtual {v2, v13, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    :cond_6d
    :goto_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 5789
    :cond_70
    monitor-exit v3

    return-object v2

    :catchall_72
    move-exception v0

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_c .. :try_end_74} :catchall_72

    throw v0
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 5735
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5736
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5737
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 5738
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 5739
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v6

    .line 5740
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 5741
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 5743
    :cond_37
    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception p0

    .line 5744
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    .line 2640
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getPackagesToUpdate(Ljava/lang/String;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_12

    .line 2240
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2241
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_21

    .line 2243
    :cond_12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2244
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    :goto_21
    return-object p1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 730
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 731
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 13

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string/jumbo v0, "getPermissionFlags"

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    .line 741
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_24

    return v1

    .line 750
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result p3

    if-eqz p3, :cond_2d

    return v1

    .line 754
    :cond_2d
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 755
    :try_start_30
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 756
    monitor-exit p3

    return v1

    .line 759
    :cond_3a
    invoke-virtual {p0, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_60

    const-string p0, "PackageManager"

    .line 761
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing permissions state for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    monitor-exit p3

    return v1

    .line 765
    :cond_60
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result p0

    monitor-exit p3

    return p0

    :catchall_66
    move-exception p0

    .line 766
    monitor-exit p3
    :try_end_68
    .catchall {:try_start_30 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .registers 5

    const-string/jumbo v0, "permissionName"

    .line 5830
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    .line 5831
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5832
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGidsInternal(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionGidsInternal(Ljava/lang/String;I)[I
    .registers 4

    .line 3096
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3097
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-nez p0, :cond_f

    .line 3099
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0

    return-object p0

    .line 3101
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 3102
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 9

    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 584
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 587
    monitor-exit v1

    return-object v2

    :cond_1b
    int-to-long v4, p2

    .line 589
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p2

    .line 591
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_49

    .line 593
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 594
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_48

    const p0, 0x534e4554

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "186113473"

    aput-object v3, p2, v1

    const/4 v1, 0x1

    .line 596
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_48
    return-object p2

    :catchall_49
    move-exception p0

    .line 591
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 8

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 611
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    .line 612
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result p2

    .line 615
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_25

    .line 618
    monitor-exit v1

    return-object v2

    .line 620
    :cond_25
    invoke-virtual {v3, p3, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object p2

    .line 621
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_52

    .line 623
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 624
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_51

    const p0, 0x534e4554

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "183122164"

    aput-object v1, p2, p3

    const/4 p3, 0x1

    .line 626
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x2

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v2

    :cond_51
    return-object p2

    :catchall_52
    move-exception p0

    .line 621
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public final getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I
    .registers 4

    .line 633
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p2, 0x2710

    if-eqz p0, :cond_19

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_19

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_11

    goto :goto_19

    :cond_11
    if-nez p1, :cond_14

    return p2

    .line 642
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_19
    :goto_19
    return p2
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 3

    .line 5864
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5865
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 5866
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 2144
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_e

    .line 2145
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2146
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2147
    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 2148
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 2376
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2377
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p2

    .line 2382
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2383
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2384
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2385
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2386
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_33
    return-object p1
.end method

.method public final getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2

    .line 4177
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4178
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public final getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;
    .registers 2

    .line 4168
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_9

    .line 4170
    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 4172
    :cond_9
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0
.end method

.method public final getSplitPermissionInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3852
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

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

    .line 3847
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5151
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 5155
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5145
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public final getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5138
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 6064
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 6069
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6070
    :try_start_b
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p1

    if-eqz p1, :cond_6c

    const/4 v2, 0x0

    .line 6075
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 6076
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 6077
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 6082
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 6085
    monitor-exit v1

    return-void

    .line 6083
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot grant permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6078
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has not requested permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6072
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown permission: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_83
    move-exception p0

    .line 6085
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_b .. :try_end_85} :catchall_83

    throw p0

    .line 6066
    :cond_86
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

.method public final grantLicensePermissionForMDM([ILjava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2502
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2503
    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_3d

    aget v4, p1, v3

    .line 2504
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v4

    .line 2505
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    .line 2506
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    .line 2507
    invoke-virtual {v4, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 2508
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2512
    :cond_3d
    monitor-exit v1

    return-object v0

    :catchall_3f
    move-exception p0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 4238
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v2, 0x17

    if-lt v1, v2, :cond_12

    move v14, v12

    goto :goto_13

    :cond_12
    move v14, v13

    .line 4241
    :goto_13
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v15

    .line 4243
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 4245
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_29
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 4247
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4248
    :try_start_39
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 4249
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v4

    if-eqz v4, :cond_67

    :cond_4d
    if-eqz v15, :cond_55

    .line 4250
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v4

    if-eqz v4, :cond_67

    :cond_55
    if-nez v14, :cond_5d

    .line 4251
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v2

    if-nez v2, :cond_67

    :cond_5d
    if-eqz v10, :cond_65

    .line 4252
    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_65
    move v2, v12

    goto :goto_68

    :cond_67
    move v2, v13

    .line 4253
    :goto_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_ac

    if-eqz v2, :cond_a6

    .line 4255
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v9, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-eqz v14, :cond_89

    and-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_a6

    .line 4260
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move v5, v9

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_a6

    :cond_89
    and-int/lit8 v1, v1, 0x48

    if-eqz v1, :cond_a6

    .line 4267
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move v6, v9

    move-object/from16 v17, v7

    move/from16 v7, p3

    move/from16 v18, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_a8

    :cond_a6
    :goto_a6
    move/from16 v18, v9

    :goto_a8
    move/from16 v9, v18

    goto/16 :goto_29

    :catchall_ac
    move-exception v0

    .line 4253
    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    :cond_af
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 1359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1361
    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v3, v0

    .line 1364
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    .line 1377
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v0, "PackageManager"

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1382
    :cond_2b
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v3, "grantRuntimePermission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    .line 1386
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1391
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1392
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v1, :cond_2e2

    if-nez v2, :cond_55

    goto/16 :goto_2e2

    .line 1397
    :cond_55
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v1, v9, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-nez v3, :cond_2cb

    .line 1403
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1404
    :try_start_60
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_2b1

    .line 1408
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v5

    .line 1409
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v4

    .line 1410
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_2c8

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_7d

    .line 1412
    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    move v5, v3

    goto :goto_7e

    :cond_7d
    move v5, v6

    :goto_7e
    if-eqz v4, :cond_95

    .line 1413
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1415
    invoke-static {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1416
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 1414
    invoke-static {v4, v9, v1, v12, v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v4

    .line 1417
    invoke-virtual {v4}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v4

    if-eqz v4, :cond_95

    goto :goto_96

    :cond_95
    move v3, v6

    .line 1421
    :goto_96
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1422
    :try_start_99
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_297

    .line 1427
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v9

    .line 1428
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v12

    if-nez v9, :cond_ff

    .line 1429
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v13

    if-eqz v13, :cond_b2

    goto :goto_ff

    .line 1431
    :cond_b2
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v13

    if-eqz v13, :cond_d7

    if-eqz v5, :cond_bb

    goto :goto_ff

    .line 1433
    :cond_bb
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_d7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a changeable permission type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_ff
    :goto_ff
    invoke-virtual {v0, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_129

    const-string v0, "PackageManager"

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing permissions state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and user "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    monitor-exit v4

    return-void

    .line 1447
    :cond_129
    invoke-virtual {v5, v8}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15d

    .line 1448
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13a

    goto :goto_15d

    .line 1449
    :cond_13a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not requested permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :cond_15d
    :goto_15d
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v13

    const/16 v14, 0x17

    if-ge v13, v14, :cond_16d

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_16d

    .line 1458
    monitor-exit v4

    return-void

    .line 1461
    :cond_16d
    invoke-virtual {v5, v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v13

    and-int/lit8 v15, v13, 0x10

    if-eqz v15, :cond_195

    const-string v0, "PackageManager"

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    monitor-exit v4

    return-void

    :cond_195
    if-nez p3, :cond_1bb

    and-int/lit8 v15, v13, 0x4

    if-eqz v15, :cond_1bb

    const-string v0, "PackageManager"

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant policy fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    monitor-exit v4

    return-void

    .line 1473
    :cond_1bb
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v15

    if-eqz v15, :cond_1e5

    and-int/lit16 v13, v13, 0x3800

    if-nez v13, :cond_1e5

    const-string v0, "PackageManager"

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    monitor-exit v4

    return-void

    .line 1480
    :cond_1e5
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v13

    if-eqz v13, :cond_20d

    if-nez v3, :cond_20d

    const-string v0, "PackageManager"

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant soft restricted permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    monitor-exit v4

    return-void

    .line 1486
    :cond_20d
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v3

    if-nez v3, :cond_261

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v3

    if-eqz v3, :cond_21a

    goto :goto_261

    .line 1495
    :cond_21a
    invoke-interface {v2, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_24a

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v2

    if-eqz v2, :cond_22b

    goto :goto_24a

    .line 1496
    :cond_22b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant non-ephemeral permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_24a
    :goto_24a
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v2

    if-ge v2, v14, :cond_259

    const-string v0, "PackageManager"

    const-string v1, "Cannot grant runtime permission to a legacy app"

    .line 1501
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    monitor-exit v4

    return-void

    .line 1505
    :cond_259
    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-nez v2, :cond_269

    .line 1506
    monitor-exit v4

    return-void

    .line 1491
    :cond_261
    :goto_261
    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-nez v2, :cond_269

    .line 1492
    monitor-exit v4

    return-void

    .line 1509
    :cond_269
    monitor-exit v4
    :try_end_26a
    .catchall {:try_start_99 .. :try_end_26a} :catchall_2ae

    if-eqz v9, :cond_271

    const/16 v2, 0x4db

    .line 1512
    invoke-virtual {v0, v2, v8, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_271
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v2

    invoke-static {v10, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-eqz v11, :cond_291

    if-eqz v9, :cond_281

    .line 1519
    invoke-virtual {v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_284

    .line 1521
    :cond_281
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    :goto_284
    if-eqz v12, :cond_291

    .line 1524
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v11, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    :cond_291
    if-eqz v9, :cond_296

    .line 1529
    invoke-virtual {v0, v7, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_296
    return-void

    .line 1424
    :cond_297
    :try_start_297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2ae
    move-exception v0

    .line 1509
    monitor-exit v4
    :try_end_2b0
    .catchall {:try_start_297 .. :try_end_2b0} :catchall_2ae

    throw v0

    .line 1406
    :cond_2b1
    :try_start_2b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2c8
    move-exception v0

    .line 1410
    monitor-exit v3
    :try_end_2ca
    .catchall {:try_start_2b1 .. :try_end_2ca} :catchall_2c8

    throw v0

    .line 1398
    :cond_2cb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e2
    :goto_2e2
    const-string v0, "PackageManager"

    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleAppIdMigration(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 16

    .line 5571
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5572
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5574
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_95

    .line 5581
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5582
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p1

    array-length v3, p1

    move v4, v2

    :goto_1a
    if-ge v4, v3, :cond_90

    aget v5, p1, v4

    .line 5583
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v5

    .line 5586
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    if-nez v6, :cond_2b

    goto :goto_8d

    .line 5592
    :cond_2b
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    if-nez v7, :cond_3d

    .line 5595
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    goto :goto_8a

    .line 5597
    :cond_3d
    invoke-virtual {v6}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v6

    .line 5598
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_46
    if-ge v9, v8, :cond_8a

    .line 5600
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionState;

    .line 5602
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v11

    if-eqz v11, :cond_78

    .line 5606
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v12

    invoke-virtual {p0, v12, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;

    move-result-object v11

    .line 5607
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    .line 5608
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 5607
    invoke-virtual {v7, v10, v12, v11}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    goto :goto_87

    .line 5611
    :cond_78
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v11

    .line 5612
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v12

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v10

    .line 5611
    invoke-virtual {v7, v11, v12, v10}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    :goto_87
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 5618
    :cond_8a
    :goto_8a
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    :goto_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 5620
    :cond_90
    monitor-exit v1

    goto :goto_d3

    :catchall_92
    move-exception p0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_14 .. :try_end_94} :catchall_92

    throw p0

    .line 5630
    :cond_95
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5631
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object v1

    .line 5633
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5634
    :try_start_9e
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_a3
    if-ge v2, v5, :cond_d2

    aget v6, v4, v2

    .line 5636
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v7

    if-nez v7, :cond_b0

    goto :goto_cf

    .line 5640
    :cond_b0
    invoke-virtual {v7, p2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    if-nez v8, :cond_b7

    goto :goto_cf

    .line 5646
    :cond_b7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-virtual {v7, v9, v8}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    .line 5650
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 5652
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 5651
    invoke-virtual {p0, p2, v7, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_cf

    .line 5654
    :cond_cc
    invoke-virtual {p0, p1, p2, v1, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/List;I)V

    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 5658
    :cond_d2
    monitor-exit v3

    :goto_d3
    return-void

    :catchall_d4
    move-exception p0

    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_9e .. :try_end_d6} :catchall_d4

    throw p0
.end method

.method public final handleDenyLocked(ILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;Z)Z
    .registers 15

    .line 2315
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 2317
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    const/4 v7, 0x1

    const/16 v1, 0x16

    if-le v0, v1, :cond_59

    .line 2318
    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2319
    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v7

    .line 2322
    :cond_1e
    invoke-virtual {p5}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4c

    .line 2323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to deny the permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 2323
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4c
    if-eqz p6, :cond_70

    .line 2330
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {p2, v4, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_70

    :cond_59
    const/16 p6, 0x8

    .line 2339
    invoke-virtual {p3, p5, p6, p6}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2343
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    move-result v5

    .line 2345
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;

    move-object v1, p4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_70
    :goto_70
    return v7
.end method

.method public final handleGrantLocked(ILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)Z
    .registers 16

    .line 2273
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2275
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v1, 0x16

    if-le v0, v1, :cond_6b

    .line 2276
    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2277
    invoke-virtual {p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v8

    .line 2281
    :cond_1f
    invoke-virtual {p3, p5}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result p3

    .line 2283
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    move-result v4

    .line 2285
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setUidMode(IIILjava/lang/String;ZZ)V

    if-nez p3, :cond_57

    .line 2288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to grant the permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    .line 2288
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 2293
    :cond_57
    invoke-virtual {p5}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result p3

    if-eqz p3, :cond_7f

    .line 2294
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 2295
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    .line 2294
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    goto :goto_7f

    .line 2300
    :cond_6b
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)I

    move-result v4

    const/16 p4, 0x8

    .line 2304
    invoke-virtual {p3, p5, p4, v9}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2308
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setUidMode(IIILjava/lang/String;ZZ)V

    :cond_7f
    :goto_7f
    return v8
.end method

.method public final inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")V"
        }
    .end annotation

    .line 3687
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    .line 3691
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v1, p4, :cond_2d

    .line 3693
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3694
    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-nez v2, :cond_1c

    move v3, v0

    .line 3700
    :cond_1c
    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v3, v2

    const/4 v2, 0x1

    goto :goto_2a

    :cond_23
    if-nez v2, :cond_2a

    .line 3703
    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2d
    if-eqz v2, :cond_38

    .line 3714
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3718
    :cond_38
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    invoke-virtual {p3, p0, v3, v3}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    return-void
.end method

.method public final isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z
    .registers 5

    .line 5409
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result p0

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    and-int/lit8 v0, p0, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1a

    .line 5417
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1

    :cond_1c
    const v0, 0x10048

    and-int/2addr p0, v0

    if-eqz p0, :cond_23

    return v2

    .line 5421
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result p0

    return p0
.end method

.method public final isInSystemConfigPrivAppDenyPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 3975
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 3977
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3978
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_44

    .line 3979
    :cond_13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3980
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_44

    .line 3981
    :cond_22
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3982
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_44

    :cond_31
    if-eqz p3, :cond_3c

    .line 3985
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3984
    invoke-virtual {p0, p3, p1}, Lcom/android/server/SystemConfig;->getApexPrivAppDenyPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_44

    .line 3987
    :cond_3c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 3989
    :goto_44
    invoke-static {p0, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isInSystemConfigPrivAppPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 3936
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 3938
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3939
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto/16 :goto_8b

    .line 3940
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3941
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_8b

    .line 3942
    :cond_23
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3943
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_8b

    :cond_32
    if-eqz p3, :cond_83

    .line 3945
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    .line 3946
    invoke-virtual {v0, p3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3949
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3948
    invoke-virtual {p0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 3951
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3950
    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemConfig;->getApexPrivAppPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz v1, :cond_8b

    .line 3955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an APK in APEX, but has permission allowlist on the system image. Please bundle the allowlist in the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " APEX instead."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_81

    .line 3959
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 3960
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p0, p1

    goto :goto_8b

    :cond_81
    move-object p0, v1

    goto :goto_8b

    .line 3968
    :cond_83
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 3970
    :cond_8b
    :goto_8b
    invoke-static {p0, p2}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z
    .registers 5

    .line 4767
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4768
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4767
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 4769
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4770
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4771
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object p0

    .line 4772
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 4773
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4774
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v2

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    if-ne v2, v1, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 2002
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_1f

    .line 2003
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    return v1

    .line 2012
    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2013
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_34

    return v1

    .line 2017
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2019
    :try_start_38
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_45

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_41

    const/4 v1, 0x1

    .line 2022
    :cond_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_45
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2023
    throw p0
.end method

.method public final isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z
    .registers 9

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    .line 1913
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_40

    .line 1915
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1916
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge p2, v5, :cond_3d

    .line 1917
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1918
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1919
    :try_start_25
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1920
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result p0

    if-nez p0, :cond_38

    const/4 v2, 0x1

    :cond_38
    monitor-exit v5

    return v2

    :catchall_3a
    move-exception p0

    .line 1922
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    throw p0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_40
    return v2
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "packageName"

    .line 5812
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z
    .registers 7

    .line 4208
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 4214
    :cond_a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_13

    return v0

    .line 4219
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4220
    :try_start_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-nez p0, :cond_40

    const-string p0, "PackageManager"

    .line 4222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing permissions state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    monitor-exit v1

    return v0

    .line 4226
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionsReviewRequired()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_46
    move-exception p0

    .line 4227
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final isPkgLicenseActivated(Ljava/lang/String;)Z
    .registers 2

    .line 2621
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-eqz p0, :cond_21

    const-string p0, "enterprise_license_policy"

    .line 2623
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 2622
    invoke-static {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 2625
    :try_start_10
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_14} :catch_18

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :catch_18
    move-exception p0

    .line 2631
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 2629
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public final isPossibleToModify(IILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;)Z
    .registers 7

    .line 2251
    invoke-virtual {p4, p5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result p0

    const/16 p4, 0x10

    and-int/2addr p0, p4

    if-eqz p0, :cond_4e

    .line 2256
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getContainerCriticalApps()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 2258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 2259
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    if-ne p1, p4, :cond_23

    const/4 p0, 0x0

    return p0

    .line 2263
    :cond_23
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot modify system fixed permission "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " for package "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2265
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    const/4 p0, 0x1

    return p0
.end method

.method public final logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5127
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 5128
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 p1, 0x4d9

    .line 5129
    invoke-virtual {v0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 5131
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final mayManageRolePermission(I)Z
    .registers 2

    .line 1691
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1692
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1697
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1698
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/permission/PermissionState;",
            "Lcom/android/server/pm/permission/PermissionState;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5447
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v0

    .line 5448
    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result p3

    .line 5450
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    .line 5451
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result v2

    or-int v3, v0, v1

    const v4, 0x80003

    and-int/2addr v4, v0

    const/4 v5, 0x0

    or-int/2addr v4, v5

    and-int/lit16 v6, v3, 0x3800

    or-int/2addr v4, v6

    and-int/lit16 v6, v4, 0x3800

    if-nez v6, :cond_21

    or-int/lit16 v4, v4, 0x4000

    :cond_21
    const v6, 0x8034

    and-int v7, v3, v6

    or-int/2addr v4, v7

    if-nez v7, :cond_2c

    and-int/lit16 v7, v3, 0x80

    or-int/2addr v4, v7

    :cond_2c
    and-int/lit8 v7, v4, 0x14

    if-nez v7, :cond_4b

    const v7, 0x88023

    and-int/2addr v7, v4

    if-nez v7, :cond_45

    .line 5480
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 5481
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    and-int/lit8 v6, v3, 0x40

    goto :goto_4a

    :cond_45
    and-int/2addr v6, v4

    if-nez v6, :cond_4b

    and-int/lit8 v6, v0, 0x40

    :goto_4a
    or-int/2addr v4, v6

    :cond_4b
    and-int/lit8 v6, v4, 0x10

    const/4 v7, 0x1

    if-eqz v6, :cond_52

    :cond_50
    :goto_50
    move v5, v7

    goto :goto_89

    :cond_52
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_57

    goto :goto_88

    :cond_57
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_65

    if-nez p3, :cond_5f

    if-eqz v2, :cond_60

    :cond_5f
    move v5, v7

    :cond_60
    if-eq p3, v2, :cond_89

    and-int/lit8 v4, v4, -0x5

    goto :goto_89

    :cond_65
    const v6, 0x8020

    and-int v8, v0, v6

    if-eqz v8, :cond_6d

    goto :goto_88

    :cond_6d
    and-int/2addr v6, v1

    if-eqz v6, :cond_75

    if-nez p3, :cond_50

    if-eqz v2, :cond_89

    goto :goto_50

    :cond_75
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7a

    goto :goto_88

    :cond_7a
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_88

    if-nez p3, :cond_82

    if-eqz v2, :cond_83

    :cond_82
    move v5, v7

    :cond_83
    if-eqz p3, :cond_89

    and-int/lit16 v4, v4, -0x81

    goto :goto_89

    :cond_88
    :goto_88
    move v5, p3

    :cond_89
    :goto_89
    if-nez v5, :cond_92

    const/high16 v0, 0x20000

    and-int/2addr v0, v3

    or-int/2addr v0, v4

    and-int/lit16 v0, v0, -0x81

    goto :goto_94

    :cond_92
    and-int/lit8 v0, v4, -0x41

    :goto_94
    if-eq v5, p3, :cond_9a

    const p3, -0x80004

    and-int/2addr v0, p3

    :cond_9a
    if-nez v5, :cond_af

    .line 5552
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5553
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result p1

    .line 5551
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_af

    or-int/lit8 v0, v0, 0x8

    goto :goto_b0

    :cond_af
    move v7, v5

    .line 5564
    :goto_b0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 5

    .line 2120
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;-><init>()V

    .line 2122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2120
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPackageAdded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    .line 5913
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5914
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public final onPackageAddedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 13

    .line 5330
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5c

    .line 5333
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_14
    if-ltz v0, :cond_5c

    .line 5334
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAdoptPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5335
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "PackageManager"

    .line 5336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adopting permissions from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5337
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5336
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5339
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    .line 5340
    monitor-exit v3

    goto :goto_59

    :catchall_56
    move-exception p0

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    :goto_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_5c
    if-eqz p2, :cond_7e

    const-string v0, "PackageManager"

    .line 5347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission groups from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 5350
    :cond_7e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionGroupsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :goto_81
    if-eqz p2, :cond_a4

    const/4 p2, 0x0

    const-string v0, "PackageManager"

    .line 5359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permissions from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permissions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 5362
    :cond_a4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p2

    :goto_a8
    move-object v8, p2

    if-eqz p3, :cond_ad

    move v4, v1

    goto :goto_af

    :cond_ad
    const/4 p2, 0x0

    move v4, p2

    .line 5367
    :goto_af
    invoke-static {v8}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    xor-int/lit8 v7, p2, 0x1

    if-nez v4, :cond_b9

    if-eqz v7, :cond_c5

    .line 5372
    :cond_b9
    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_c5
    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .registers 10

    const-string/jumbo v0, "pkg"

    .line 5921
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "params"

    .line 5922
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gez p4, :cond_16

    if-ne p4, v1, :cond_14

    goto :goto_16

    :cond_14
    move v3, v0

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    :goto_17
    const-string/jumbo v4, "userId"

    .line 5923
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne p4, v1, :cond_24

    .line 5925
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p4

    goto :goto_29

    :cond_24
    new-array v1, v2, [I

    aput p4, v1, v0

    move-object p4, v1

    .line 5927
    :goto_29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V

    return-void
.end method

.method public final onPackageInstalledInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .registers 9

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 5666
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleAppIdMigration(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 5668
    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5669
    array-length p2, p4

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p2, :cond_25

    aget v1, p4, v0

    .line 5671
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    .line 5670
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 5673
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getGrantedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRequestedRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 5932
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5933
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public final onPackageRemovedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 5692
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    .line 5940
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "sharedUserPkgs"

    .line 5941
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gez p5, :cond_16

    if-ne p5, v1, :cond_14

    goto :goto_16

    :cond_14
    move v3, v0

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    :goto_17
    const-string/jumbo v4, "userId"

    .line 5942
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne p5, v1, :cond_25

    .line 5944
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p5

    move-object v7, p5

    goto :goto_2a

    :cond_25
    new-array v1, v2, [I

    aput p5, v1, v0

    move-object v7, v1

    :goto_2a
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 5946
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V

    return-void
.end method

.method public final onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1d

    .line 5703
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5707
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 5711
    array-length p1, p5

    :goto_12
    if-ge v0, p1, :cond_1c

    aget p2, p5, v0

    .line 5712
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    return-void

    :cond_1d
    const/4 v1, 0x0

    .line 5716
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 5717
    array-length v1, p5

    :goto_22
    if-ge v0, v1, :cond_36

    aget v2, p5, v0

    .line 5718
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 5719
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_33

    .line 5726
    :cond_30
    invoke-virtual {p0, p3, p2, p4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/List;I)V

    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .registers 3

    .line 5844
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSystemReady()V
    .registers 11

    .line 5024
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 5026
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5028
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    invoke-virtual {v1, v3}, Lcom/android/server/policy/PermissionPolicyInternal;->setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 5033
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x1

    .line 5034
    :try_start_1a
    iput-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    .line 5036
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-eqz v4, :cond_76

    .line 5038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We detected priv-permissions violations from below apps:"

    .line 5039
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5041
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5042
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v8

    goto :goto_30

    :cond_5c
    const-string v3, "\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\n"

    .line 5044
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Please ASSIGN this issue to above apps to apply.\n"

    .line 5045
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PackageManager"

    .line 5046
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 5053
    :cond_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_1a .. :try_end_77} :catchall_c6

    .line 5055
    new-instance v1, Landroid/permission/PermissionControllerManager;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 5056
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 5057
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5062
    :try_start_8c
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5064
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5065
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "com.android.systemui"

    const-string v5, "android.permission.OBSERVE_SENSOR_PRIVACY"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 5066
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a5
    const-string v0, "android"

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 5076
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c5

    const-string v0, "android"

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 5078
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v7, 0x1030

    const-string v4, "android"

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v6, v7

    .line 5082
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c5} :catch_c5

    :catch_c5
    :cond_c5
    return-void

    :catchall_c6
    move-exception p0

    .line 5053
    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public onUserCreated(I)V
    .registers 3

    int-to-float p1, p1

    const-string/jumbo v0, "userId"

    .line 5905
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5907
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    .line 3049
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 3050
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3051
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->removeUserState(I)V

    .line 3052
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 650
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 654
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_24

    .line 656
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_24

    .line 657
    monitor-exit v3

    return-object v2

    .line 659
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 660
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 661
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 664
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_5a

    .line 666
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 667
    new-instance p2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1

    :catchall_5a
    move-exception p0

    .line 664
    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public readLegacyPermissionStateTEMP()V
    .registers 4

    .line 5172
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    .line 5173
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .line 5201
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5202
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5203
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_33

    .line 5205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5208
    :cond_33
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v1

    .line 5209
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v0

    .line 5208
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    goto :goto_4

    :cond_3f
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_62

    if-nez v1, :cond_c

    .line 5273
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 5274
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v2

    .line 5275
    :goto_10
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5276
    :try_start_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_18
    if-ge v5, v4, :cond_5b

    .line 5278
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 5279
    new-instance v7, Lcom/android/server/pm/permission/Permission;

    .line 5280
    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v6

    invoke-direct {v7, v8, v6}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    if-nez v1, :cond_53

    .line 5287
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 5288
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 5287
    invoke-virtual {v6, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_4d

    .line 5290
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4d

    .line 5291
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    .line 5292
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->areGidsPerUser()Z

    move-result v6

    .line 5291
    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    .line 5294
    :cond_4d
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_58

    .line 5296
    :cond_53
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 5299
    :cond_5b
    monitor-exit v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_5f
    move-exception p0

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    return-void
.end method

.method public final removeAllPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9

    .line 3002
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3003
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_51

    .line 3006
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 3007
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    if-nez v5, :cond_2f

    .line 3009
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    :cond_2f
    if-eqz v5, :cond_3b

    .line 3011
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/Permission;->isPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x0

    .line 3012
    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/Permission;->setPermissionInfo(Landroid/content/pm/PermissionInfo;)V

    .line 3022
    :cond_3b
    invoke-static {v4}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->isAppOp(Lcom/android/server/pm/pkg/component/ParsedPermission;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 3024
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3031
    :cond_51
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_59
    if-ge v2, v1, :cond_7f

    .line 3034
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3035
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 3036
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 3037
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 3038
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3037
    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 3044
    :cond_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 7

    .line 1260
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 1267
    :cond_b
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1268
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1269
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0

    :cond_1c
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 4

    .line 1097
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1100
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void

    .line 1098
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 3

    .line 2113
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2115
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .registers 2

    .line 2644
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 6

    .line 708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 709
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 712
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 713
    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    .line 714
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 716
    monitor-exit v1

    return-void

    .line 718
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "PackageManager"

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_3a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 724
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_47

    .line 725
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void

    :catchall_47
    move-exception p0

    .line 724
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0

    .line 710
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    .registers 5

    .line 5160
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5161
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object p0

    if-nez p0, :cond_d

    .line 5163
    monitor-exit v0

    return-void

    .line 5165
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    const/4 p1, 0x0

    .line 5166
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 5167
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 5

    const-string/jumbo v0, "pkg"

    .line 5849
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    .line 5850
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5851
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .registers 6

    const-string/jumbo v0, "pkg"

    .line 5856
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    .line 5857
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5858
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 4

    const/4 v0, 0x1

    .line 1710
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    return-void
.end method

.method public final resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v10, p2

    .line 1716
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1730
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v12

    const/4 v13, 0x1

    new-array v14, v13, [Z

    .line 1732
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1733
    new-instance v9, Landroid/util/IntArray;

    invoke-direct {v9, v12}, Landroid/util/IntArray;-><init>(I)V

    .line 1734
    new-instance v8, Landroid/util/IntArray;

    invoke-direct {v8, v12}, Landroid/util/IntArray;-><init>(I)V

    .line 1736
    new-instance v16, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v5, v8

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v12, :cond_122

    .line 1797
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 1800
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1801
    :try_start_40
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_51

    .line 1803
    monitor-exit v1

    :goto_49
    move/from16 v23, v6

    move-object/from16 v18, v8

    move-object/from16 v21, v9

    goto/16 :goto_116

    .line 1806
    :cond_51
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1807
    monitor-exit v1

    goto :goto_49

    .line 1809
    :cond_59
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v17

    .line 1810
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_40 .. :try_end_5e} :catchall_11f

    .line 1813
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1814
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1813
    invoke-virtual {v1, v2, v10}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1815
    array-length v2, v1

    if-lez v2, :cond_96

    .line 1817
    array-length v2, v1

    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v2, :cond_92

    aget-object v4, v1, v3

    .line 1818
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1819
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_8f

    .line 1820
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    .line 1821
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    move v1, v13

    goto :goto_93

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    :cond_92
    const/4 v1, 0x0

    :goto_93
    if-eqz v1, :cond_96

    goto :goto_49

    :cond_96
    const/16 v1, 0x3e8

    .line 1832
    invoke-virtual {v0, v11, v5, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    .line 1837
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v11, v2, v3, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 1838
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v7

    const/16 v1, 0x17

    if-ge v7, v1, :cond_b5

    if-eqz v17, :cond_b5

    const/16 v1, 0x48

    move/from16 v20, v1

    goto :goto_b7

    :cond_b5
    const/16 v20, 0x0

    :goto_b7
    const v4, 0x9004b

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v5

    move-object v13, v5

    move/from16 v5, v20

    move/from16 v23, v6

    move/from16 v6, v21

    move/from16 v24, v7

    move/from16 v7, p2

    move-object/from16 v18, v8

    move/from16 v8, v22

    move-object/from16 v21, v9

    move-object/from16 v9, v16

    .line 1843
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    if-nez v17, :cond_db

    goto :goto_116

    :cond_db
    and-int/lit8 v1, v19, 0x14

    if-eqz v1, :cond_e0

    goto :goto_116

    :cond_e0
    and-int/lit8 v1, v19, 0x20

    if-nez v1, :cond_108

    const v1, 0x8000

    and-int v1, v19, v1

    if-eqz v1, :cond_ec

    goto :goto_108

    :cond_ec
    and-int/lit8 v1, v20, 0x40

    if-nez v1, :cond_116

    move/from16 v1, v24

    .line 1868
    invoke-virtual {v0, v13, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_116

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move/from16 v6, p2

    move-object/from16 v8, v16

    .line 1870
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_116

    :cond_108
    :goto_108
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v13

    move/from16 v6, p2

    move-object/from16 v7, v16

    .line 1861
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    :cond_116
    :goto_116
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v8, v18

    move-object/from16 v9, v21

    const/4 v13, 0x1

    goto/16 :goto_30

    :catchall_11f
    move-exception v0

    .line 1810
    :try_start_120
    monitor-exit v1
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    throw v0

    :cond_122
    move-object/from16 v18, v8

    move-object/from16 v21, v9

    const/4 v2, 0x0

    aget-boolean v1, v14, v2

    if-eqz v1, :cond_130

    .line 1877
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRemoved()V

    .line 1882
    :cond_130
    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16b

    .line 1883
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    move v7, v2

    :goto_13b
    if-ge v7, v1, :cond_16b

    .line 1885
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    .line 1886
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v4

    .line 1888
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1891
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v6, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_13b

    :cond_16b
    if-eqz p3, :cond_180

    .line 1898
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual/range {v21 .. v21}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1899
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual/range {v18 .. v18}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    :cond_180
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v0, "packageName"

    .line 2084
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    .line 2085
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2086
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2088
    monitor-exit v0

    return-void

    .line 2090
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_2f

    .line 2091
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2092
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    .line 2091
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :catchall_2f
    move-exception p0

    .line 2090
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V
    .registers 47

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v1, p5

    .line 3135
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3136
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-nez v12, :cond_19

    return-void

    :cond_19
    const/4 v2, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v1, v2, :cond_24

    .line 3141
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v1

    move-object v15, v1

    goto :goto_29

    :cond_24
    new-array v2, v14, [I

    aput v1, v2, v13

    move-object v15, v2

    .line 3146
    :goto_29
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 3151
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 3152
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    .line 3153
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_3b
    if-ge v13, v5, :cond_ab

    .line 3155
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 p5, v1

    .line 3158
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3159
    :try_start_4c
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v11, v14}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v11

    .line 3160
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_a8

    if-nez v11, :cond_56

    goto :goto_a0

    .line 3164
    :cond_56
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3165
    invoke-virtual {v0, v8, v12, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-eqz v1, :cond_6d

    if-nez v4, :cond_6a

    .line 3167
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v1

    .line 3169
    :cond_6a
    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3171
    :cond_6d
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual {v0, v8, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 3172
    invoke-virtual {v0, v8, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_8a

    :cond_7f
    if-nez v2, :cond_87

    .line 3175
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v1

    .line 3177
    :cond_87
    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3179
    :cond_8a
    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 3180
    invoke-virtual {v0, v8, v12, v11, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_a0

    if-nez v3, :cond_9d

    .line 3183
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3185
    :cond_9d
    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, p4

    move-object/from16 v1, p5

    const/4 v14, 0x1

    goto :goto_3b

    :catchall_a8
    move-exception v0

    .line 3160
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0

    :cond_ab
    move-object/from16 p5, v1

    .line 3189
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3190
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v1, :cond_cf

    .line 3191
    array-length v1, v15

    const/4 v13, 0x0

    :goto_b8
    if-ge v13, v1, :cond_cf

    aget v14, v15, v13

    move/from16 v17, v1

    .line 3192
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v1, v14}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v1, 0x1

    .line 3193
    invoke-virtual {v11, v14, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_ca
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v17

    goto :goto_b8

    .line 3201
    :cond_cf
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    if-nez v1, :cond_eb

    .line 3202
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 3203
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getImplicitPermissions()Ljava/util/List;

    move-result-object v13

    .line 3204
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v14

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move v7, v14

    :cond_e8
    move-object v14, v13

    move-object v13, v1

    goto :goto_13a

    .line 3206
    :cond_eb
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3207
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 3209
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v18, v3

    .line 3210
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 3211
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v14

    move-object/from16 v17, v2

    move-object/from16 v19, v7

    const/4 v2, 0x0

    const/16 v7, 0x2710

    :goto_10c
    if-ge v2, v14, :cond_e8

    .line 3214
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;

    move-result-object v20

    if-nez v20, :cond_11d

    move-object/from16 v21, v3

    goto :goto_135

    :cond_11d
    move-object/from16 v21, v3

    .line 3219
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    .line 3218
    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 3221
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getImplicitPermissions()Ljava/util/List;

    move-result-object v3

    .line 3220
    invoke-interface {v13, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 3223
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getTargetSdkVersion()I

    move-result v3

    .line 3222
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_135
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v21

    goto :goto_10c

    .line 3227
    :goto_13a
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3228
    :try_start_13d
    array-length v2, v15
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_5e5

    move-object/from16 v1, p5

    move-object/from16 p5, v14

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_147
    if-ge v14, v2, :cond_5b5

    move-object/from16 v22, v3

    :try_start_14b
    aget v3, v15, v14

    move/from16 v23, v2

    .line 3229
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v2

    move-object/from16 v24, v15

    .line 3230
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v15

    .line 3232
    invoke-virtual {v15}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v25

    move/from16 v26, v14

    if-eqz v25, :cond_1cf

    .line 3233
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_16b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1c2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v14, v27

    check-cast v14, Ljava/lang/String;

    move-object/from16 v27, v4

    .line 3234
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-nez v4, :cond_186

    move-object/from16 v4, v27

    goto :goto_16b

    .line 3238
    :cond_186
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v29, v11

    const-string v11, "android"

    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1bd

    .line 3239
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_1bd

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_1bd

    .line 3240
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v11

    if-nez v11, :cond_1ac

    .line 3241
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v11

    if-eqz v11, :cond_1b1

    :cond_1ac
    const/16 v11, 0x2000

    .line 3242
    invoke-virtual {v15, v4, v11, v11}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :cond_1b1
    const/16 v11, 0x17

    if-ge v7, v11, :cond_1bd

    const/16 v11, 0x48

    .line 3247
    invoke-virtual {v15, v4, v11, v11}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3252
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    :cond_1bd
    move-object/from16 v4, v27

    move-object/from16 v11, v29

    goto :goto_16b

    :cond_1c2
    move-object/from16 v27, v4

    move-object/from16 v29, v11

    const/4 v4, 0x0

    .line 3257
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 3258
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    goto :goto_1d3

    :cond_1cf
    move-object/from16 v27, v4

    move-object/from16 v29, v11

    :goto_1d3
    if-eqz v9, :cond_1fb

    .line 3266
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v2, v4, v11}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 3267
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v4

    if-nez v4, :cond_1ed

    .line 3268
    new-instance v4, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v4, v15}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    .line 3269
    invoke-virtual {v15}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    move-object v14, v4

    goto :goto_1fd

    .line 3276
    :cond_1ed
    invoke-virtual {v0, v13, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 3278
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v14, v15

    const/16 v21, 0x1

    goto :goto_1fd

    :cond_1fb
    const/4 v11, 0x0

    :cond_1fc
    move-object v14, v15

    .line 3284
    :goto_1fd
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3285
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-object/from16 v25, v13

    move v13, v11

    move-object v11, v1

    move v1, v13

    :goto_20d
    if-ge v13, v5, :cond_506

    .line 3288
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move/from16 v31, v5

    move-object/from16 v5, v30

    check-cast v5, Ljava/lang/String;

    move-object/from16 v30, v6

    .line 3290
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    move/from16 v32, v7

    .line 3292
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v7

    const/16 v9, 0x17

    if-lt v7, v9, :cond_22d

    const/4 v7, 0x1

    goto :goto_22e

    :cond_22d
    const/4 v7, 0x0

    :goto_22e
    if-nez v6, :cond_245

    if-eqz v10, :cond_239

    .line 3304
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3303
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_239
    :goto_239
    move/from16 v39, v1

    move-object/from16 v36, v2

    move-object/from16 v33, v4

    move-object/from16 v37, v12

    move-object/from16 v35, v29

    goto/16 :goto_40f

    .line 3315
    :cond_245
    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_258

    .line 3316
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getImplicitPermissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_258

    .line 3318
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3336
    :cond_258
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v9

    if-eqz v9, :cond_261

    if-nez v7, :cond_261

    goto :goto_239

    .line 3344
    :cond_261
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3347
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v33

    if-eqz v33, :cond_277

    move-object/from16 v33, v4

    .line 3348
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_279

    :cond_277
    move-object/from16 v33, v4

    .line 3352
    :goto_279
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_29d

    invoke-virtual {v14, v9}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29d

    .line 3356
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-nez v4, :cond_29d

    .line 3357
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3356
    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29d

    .line 3361
    invoke-static {v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-nez v4, :cond_29d

    const/4 v4, 0x0

    goto :goto_29e

    :cond_29d
    const/4 v4, 0x1

    .line 3372
    :goto_29e
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v10

    if-nez v10, :cond_41b

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v10

    if-nez v10, :cond_41b

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v10

    if-eqz v10, :cond_2b2

    goto/16 :goto_41b

    .line 3421
    :cond_2b2
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_3e1

    .line 3422
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v4

    .line 3423
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v10

    move-object/from16 v8, v29

    .line 3429
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v29

    .line 3431
    invoke-virtual {v14, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v34

    if-eqz v34, :cond_2d9

    .line 3432
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v35

    move-object/from16 v36, v2

    move/from16 v40, v35

    move-object/from16 v35, v8

    move/from16 v8, v40

    goto :goto_2de

    :cond_2d9
    move-object/from16 v36, v2

    move-object/from16 v35, v8

    const/4 v8, 0x0

    .line 3437
    :goto_2de
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0x3800

    move-object/from16 v37, v12

    if-eqz v2, :cond_2ee

    const/4 v2, 0x1

    goto :goto_2ef

    :cond_2ee
    const/4 v2, 0x0

    .line 3440
    :goto_2ef
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3439
    invoke-virtual {v14, v12}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v12

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_2fd

    const/4 v12, 0x1

    goto :goto_2fe

    :cond_2fd
    const/4 v12, 0x0

    :goto_2fe
    if-eqz v7, :cond_389

    if-eqz v29, :cond_31f

    if-eqz v4, :cond_31f

    if-nez v2, :cond_32e

    if-eqz v34, :cond_317

    .line 3446
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v38

    if-eqz v38, :cond_317

    .line 3447
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v38

    if-eqz v38, :cond_317

    const/16 v38, 0x1

    goto :goto_319

    :cond_317
    const/16 v38, 0x0

    :goto_319
    if-nez v12, :cond_31c

    goto :goto_327

    :cond_31c
    move/from16 v39, v1

    goto :goto_332

    :cond_31f
    if-eqz v29, :cond_32e

    if-eqz v10, :cond_32e

    if-nez v2, :cond_32e

    if-nez v12, :cond_32e

    :goto_327
    or-int/lit16 v8, v8, 0x4000

    move/from16 v39, v1

    const/16 v38, 0x1

    goto :goto_332

    :cond_32e
    move/from16 v39, v1

    const/16 v38, 0x0

    .line 3466
    :goto_332
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_342

    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_342

    and-int/lit8 v8, v8, -0x41

    const/16 v38, 0x1

    :cond_342
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_355

    .line 3475
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v9

    .line 3474
    invoke-virtual {v0, v5, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_355

    and-int/lit8 v8, v8, -0x9

    :goto_352
    const/16 v38, 0x1

    goto :goto_36a

    :cond_355
    if-eqz v29, :cond_35b

    if-eqz v4, :cond_35b

    if-eqz v2, :cond_36a

    :cond_35b
    if-eqz v34, :cond_36a

    .line 3481
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v9

    if-eqz v9, :cond_36a

    .line 3482
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v9

    if-nez v9, :cond_36a

    goto :goto_352

    .line 3487
    :cond_36a
    :goto_36a
    iget-boolean v9, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v9, :cond_386

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_386

    .line 3488
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    if-eqz v34, :cond_37f

    .line 3489
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v1

    if-nez v1, :cond_386

    .line 3490
    :cond_37f
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-eqz v1, :cond_386

    goto :goto_3c1

    :cond_386
    move/from16 v1, v38

    goto :goto_3c2

    :cond_389
    move/from16 v39, v1

    if-nez v34, :cond_3a3

    const-string v1, "android"

    .line 3499
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3498
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a3

    .line 3500
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3a3

    or-int/lit8 v8, v8, 0x48

    const/4 v1, 0x1

    goto :goto_3a4

    :cond_3a3
    const/4 v1, 0x0

    .line 3508
    :goto_3a4
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b5

    .line 3509
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v5

    if-eqz v5, :cond_3b5

    const/4 v1, 0x1

    :cond_3b5
    if-eqz v29, :cond_3c2

    if-nez v4, :cond_3bb

    if-eqz v10, :cond_3c2

    :cond_3bb
    if-nez v2, :cond_3c2

    if-nez v12, :cond_3c2

    or-int/lit16 v8, v8, 0x4000

    :goto_3c1
    const/4 v1, 0x1

    :cond_3c2
    :goto_3c2
    if-eqz v29, :cond_3d4

    if-nez v4, :cond_3c8

    if-eqz v10, :cond_3ca

    :cond_3c8
    if-eqz v2, :cond_3d4

    :cond_3ca
    if-eqz v12, :cond_3d4

    and-int/lit16 v1, v8, -0x4001

    if-nez v7, :cond_3d2

    or-int/lit8 v1, v1, 0x40

    :cond_3d2
    move v8, v1

    const/4 v1, 0x1

    :cond_3d4
    if-eqz v1, :cond_3da

    .line 3538
    invoke-static {v11, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    :cond_3da
    const v1, 0x3fbff

    .line 3541
    invoke-virtual {v15, v6, v1, v8}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    goto :goto_40f

    :cond_3e1
    move/from16 v39, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v12

    move-object/from16 v35, v29

    .line 3544
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission protection "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for permission "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3544
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40f
    move-object/from16 v2, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v4, v27

    move/from16 v1, v39

    goto/16 :goto_4e6

    :cond_41b
    :goto_41b
    move/from16 v39, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v12

    move-object/from16 v35, v29

    .line 3373
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_436

    if-nez v4, :cond_42c

    goto :goto_436

    :cond_42c
    move-object/from16 v2, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v4, v27

    goto/16 :goto_4c1

    .line 3374
    :cond_436
    :goto_436
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v1

    if-eqz v1, :cond_483

    .line 3375
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_450

    move-object/from16 v4, v27

    invoke-static {v4, v5}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, v17

    if-eqz v1, :cond_44d

    goto :goto_454

    :cond_44d
    move-object/from16 v7, v19

    goto :goto_489

    :cond_450
    move-object/from16 v4, v27

    move-object/from16 v2, v17

    .line 3377
    :goto_454
    invoke-static {v2, v5}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47e

    .line 3379
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_469

    move-object/from16 v7, v19

    invoke-static {v7, v5}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_477

    goto :goto_46b

    :cond_469
    move-object/from16 v7, v19

    .line 3381
    :goto_46b
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v1

    if-nez v1, :cond_477

    .line 3382
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v1

    if-eqz v1, :cond_489

    .line 3383
    :cond_477
    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_480

    goto :goto_489

    :cond_47e
    move-object/from16 v7, v19

    :cond_480
    move-object/from16 v8, v18

    goto :goto_4c1

    :cond_483
    move-object/from16 v2, v17

    move-object/from16 v7, v19

    move-object/from16 v4, v27

    .line 3385
    :cond_489
    :goto_489
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_4c9

    .line 3386
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_49b

    invoke-static {v4, v5}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c9

    :cond_49b
    move-object/from16 v8, v18

    .line 3388
    invoke-static {v8, v5}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c1

    .line 3390
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_4af

    invoke-static {v7, v5}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4bb

    .line 3392
    :cond_4af
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v1

    if-nez v1, :cond_4bb

    .line 3393
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v1

    if-eqz v1, :cond_4cb

    .line 3394
    :cond_4bb
    invoke-virtual {v14, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4cb

    .line 3397
    :cond_4c1
    :goto_4c1
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-eqz v1, :cond_4d2

    :goto_4c7
    const/4 v1, 0x1

    goto :goto_4d4

    :cond_4c9
    move-object/from16 v8, v18

    .line 3414
    :cond_4cb
    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-eqz v1, :cond_4d2

    goto :goto_4c7

    :cond_4d2
    move/from16 v1, v39

    .line 3418
    :goto_4d4
    invoke-virtual {v14, v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v5

    if-eqz v5, :cond_4df

    .line 3419
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v5

    goto :goto_4e0

    :cond_4df
    const/4 v5, 0x0

    :goto_4e0
    const v9, 0x3fbff

    .line 3420
    invoke-virtual {v15, v6, v9, v5}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :goto_4e6
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v17, v2

    move-object/from16 v27, v4

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move-object/from16 v6, v30

    move/from16 v5, v31

    move/from16 v7, v32

    move-object/from16 v4, v33

    move-object/from16 v29, v35

    move-object/from16 v2, v36

    move-object/from16 v12, v37

    move-object/from16 v8, p1

    goto/16 :goto_20d

    :cond_506
    move/from16 v39, v1

    move-object/from16 v36, v2

    move-object/from16 v33, v4

    move/from16 v31, v5

    move-object/from16 v30, v6

    move/from16 v32, v7

    move-object/from16 v37, v12

    move-object/from16 v2, v17

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v4, v27

    move-object/from16 v35, v29

    move/from16 v9, p2

    if-nez v39, :cond_528

    if-eqz v9, :cond_525

    goto :goto_528

    :cond_525
    move-object/from16 v5, v36

    goto :goto_53a

    .line 3550
    :cond_528
    :goto_528
    invoke-interface/range {v37 .. v37}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v36

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53a

    .line 3551
    invoke-interface/range {v37 .. v37}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_544

    :cond_53a
    :goto_53a
    invoke-interface/range {v37 .. v37}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_54d

    .line 3555
    :cond_544
    invoke-interface/range {v37 .. v37}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v5, v1, v10}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    goto :goto_54e

    :cond_54d
    const/4 v10, 0x1

    :goto_54e
    if-eqz v39, :cond_55b

    if-eqz p3, :cond_559

    if-eqz v9, :cond_559

    .line 3561
    invoke-static {v11, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v11, v1

    :cond_559
    move/from16 v20, v10

    .line 3565
    :cond_55b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_55f
    .catchall {:try_start_14b .. :try_end_55f} :catchall_5b1

    move-object/from16 v1, p0

    move-object v13, v2

    move/from16 v12, v23

    move-object v2, v15

    move/from16 v16, v3

    move-object/from16 v17, v8

    move-object/from16 v8, v22

    move-object v3, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v33

    move-object/from16 v4, p5

    move/from16 v22, v31

    move/from16 v5, v32

    move-object/from16 v23, v30

    move/from16 v6, v16

    move-object/from16 v27, v7

    move/from16 v28, v32

    move-object v7, v11

    .line 3564
    :try_start_57f
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I

    move-result-object v7

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    move/from16 v6, v16

    .line 3567
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v1

    add-int/lit8 v14, v26, 0x1

    move-object/from16 v10, p3

    move-object v3, v8

    move v2, v12

    move-object/from16 v4, v18

    move/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v15, v24

    move-object/from16 v19, v27

    move/from16 v7, v28

    move-object/from16 v11, v35

    move-object/from16 v12, v37

    move-object/from16 v8, p1

    move-object/from16 v18, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v25

    goto/16 :goto_147

    :catchall_5b1
    move-exception v0

    move-object/from16 v8, v22

    goto :goto_5e7

    :cond_5b5
    move-object v8, v3

    move-object/from16 v24, v15

    const/4 v10, 0x1

    .line 3570
    monitor-exit v8
    :try_end_5ba
    .catchall {:try_start_57f .. :try_end_5ba} :catchall_5e9

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    .line 3572
    invoke-virtual {v0, v2, v9, v3, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I[I)[I

    move-result-object v1

    move-object/from16 v3, p4

    if-eqz v3, :cond_5d4

    if-eqz p3, :cond_5cc

    if-eqz v9, :cond_5cc

    if-nez v20, :cond_5ce

    :cond_5cc
    if-eqz v21, :cond_5d0

    :cond_5ce
    move v14, v10

    goto :goto_5d1

    :cond_5d0
    const/4 v14, 0x0

    .line 3584
    :goto_5d1
    invoke-virtual {v3, v1, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 3589
    :cond_5d4
    array-length v3, v1

    const/4 v13, 0x0

    :goto_5d6
    if-ge v13, v3, :cond_5e4

    aget v4, v1, v13

    .line 3590
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5d6

    :cond_5e4
    return-void

    :catchall_5e5
    move-exception v0

    move-object v8, v3

    .line 3570
    :goto_5e7
    :try_start_5e7
    monitor-exit v8
    :try_end_5e8
    .catchall {:try_start_5e7 .. :try_end_5e8} :catchall_5e9

    throw v0

    :catchall_5e9
    move-exception v0

    goto :goto_5e7
.end method

.method public restoreRuntimePermissions([BI)V
    .registers 5

    const-string v0, "backup"

    .line 2062
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    .line 2063
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2064
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2065
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2066
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1f

    .line 2067
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2068
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2067
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 2066
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public revokeInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 6038
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 6043
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6044
    :try_start_b
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p1

    if-eqz p1, :cond_6c

    const/4 v2, 0x0

    .line 6049
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 6050
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 6051
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 6056
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 6059
    monitor-exit v1

    return-void

    .line 6057
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot revoke permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6052
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has not requested permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6046
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown permission: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_83
    move-exception p0

    .line 6059
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_b .. :try_end_85} :catchall_83

    throw p0

    .line 6040
    :cond_86
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

.method public final revokeLicensePermissionForMDM([ILjava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")V"
        }
    .end annotation

    .line 2487
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2488
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_2e

    aget v3, p1, v2

    .line 2489
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v3

    .line 2490
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 2491
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 2492
    invoke-virtual {v3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    goto :goto_1b

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2496
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 15

    .line 4788
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v1, p1

    .line 4789
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4791
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_15

    return-void

    .line 4796
    :cond_15
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_47

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v8, p5

    .line 4799
    :try_start_24
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_47

    :catch_28
    move-exception p0

    .line 4806
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to revoke "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    :goto_47
    return-void
.end method

.method public final revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;II[I)[I"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p4, v1, :cond_8

    move p4, p2

    goto :goto_9

    :cond_8
    move p4, v0

    .line 3624
    :goto_9
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3625
    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 3626
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 3627
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3628
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_11

    .line 3636
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 3637
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 3639
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0x88

    if-nez v2, :cond_53

    move v2, p2

    goto :goto_54

    :cond_53
    move v2, v0

    :goto_54
    and-int/lit8 v4, v4, 0x34

    if-nez v4, :cond_62

    if-eqz p4, :cond_62

    if-nez v2, :cond_62

    .line 3649
    invoke-virtual {p1, v3}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    const/16 v2, 0x83

    goto :goto_64

    :cond_62
    const/16 v2, 0x80

    .line 3660
    :goto_64
    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3661
    invoke-static {p6, p5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p6

    goto :goto_11

    :cond_6c
    return-object p6
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 12

    .line 1547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1549
    invoke-virtual {p0, v5, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v3, v0

    .line 1551
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1553
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v7, "skip permission revoke app kill for notification test"

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    .line 1536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1538
    invoke-virtual {p0, v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v3, v0

    .line 1541
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 17

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 1561
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 21

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    .line 1575
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v0, "PackageManager"

    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1580
    :cond_26
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v3, "revokeRuntimePermission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 1584
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1589
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_5c

    const-string v0, "PackageManager"

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1594
    :cond_5c
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1, v9, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-nez v2, :cond_216

    .line 1599
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1600
    :try_start_67
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-eqz v3, :cond_1fc

    .line 1604
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v3

    .line 1605
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_213

    if-eqz v3, :cond_84

    .line 1608
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v9, v2, :cond_82

    invoke-virtual {p0, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v2

    if-eqz v2, :cond_84

    :cond_82
    const/4 v2, 0x1

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    .line 1611
    :goto_85
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1612
    :try_start_88
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_1e2

    .line 1617
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v9

    if-nez v9, :cond_ea

    .line 1618
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v5

    if-eqz v5, :cond_9d

    goto :goto_ea

    .line 1620
    :cond_9d
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v5

    if-eqz v5, :cond_c2

    if-eqz v2, :cond_a6

    goto :goto_ea

    .line 1622
    :cond_a6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is managed by role"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1625
    :cond_c2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requested by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a changeable permission type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :cond_ea
    :goto_ea
    invoke-virtual {p0, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    if-nez v2, :cond_114

    const-string v0, "PackageManager"

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and user "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    monitor-exit v3

    return-void

    .line 1636
    :cond_114
    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_148

    .line 1637
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_125

    goto :goto_148

    .line 1638
    :cond_125
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not requested permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1646
    :cond_148
    :goto_148
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_158

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_158

    .line 1647
    monitor-exit v3

    return-void

    .line 1650
    :cond_158
    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_188

    .line 1653
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v11, 0x3e8

    if-ne v6, v11, :cond_169

    goto :goto_188

    .line 1654
    :cond_169
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_188
    :goto_188
    if-nez p3, :cond_1ae

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_18f

    goto :goto_1ae

    .line 1658
    :cond_18f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot revoke policy fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1666
    :cond_1ae
    :goto_1ae
    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-nez v2, :cond_1b6

    .line 1667
    monitor-exit v3

    return-void

    .line 1669
    :cond_1b6
    monitor-exit v3
    :try_end_1b7
    .catchall {:try_start_88 .. :try_end_1b7} :catchall_1f9

    if-eqz v9, :cond_1be

    const/16 v2, 0x4dd

    .line 1672
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1be
    if-eqz p8, :cond_1dc

    if-eqz v9, :cond_1d7

    .line 1678
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    invoke-static {v10, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    move-object/from16 v1, p8

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p4

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_1dc

    .line 1681
    :cond_1d7
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    :cond_1dc
    :goto_1dc
    if-eqz v9, :cond_1e1

    .line 1686
    invoke-virtual {p0, p1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_1e1
    return-void

    .line 1614
    :cond_1e2
    :try_start_1e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1f9
    move-exception v0

    .line 1669
    monitor-exit v3
    :try_end_1fb
    .catchall {:try_start_1e2 .. :try_end_1fb} :catchall_1f9

    throw v0

    .line 1602
    :cond_1fc
    :try_start_1fc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_213
    move-exception v0

    .line 1605
    monitor-exit v2
    :try_end_215
    .catchall {:try_start_1fc .. :try_end_215} :catchall_213

    throw v0

    .line 1595
    :cond_216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 16

    .line 2772
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2773
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_33

    .line 2777
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2779
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 2780
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2781
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2780
    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2785
    :cond_33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2786
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    :goto_3f
    if-ge v2, v0, :cond_8e

    .line 2790
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 2791
    invoke-static {v3}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/server/pm/pkg/component/ParsedPermission;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8b

    .line 2794
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2796
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_5f

    const/4 v3, 0x0

    goto :goto_67

    .line 2797
    :cond_5f
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_67
    move-object v10, v3

    .line 2798
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    if-eqz v10, :cond_8b

    .line 2802
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 2803
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    .line 2804
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;

    move-object v4, v12

    move-object v5, p0

    move-object v8, p1

    move v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_8e
    return-void
.end method

.method public final revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2841
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 2842
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_10
    if-ge v9, v7, :cond_4c

    .line 2846
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 2848
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2849
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 2850
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_45

    .line 2853
    :cond_31
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v5

    .line 2854
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_49

    .line 2855
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_46

    .line 2851
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v1

    :goto_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :catchall_49
    move-exception p0

    .line 2854
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    return-void
.end method

.method public final revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "PackageManager"

    const-string p1, "Trying to update info for null package. Just ignoring"

    .line 4428
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4433
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 4437
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4438
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4437
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 4439
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2b

    move v3, v1

    goto :goto_2c

    :cond_2b
    move v3, v2

    .line 4443
    :goto_2c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4446
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v8, :cond_45

    .line 4448
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    .line 4449
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    move v7, v1

    goto :goto_6e

    :cond_6d
    move v7, v2

    :goto_6e
    if-eqz v7, :cond_71

    goto :goto_35

    :cond_71
    if-eqz v3, :cond_82

    .line 4461
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    goto :goto_35

    .line 4465
    :cond_82
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4466
    :try_start_85
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    if-nez v8, :cond_af

    const-string v6, "PackageManager"

    .line 4468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing permissions state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    monitor-exit v7

    goto :goto_35

    .line 4473
    :cond_af
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-nez v6, :cond_ba

    .line 4475
    monitor-exit v7

    goto/16 :goto_35

    .line 4480
    :cond_ba
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cb

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v6

    if-eqz v6, :cond_cb

    move v5, v1

    .line 4483
    :cond_cb
    monitor-exit v7

    goto/16 :goto_35

    :catchall_ce
    move-exception p0

    monitor-exit v7
    :try_end_d0
    .catchall {:try_start_85 .. :try_end_d0} :catchall_ce

    throw p0

    :cond_d1
    if-eqz v5, :cond_dd

    .line 4488
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_dd
    return-void
.end method

.method public final revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 23

    move-object/from16 v9, p0

    .line 2676
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_14

    .line 2677
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_14

    move v12, v10

    goto :goto_15

    :cond_14
    move v12, v11

    .line 2678
    :goto_15
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_23

    .line 2679
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_23

    move v0, v10

    goto :goto_24

    :cond_23
    move v0, v11

    :goto_24
    if-nez v0, :cond_34

    .line 2680
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_34

    .line 2681
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_34

    move v13, v10

    goto :goto_35

    :cond_34
    move v13, v11

    :goto_35
    if-nez v13, :cond_3a

    if-nez v12, :cond_3a

    return-void

    .line 2687
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v15

    array-length v8, v15

    move v7, v11

    :goto_44
    if-ge v7, v8, :cond_154

    aget v6, v15, v7

    .line 2689
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v11

    :goto_51
    if-ge v4, v5, :cond_14b

    .line 2692
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2693
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2691
    invoke-virtual {v9, v0, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    if-nez v3, :cond_70

    :goto_67
    move/from16 v18, v4

    move v10, v5

    move v2, v6

    move/from16 v19, v7

    move v11, v8

    goto/16 :goto_140

    .line 2697
    :cond_70
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v1, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    iget-object v1, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2698
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    iget-object v1, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2699
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto :goto_91

    :cond_8f
    move v0, v11

    goto :goto_92

    :cond_91
    :goto_91
    move v0, v10

    :goto_92
    if-nez v0, :cond_95

    goto :goto_67

    :cond_95
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "171430330"

    aput-object v2, v1, v11

    .line 2704
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Revoking permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as either the sdk downgraded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " or newly requested legacy full storage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v2

    .line 2704
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2711
    :try_start_de
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_e8
    .catch Ljava/lang/IllegalStateException; {:try_start_de .. :try_end_e8} :catch_104
    .catch Ljava/lang/SecurityException; {:try_start_de .. :try_end_e8} :catch_104

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v3

    move-object v3, v0

    move/from16 v18, v4

    move v4, v10

    move v10, v5

    move v5, v14

    move/from16 p2, v6

    move/from16 v19, v7

    move-object v7, v11

    move v11, v8

    move-object/from16 v8, v16

    :try_start_fc
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_ff
    .catch Ljava/lang/IllegalStateException; {:try_start_fc .. :try_end_ff} :catch_102
    .catch Ljava/lang/SecurityException; {:try_start_fc .. :try_end_ff} :catch_102

    move/from16 v2, p2

    goto :goto_140

    :catch_102
    move-exception v0

    goto :goto_10f

    :catch_104
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move v10, v5

    move/from16 p2, v6

    move/from16 v19, v7

    move v11, v8

    .line 2714
    :goto_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    .line 2714
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_140
    add-int/lit8 v4, v18, 0x1

    move v6, v2

    move v5, v10

    move v8, v11

    move/from16 v7, v19

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_51

    :cond_14b
    move/from16 v19, v7

    move v11, v8

    add-int/lit8 v7, v19, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_44

    :cond_154
    return-void
.end method

.method public final revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 12

    .line 2733
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p2

    const/16 v0, 0x17

    if-ge p2, v0, :cond_87

    .line 2734
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p2

    if-lt p2, v0, :cond_87

    .line 2735
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p2

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2736
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_87

    .line 2741
    :cond_1b
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2742
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2743
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_84

    .line 2744
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2745
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 2746
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result p2

    if-nez p2, :cond_83

    .line 2747
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_83

    .line 2750
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_83

    aget v8, p2, v1

    .line 2752
    :try_start_4d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v2, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_5b} :catch_5c
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_5b} :catch_5c

    goto :goto_80

    :catch_5c
    move-exception v2

    const-string v3, "PackageManager"

    .line 2756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to revoke SYSTEM_ALERT_WINDOW for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2756
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_83
    :goto_83
    return-void

    :catchall_84
    move-exception p0

    .line 2743
    :try_start_85
    monitor-exit p2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0

    :cond_87
    :goto_87
    return-void
.end method

.method public final revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            ")Z"
        }
    .end annotation

    .line 4502
    invoke-virtual {p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 4503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_b
    if-ltz v1, :cond_3d

    .line 4505
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionState;

    .line 4506
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 4507
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 4509
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_3a

    move v3, v2

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_3d
    return v3
.end method

.method public final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 1279
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1283
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    int-to-float v0, p4

    const/4 v3, 0x0

    .line 1284
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1286
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_39

    .line 1287
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowlistedRestrictedPermissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_39
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_42

    return v1

    .line 1297
    :cond_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1298
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_53

    return v1

    .line 1302
    :cond_53
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5f

    move v3, v2

    goto :goto_60

    :cond_5f
    move v3, v1

    .line 1305
    :goto_60
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1306
    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_75

    if-eqz v3, :cond_6d

    goto :goto_75

    .line 1309
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    :goto_75
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_d1

    if-nez v3, :cond_86

    if-eqz v0, :cond_7e

    goto :goto_86

    .line 1315
    :cond_7e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1320
    :cond_86
    :goto_86
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    if-eqz p2, :cond_b6

    .line 1321
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_97

    goto :goto_b6

    .line 1327
    :cond_97
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_9b
    if-ge v1, v5, :cond_bf

    if-eqz v4, :cond_a9

    .line 1330
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ab

    :cond_a9
    if-eqz v3, :cond_ae

    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 1332
    :cond_ae
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b6
    :goto_b6
    if-eqz v4, :cond_d0

    .line 1322
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bf

    goto :goto_d0

    :cond_bf
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_d1

    if-nez v3, :cond_d1

    if-eqz v0, :cond_c8

    goto :goto_d1

    .line 1340
    :cond_c8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d0
    :goto_d0
    return v2

    .line 1347
    :cond_d1
    :goto_d1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1349
    :try_start_d5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_dc

    .line 1351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_dc
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1352
    throw p0
.end method

.method public final setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;II)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    .line 4281
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 4282
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    const/16 v16, 0x0

    move/from16 v1, v16

    move v9, v1

    const/4 v7, 0x0

    :goto_1a
    if-ge v9, v13, :cond_128

    .line 4285
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 4288
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4289
    :try_start_2a
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    const/4 v8, 0x1

    if-eqz v4, :cond_11e

    .line 4290
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    if-nez v4, :cond_3b

    goto/16 :goto_11e

    .line 4294
    :cond_3b
    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    if-nez v4, :cond_68

    const-string v3, "PackageManager"

    .line 4296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    monitor-exit v2

    move/from16 v19, v9

    goto/16 :goto_121

    .line 4300
    :cond_68
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    .line 4301
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_2a .. :try_end_6d} :catchall_125

    if-eqz v4, :cond_7a

    if-nez v7, :cond_77

    .line 4305
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v2

    .line 4307
    :cond_77
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7a
    move-object/from16 v17, v7

    .line 4310
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v14, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    move/from16 v5, p3

    move v6, v2

    move/from16 v7, v16

    :goto_89
    if-eqz v5, :cond_ce

    .line 4317
    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v18

    shl-int v15, v8, v18

    not-int v8, v15

    and-int/2addr v5, v8

    const/4 v8, 0x1

    if-eq v15, v8, :cond_bd

    const/4 v8, 0x2

    if-eq v15, v8, :cond_ad

    const/4 v8, 0x4

    if-eq v15, v8, :cond_9d

    goto :goto_cc

    :cond_9d
    or-int/lit16 v7, v7, 0x2000

    if-eqz v11, :cond_aa

    .line 4331
    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_aa

    or-int/lit16 v6, v6, 0x2000

    goto :goto_cc

    :cond_aa
    and-int/lit16 v6, v6, -0x2001

    goto :goto_cc

    :cond_ad
    or-int/lit16 v7, v7, 0x800

    if-eqz v11, :cond_ba

    .line 4340
    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    or-int/lit16 v6, v6, 0x800

    goto :goto_cc

    :cond_ba
    and-int/lit16 v6, v6, -0x801

    goto :goto_cc

    :cond_bd
    or-int/lit16 v7, v7, 0x1000

    if-eqz v11, :cond_ca

    .line 4322
    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ca

    or-int/lit16 v6, v6, 0x1000

    goto :goto_cc

    :cond_ca
    and-int/lit16 v6, v6, -0x1001

    :goto_cc
    const/4 v8, 0x1

    goto :goto_89

    :cond_ce
    if-ne v2, v6, :cond_d5

    move/from16 v19, v9

    move-object/from16 v7, v17

    goto :goto_121

    :cond_d5
    and-int/lit16 v1, v2, 0x3800

    if-eqz v1, :cond_db

    const/4 v1, 0x1

    goto :goto_dd

    :cond_db
    move/from16 v1, v16

    :goto_dd
    and-int/lit16 v5, v6, 0x3800

    if-eqz v5, :cond_e3

    const/4 v5, 0x1

    goto :goto_e5

    :cond_e3
    move/from16 v5, v16

    :goto_e5
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_f1

    if-nez v5, :cond_f1

    if-eqz v4, :cond_f1

    or-int/lit8 v7, v7, 0x4

    and-int/lit8 v6, v6, -0x5

    .line 4374
    :cond_f1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v2

    const/16 v4, 0x17

    if-ge v2, v4, :cond_104

    if-nez v1, :cond_104

    if-eqz v5, :cond_104

    or-int/lit8 v1, v7, 0x40

    or-int/lit8 v2, v6, 0x40

    move v4, v1

    move v5, v2

    goto :goto_106

    :cond_104
    move v5, v6

    move v4, v7

    .line 4380
    :goto_106
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move v6, v14

    move/from16 v7, p4

    const/16 v18, 0x1

    move/from16 v19, v9

    move-object v9, v15

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move-object/from16 v7, v17

    move/from16 v1, v18

    goto :goto_121

    :cond_11e
    :goto_11e
    move/from16 v19, v9

    .line 4291
    :try_start_120
    monitor-exit v2

    :goto_121
    add-int/lit8 v9, v19, 0x1

    goto/16 :goto_1a

    :catchall_125
    move-exception v0

    .line 4301
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_120 .. :try_end_127} :catchall_125

    throw v0

    :cond_128
    if-eqz v1, :cond_19e

    const/4 v3, 0x0

    .line 4386
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 4391
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPkgLicenseActivated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 4392
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAdminPermissions()V

    :cond_147
    if-nez v7, :cond_14a

    return-void

    .line 4402
    :cond_14a
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v1

    move/from16 v2, v16

    :goto_150
    if-ge v2, v1, :cond_19e

    .line 4404
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4407
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4408
    :try_start_15b
    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_185

    const-string v3, "PackageManager"

    .line 4410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    monitor-exit v4

    goto :goto_197

    .line 4414
    :cond_185
    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    .line 4415
    monitor-exit v4
    :try_end_18a
    .catchall {:try_start_15b .. :try_end_18a} :catchall_19b

    if-nez v3, :cond_197

    .line 4417
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_19e

    :cond_197
    :goto_197
    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_150

    :catchall_19b
    move-exception v0

    .line 4415
    :try_start_19c
    monitor-exit v4
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_19b

    throw v0

    :cond_19e
    :goto_19e
    return-void
.end method

.method public final setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I[I)[I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 3761
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    .line 3762
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 3765
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v3

    .line 3766
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    if-ge v6, v4, :cond_4b

    .line 3768
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3770
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    .line 3771
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v5

    :goto_26
    if-ge v10, v9, :cond_48

    .line 3773
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3775
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-nez v12, :cond_3e

    .line 3777
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 3778
    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3781
    :cond_3e
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 3785
    :cond_4b
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v3

    move-object/from16 v4, p6

    move v6, v5

    :goto_52
    if-ge v6, v3, :cond_101

    move-object/from16 v7, p4

    .line 3788
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3789
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    if-eqz v9, :cond_f7

    .line 3792
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    if-eqz v10, :cond_e0

    .line 3797
    invoke-virtual {v10}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_f7

    const-string v11, "android.permission.ACTIVITY_RECOGNITION"

    .line 3799
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8f

    sget-object v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 3800
    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8f

    sget-object v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 3801
    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8f

    const/16 v11, 0x80

    .line 3802
    invoke-virtual {v1, v10, v11, v11}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    :cond_8f
    move/from16 v10, p5

    .line 3806
    invoke-static {v4, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object/from16 v11, p1

    .line 3808
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Landroid/util/ArraySet;)Z

    move-result v12

    if-nez v12, :cond_da

    move v12, v5

    .line 3810
    :goto_9e
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_d4

    .line 3812
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3813
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v14

    if-eqz v14, :cond_bd

    .line 3818
    invoke-virtual {v14}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-nez v13, :cond_ba

    const/4 v12, 0x1

    goto :goto_d5

    :cond_ba
    add-int/lit8 v12, v12, 0x1

    goto :goto_9e

    .line 3815
    :cond_bd
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown source permission in split permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    move v12, v5

    :goto_d5
    if-nez v12, :cond_da

    move-object/from16 v12, p3

    goto :goto_fd

    :cond_da
    move-object/from16 v12, p3

    .line 3835
    invoke-virtual {p0, v9, v8, v1, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    goto :goto_fd

    .line 3794
    :cond_e0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown new permission in split permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f7
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v10, p5

    :goto_fd
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_52

    :cond_101
    return-object v4
.end method

.method public setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "PackageManager"

    .line 2517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLicensePermissions : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2519
    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2517
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 2521
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v1

    if-nez v0, :cond_52

    const-string v2, "PackageManager"

    .line 2523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLicensePermissions : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid (NULL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 v2, 0x0

    .line 2529
    :try_start_53
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2531
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v4
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_61} :catch_68

    .line 2532
    :try_start_61
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_65} :catch_66

    goto :goto_89

    :catch_66
    move-exception v3

    goto :goto_6a

    :catch_68
    move-exception v3

    move v4, v2

    :goto_6a
    const-string v5, "PackageManager"

    .line 2534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 2536
    :goto_89
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_93

    const/4 p0, -0x3

    return p0

    .line 2542
    :cond_93
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2543
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9c
    :goto_9c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ","

    .line 2546
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_da

    .line 2547
    array-length v9, v8

    if-lez v9, :cond_da

    move v7, v2

    .line 2548
    :goto_b4
    array-length v9, v8

    if-ge v7, v9, :cond_9c

    .line 2549
    aget-object v9, v8, v7

    .line 2550
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    if-eqz v10, :cond_d7

    .line 2551
    invoke-virtual {p0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v11, :cond_d7

    if-eqz v4, :cond_d4

    .line 2553
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    goto :goto_d7

    .line 2556
    :cond_d4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    :goto_d7
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    :cond_da
    const-string v8, "PackageManager"

    .line 2560
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLicensePermissions : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : invalid permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 2564
    :cond_fa
    invoke-virtual {p0, v1, v6, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeLicensePermissionForMDM([ILjava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 2572
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v6, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p2

    if-eqz p2, :cond_133

    .line 2573
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_133

    if-nez v3, :cond_133

    if-nez v4, :cond_133

    .line 2575
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2576
    :try_start_114
    array-length v4, v1

    move v6, v2

    :goto_116
    if-ge v6, v4, :cond_12e

    aget v7, v1, v6

    .line 2577
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v7

    .line 2579
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 2578
    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    .line 2580
    invoke-virtual {v7, p2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_116

    .line 2582
    :cond_12e
    monitor-exit v3

    goto :goto_133

    :catchall_130
    move-exception p0

    monitor-exit v3
    :try_end_132
    .catchall {:try_start_114 .. :try_end_132} :catchall_130

    throw p0

    .line 2587
    :cond_133
    :goto_133
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object p2

    .line 2588
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_141

    const/4 p0, -0x4

    return p0

    .line 2596
    :cond_141
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2597
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2598
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14f
    :goto_14f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_198

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2599
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-eqz v4, :cond_14f

    .line 2601
    invoke-virtual {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_14f

    .line 2602
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->hasSelectivePermissionsForMDM()Z

    move-result v6

    if-eqz v6, :cond_194

    .line 2603
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 2604
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "PackageManager"

    .line 2605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasSelectivePermissionsForMDM(): permission granted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    .line 2609
    :cond_194
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14f

    .line 2613
    :cond_198
    invoke-virtual {p0, v1, p2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantLicensePermissionForMDM([ILjava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2614
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final setUidMode(IIILjava/lang/String;ZZ)V
    .registers 17

    move-object v1, p0

    .line 2394
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;

    move-object v0, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4023
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v0

    .line 4024
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isOem()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_e

    if-eqz v1, :cond_9f

    .line 4025
    :cond_e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 4026
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4029
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 4030
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4031
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    if-nez p2, :cond_30

    const/4 p2, 0x0

    goto :goto_34

    .line 4032
    :cond_30
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    :goto_34
    if-eqz p2, :cond_55

    if-eqz v0, :cond_3e

    .line 4034
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_46

    :cond_3e
    if-eqz v1, :cond_55

    .line 4035
    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 4037
    :cond_46
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    :cond_50
    :goto_50
    move p2, v3

    goto :goto_68

    .line 4043
    :cond_52
    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_55
    move p2, v2

    goto :goto_68

    :cond_57
    if-eqz v0, :cond_5f

    .line 4047
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result p2

    if-nez p2, :cond_50

    :cond_5f
    if-eqz v1, :cond_55

    .line 4048
    invoke-static {p1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_55

    goto :goto_50

    :goto_68
    if-eqz p2, :cond_a0

    if-eqz v0, :cond_a0

    .line 4053
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVendorPrivileged()Z

    move-result p4

    if-nez p4, :cond_a0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result p4

    if-eqz p4, :cond_a0

    .line 4054
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Permission "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " cannot be granted to privileged vendor apk "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "PackageManager"

    .line 4054
    invoke-static {p4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    move p2, v2

    :cond_a0
    if-nez p2, :cond_b1

    .line 4060
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPre23()Z

    move-result p4

    if-eqz p4, :cond_b1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p4

    const/16 v0, 0x17

    if-ge p4, v0, :cond_b1

    move p2, v3

    :cond_b1
    if-nez p2, :cond_dc

    .line 4069
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isInstaller()Z

    move-result p4

    if-eqz p4, :cond_dc

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x2

    .line 4070
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4072
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4070
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_db

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x7

    .line 4073
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4075
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4072
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_dc

    :cond_db
    move p2, v3

    :cond_dc
    if-nez p2, :cond_f6

    .line 4080
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVerifier()Z

    move-result p4

    if-eqz p4, :cond_f6

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x4

    .line 4081
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4083
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4081
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f6

    move p2, v3

    :cond_f6
    if-nez p2, :cond_105

    .line 4088
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPreInstalled()Z

    move-result p4

    if-eqz p4, :cond_105

    .line 4089
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p4

    if-eqz p4, :cond_105

    move p2, v3

    :cond_105
    if-nez p2, :cond_119

    .line 4093
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isKnownSigner()Z

    move-result p4

    if-eqz p4, :cond_119

    .line 4096
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getKnownCerts()Ljava/util/Set;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result p2

    :cond_119
    if-nez p2, :cond_132

    .line 4104
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSetup()Z

    move-result p4

    if-eqz p4, :cond_132

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4105
    invoke-virtual {p4, v3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4107
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4105
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_132

    move p2, v3

    :cond_132
    if-nez p2, :cond_14c

    .line 4112
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSystemTextClassifier()Z

    move-result p4

    if-eqz p4, :cond_14c

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x6

    .line 4113
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4115
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4113
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14c

    move p2, v3

    :cond_14c
    if-nez p2, :cond_167

    .line 4119
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isConfigurator()Z

    move-result p4

    if-eqz p4, :cond_167

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xa

    .line 4120
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4122
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4120
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_167

    move p2, v3

    :cond_167
    if-nez p2, :cond_182

    .line 4126
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isIncidentReportApprover()Z

    move-result p4

    if-eqz p4, :cond_182

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xb

    .line 4127
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4129
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4127
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_182

    move p2, v3

    :cond_182
    if-nez p2, :cond_19d

    .line 4134
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isAppPredictor()Z

    move-result p4

    if-eqz p4, :cond_19d

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xc

    .line 4135
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4137
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4135
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_19d

    move p2, v3

    :cond_19d
    if-nez p2, :cond_1b8

    .line 4141
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isCompanion()Z

    move-result p4

    if-eqz p4, :cond_1b8

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xf

    .line 4142
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4144
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4142
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1b8

    move p2, v3

    :cond_1b8
    if-nez p2, :cond_1dd

    .line 4148
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRetailDemo()Z

    move-result p4

    if-eqz p4, :cond_1dd

    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0x10

    .line 4149
    invoke-virtual {p4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p4

    .line 4151
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4149
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1dd

    .line 4151
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p4

    invoke-static {p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isProfileOwner(I)Z

    move-result p4

    if-eqz p4, :cond_1dd

    move p2, v3

    :cond_1dd
    if-nez p2, :cond_1f8

    .line 4155
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRecents()Z

    move-result p3

    if-eqz p3, :cond_1f8

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 p3, 0x11

    .line 4156
    invoke-virtual {p0, p3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    .line 4158
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4156
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f8

    goto :goto_1f9

    :cond_1f8
    move v3, p2

    :goto_1f9
    return v3
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .registers 6

    .line 3995
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3997
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3998
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 4009
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 4011
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    const/4 v2, 0x4

    .line 4010
    invoke-virtual {p0, p2, v2}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 4013
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-nez p0, :cond_3e

    .line 4014
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 4015
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 4014
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_3f

    :cond_3e
    const/4 v1, 0x1

    :cond_3f
    return v1
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    .line 1939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1940
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v1, p3, :cond_22

    .line 1941
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canShowRequestPermissionRationale for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :cond_22
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x10000000

    .line 1947
    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 1948
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v3, 0x0

    if-eq v2, v1, :cond_37

    return v3

    .line 1952
    :cond_37
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3e

    return v3

    .line 1958
    :cond_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1960
    :try_start_42
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_a0

    .line 1962
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    and-int/lit8 v1, v0, 0x16

    if-eqz v1, :cond_4e

    return v3

    .line 1973
    :cond_4e
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1974
    :try_start_51
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 1976
    monitor-exit v4

    return v3

    .line 1978
    :cond_5b
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v1

    if-eqz v1, :cond_67

    and-int/lit16 v1, v0, 0x3800

    if-nez v1, :cond_67

    .line 1980
    monitor-exit v4

    return v3

    .line 1982
    :cond_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_9d

    .line 1984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v4, 0x1

    :try_start_6d
    const-string v5, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1986
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_84

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v5, 0x8c7dff3

    .line 1987
    invoke-interface {p0, v5, v6, p1, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_7e} :catch_8a
    .catchall {:try_start_6d .. :try_end_7e} :catchall_88

    if-eqz p0, :cond_84

    .line 1994
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_84
    :goto_84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_93

    :catchall_88
    move-exception p0

    goto :goto_99

    :catch_8a
    move-exception p0

    :try_start_8b
    const-string p1, "PackageManager"

    const-string p2, "Unable to check if compatibility change is enabled."

    .line 1992
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_88

    goto :goto_84

    :goto_93
    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_98

    move v3, v4

    :cond_98
    return v3

    .line 1994
    :goto_99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1995
    throw p0

    :catchall_9d
    move-exception p0

    .line 1982
    :try_start_9e
    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0

    :catchall_a0
    move-exception p0

    .line 1962
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1963
    throw p0
.end method

.method public final updateAdminPermissions()V
    .registers 3

    .line 2648
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-eqz p0, :cond_2c

    const-string p0, "enterprise_license_policy"

    .line 2650
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 2649
    invoke-static {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    const-string v0, "PackageManager"

    if-eqz p0, :cond_1a

    .line 2653
    :try_start_12
    invoke-interface {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->updateAdminPermissions()V

    goto :goto_2c

    :catch_16
    move-exception p0

    goto :goto_20

    :catch_18
    move-exception p0

    goto :goto_29

    :cond_1a
    const-string p0, "ENTERPRISE_LICENSE_POLICY_SERVICE is null"

    .line 2655
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1f} :catch_16

    goto :goto_2c

    :goto_20
    const-string v1, "NPE occurs for EnterpriseLicense"

    .line 2660
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2661
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2c

    .line 2658
    :goto_29
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final updateAllPermissions(Ljava/lang/String;Z)V
    .registers 10

    .line 4552
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    const/4 p2, 0x6

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    :goto_9
    or-int v5, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4558
    :try_start_d
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 4560
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4561
    throw p0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 16

    .line 772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-eq v5, v1, :cond_3b

    if-eqz v5, :cond_3b

    .line 776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_38

    if-eqz p5, :cond_1f

    .line 780
    :try_start_15
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v3, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {p5, v0, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 784
    :cond_1f
    iget-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p5, v5}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result p5

    const/16 v0, 0x1d

    if-ge p5, v0, :cond_2b

    :goto_29
    const/4 v0, 0x1

    goto :goto_38

    .line 786
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 795
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    throw p0

    .line 795
    :cond_38
    :goto_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3b
    move v7, v0

    .line 799
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .registers 14

    .line 934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 935
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    .line 939
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v6

    move v2, p3

    .line 941
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq v6, v0, :cond_24

    move v4, p1

    goto :goto_27

    :cond_24
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    :goto_27
    if-eq v6, v0, :cond_2b

    move v5, p2

    goto :goto_2e

    :cond_2b
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    :goto_2e
    const/4 v6, 0x1

    new-array v7, v6, [Z

    .line 953
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object v1, p0

    move v2, p3

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    aget-boolean v1, v7, v0

    if-eqz v1, :cond_4d

    .line 969
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v6, [I

    aput p3, v2, v0

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    :cond_4d
    return-void
.end method

.method public final updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 16

    .line 821
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "updatePermissionFlags"

    .line 825
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "updatePermissionFlags"

    move-object v1, p0

    move v2, p5

    move v3, p6

    .line 827
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2a

    if-eqz p7, :cond_21

    goto :goto_2a

    .line 833
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    const/16 p7, 0x3e8

    if-eq p5, p7, :cond_5c

    and-int/lit8 p3, p3, -0x11

    and-int/lit8 p4, p4, -0x11

    and-int/lit8 p7, p3, 0x20

    if-nez p7, :cond_3a

    and-int/lit8 p7, p4, 0x20

    if-eqz p7, :cond_44

    .line 843
    :cond_3a
    invoke-virtual {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result p7

    if-nez p7, :cond_44

    and-int/lit8 p3, p3, -0x21

    and-int/lit8 p4, p4, -0x21

    :cond_44
    and-int/lit16 p4, p4, -0x1001

    and-int/lit16 p4, p4, -0x801

    and-int/lit16 p4, p4, -0x2001

    and-int/lit16 p4, p4, -0x4001

    const-string p7, "android.permission.POST_NOTIFICATIONS"

    .line 853
    invoke-virtual {p7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_5c

    const/16 p7, 0x7d0

    if-eq p5, p7, :cond_5c

    if-eqz p5, :cond_5c

    and-int/lit8 p4, p4, -0x41

    .line 859
    :cond_5c
    iget-object p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p7, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p7

    if-nez p7, :cond_7b

    const-string p0, "PackageManager"

    .line 861
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 864
    :cond_7b
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p7, p5, p6}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result p5

    if-nez p5, :cond_153

    .line 870
    invoke-interface {p7}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p5, :cond_b2

    .line 875
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 876
    invoke-virtual {v2, p1, p6}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 877
    array-length v3, v2

    move v4, v1

    :goto_97
    if-ge v4, v3, :cond_b2

    aget-object v5, v2, v4

    .line 878
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_af

    .line 881
    invoke-interface {v5}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    move p5, v0

    goto :goto_b2

    :cond_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 890
    :cond_b2
    :goto_b2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 891
    :try_start_b5
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-eqz v3, :cond_139

    .line 896
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    .line 898
    invoke-virtual {p0, p7, p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    if-nez v5, :cond_e7

    const-string p0, "PackageManager"

    .line 900
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing permissions state for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    monitor-exit v2

    return-void

    .line 904
    :cond_e7
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10f

    if-nez p5, :cond_10f

    const-string p0, "PackageManager"

    .line 905
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Permission "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t requested by package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    monitor-exit v2

    return-void

    .line 909
    :cond_10f
    invoke-virtual {v5, v3, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result p2

    .line 910
    monitor-exit v2
    :try_end_114
    .catchall {:try_start_b5 .. :try_end_114} :catchall_150

    if-eqz p2, :cond_11b

    if-eqz v4, :cond_11b

    .line 913
    invoke-virtual {p0, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_11b
    if-eqz p2, :cond_138

    if-eqz p8, :cond_138

    if-nez v4, :cond_12d

    .line 919
    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p0

    invoke-static {p6, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 920
    invoke-virtual {p8, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    goto :goto_138

    :cond_12d
    new-array p0, v0, [I

    aput p6, p0, v1

    .line 922
    invoke-interface {p7}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    invoke-virtual {p8, p0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    :cond_138
    :goto_138
    return-void

    .line 893
    :cond_139
    :try_start_139
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown permission: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_150
    move-exception p0

    .line 910
    monitor-exit v2
    :try_end_152
    .catchall {:try_start_139 .. :try_end_152} :catchall_150

    throw p0

    .line 865
    :cond_153
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z
    .registers 13

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 4688
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4689
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    .line 4690
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 4691
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/Permission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 4693
    :cond_2f
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    goto :goto_14

    :cond_3a
    if-nez v1, :cond_41

    .line 4703
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4705
    :cond_41
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v5, v0

    goto :goto_14

    .line 4707
    :cond_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_125

    if-eqz v1, :cond_124

    .line 4709
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    .line 4710
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/Permission;

    if-eqz p1, :cond_bd

    .line 4713
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_bd

    .line 4749
    :cond_6c
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4750
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 4751
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4752
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4753
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v2, :cond_89

    if-eqz v3, :cond_89

    .line 4755
    :try_start_87
    monitor-exit v6

    goto :goto_53

    :cond_89
    const-string v2, "PackageManager"

    .line 4757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4758
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4757
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4760
    monitor-exit v6

    goto :goto_53

    :catchall_ba
    move-exception p0

    monitor-exit v6
    :try_end_bc
    .catchall {:try_start_87 .. :try_end_bc} :catchall_ba

    throw p0

    .line 4714
    :cond_bd
    :goto_bd
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z

    move-result v2

    if-nez v2, :cond_112

    const-string v2, "PackageManager"

    .line 4715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " that used to be declared by "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4716
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4715
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_108

    .line 4718
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 4719
    array-length v3, v2

    move v6, v4

    :goto_f7
    if-ge v6, v3, :cond_112

    .line 4721
    aget v7, v2, v6

    .line 4722
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0, v1, v7, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f7

    .line 4727
    :cond_108
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4744
    :cond_112
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4745
    :try_start_115
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4746
    monitor-exit v2

    goto/16 :goto_53

    :catchall_121
    move-exception p0

    monitor-exit v2
    :try_end_123
    .catchall {:try_start_115 .. :try_end_123} :catchall_121

    throw p0

    :cond_124
    return v5

    :catchall_125
    move-exception p0

    .line 4707
    :try_start_126
    monitor-exit v2
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw p0
.end method

.method public final updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIZ)Z"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p6

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v9, :cond_e

    move v0, v12

    goto :goto_f

    :cond_e
    move v0, v13

    .line 2158
    :goto_f
    :try_start_f
    invoke-virtual {v8, v9, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPackagesToUpdate(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 2159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v0, v12

    :goto_18
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_195

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_19b

    :try_start_25
    const-string v1, "AndroidPackage is null "

    .line 2161
    invoke-static {v15, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2163
    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2164
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageSetting is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2168
    iget-object v7, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_4b} :catch_184
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4b} :catch_19b

    .line 2169
    :try_start_4b
    invoke-virtual {v8, v15, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_177

    .line 2171
    :try_start_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing permissions state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_6b} :catch_165
    .catchall {:try_start_4f .. :try_end_6b} :catchall_177

    move-object/from16 v5, p2

    .line 2182
    :try_start_6d
    invoke-virtual {v8, v15, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz p7, :cond_81

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2184
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2185
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2188
    :cond_81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v0

    :goto_87
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_177

    .line 2190
    :try_start_93
    iget-object v1, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasePermission is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_ad} :catch_140
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_ad} :catch_12e
    .catchall {:try_start_93 .. :try_end_ad} :catchall_177

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v18, v4

    move-object v4, v15

    move-object v5, v6

    move-object/from16 v19, v6

    move-object v6, v0

    .line 2193
    :try_start_ba
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPossibleToModify(IILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    goto/16 :goto_15a

    :cond_c2
    if-ne v10, v12, :cond_d5

    move-object/from16 v1, p0

    move/from16 v2, p6

    move-object v3, v15

    move-object/from16 v4, v19

    move-object v5, v0

    move-object/from16 v6, v18

    .line 2199
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleGrantLocked(ILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;)Z

    move-result v0
    :try_end_d2
    .catch Ljava/lang/NullPointerException; {:try_start_ba .. :try_end_d2} :catch_124
    .catch Ljava/lang/RuntimeException; {:try_start_ba .. :try_end_d2} :catch_11a
    .catchall {:try_start_ba .. :try_end_d2} :catchall_177

    move-object/from16 v20, v7

    goto :goto_101

    :cond_d5
    const/4 v1, 0x2

    if-ne v10, v1, :cond_fe

    move-object/from16 v1, p0

    move/from16 v2, p6

    move-object v3, v15

    move-object/from16 v4, v19

    move-object v5, v0

    move-object/from16 v6, v18

    move-object/from16 v20, v7

    move/from16 v7, p7

    .line 2202
    :try_start_e6
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleDenyLocked(ILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Lcom/android/server/pm/permission/Permission;Z)Z

    move-result v0
    :try_end_ea
    .catch Ljava/lang/NullPointerException; {:try_start_e6 .. :try_end_ea} :catch_f8
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_ea} :catch_f2
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_eb

    goto :goto_101

    :catchall_eb
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    goto/16 :goto_17e

    :catch_f2
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    goto :goto_121

    :catch_f8
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    goto :goto_12b

    :cond_fe
    move-object/from16 v20, v7

    move v0, v12

    :goto_101
    if-eqz v0, :cond_113

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    .line 2208
    :try_start_10b
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    :try_end_10e
    .catch Ljava/lang/NullPointerException; {:try_start_10b .. :try_end_10e} :catch_111
    .catch Ljava/lang/RuntimeException; {:try_start_10b .. :try_end_10e} :catch_10f
    .catchall {:try_start_10b .. :try_end_10e} :catchall_182

    goto :goto_153

    :catch_10f
    move-exception v0

    goto :goto_136

    :catch_111
    move-exception v0

    goto :goto_148

    :cond_113
    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, v19

    goto :goto_151

    :catch_11a
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v20, v7

    :goto_121
    move-object/from16 v3, v19

    goto :goto_136

    :catch_124
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v20, v7

    :goto_12b
    move-object/from16 v3, v19

    goto :goto_148

    :catch_12e
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object v3, v6

    move-object/from16 v20, v7

    :goto_136
    :try_start_136
    const-string v4, "PackageManager"

    .line 2216
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    :catch_140
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object v3, v6

    move-object/from16 v20, v7

    :goto_148
    const-string v4, "PackageManager"

    .line 2213
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_151
    move/from16 v17, v13

    :goto_153
    move-object/from16 v5, p2

    move-object v6, v3

    move-object/from16 v7, v20

    goto/16 :goto_87

    :cond_15a
    :goto_15a
    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v20, v7

    .line 2220
    monitor-exit v20

    move/from16 v0, v17

    goto/16 :goto_18

    :catch_165
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v20, v7

    const-string v3, "PackageManager"

    .line 2175
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    monitor-exit v20

    return v13

    :catchall_177
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v20, v7

    .line 2220
    :goto_17e
    monitor-exit v20
    :try_end_17f
    .catchall {:try_start_136 .. :try_end_17f} :catchall_182

    :try_start_17f
    throw v0
    :try_end_180
    .catch Ljava/lang/NullPointerException; {:try_start_17f .. :try_end_180} :catch_180
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_180} :catch_19b

    :catch_180
    move-exception v0

    goto :goto_189

    :catchall_182
    move-exception v0

    goto :goto_17e

    :catch_184
    move-exception v0

    move/from16 v1, p4

    move/from16 v2, p5

    :goto_189
    :try_start_189
    const-string v3, "PackageManager"

    .line 2223
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    goto/16 :goto_18

    .line 2226
    :cond_195
    iget-object v1, v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v11, v13}, Landroid/content/pm/PackageManagerInternal;->writeRuntimePermissionsForUserLPrForMDM(IZ)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_19a} :catch_19b

    return v0

    :catch_19b
    move-exception v0

    .line 2228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "PackageManager"

    .line 2229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed with Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method

.method public final updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 11

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4842
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4843
    :try_start_9
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4844
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 4845
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 4846
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_13

    :cond_2a
    if-eqz p2, :cond_36

    .line 4855
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    :cond_36
    const-string v1, "PackageManager"

    .line 4856
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4857
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4856
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4858
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_5f
    if-nez v2, :cond_67

    .line 4861
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v1

    .line 4863
    :cond_67
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_13

    .line 4865
    :cond_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_9 .. :try_end_6d} :catchall_d1

    if-eqz v2, :cond_d0

    .line 4867
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/Permission;

    .line 4868
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4869
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 4870
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4871
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4872
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v0, :cond_9c

    if-eqz v2, :cond_9c

    .line 4874
    :try_start_9a
    monitor-exit v3

    goto :goto_73

    :cond_9c
    const-string v0, "PackageManager"

    .line 4876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dangling permission tree: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4877
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4876
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4879
    monitor-exit v3

    goto :goto_73

    :catchall_cd
    move-exception p0

    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_9a .. :try_end_cf} :catchall_cd

    throw p0

    :cond_d0
    return v1

    :catchall_d1
    move-exception p0

    .line 4865
    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw p0
.end method

.method public final updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 10

    if-nez p2, :cond_4

    const/4 v0, 0x3

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    move v5, v0

    .line 4536
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4535
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method public final updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 4623
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    move-object/from16 v9, p5

    .line 4627
    invoke-virtual {v7, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1c

    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    .line 4633
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, p4, 0x1

    move v10, v0

    goto :goto_1e

    :cond_1c
    move/from16 v10, p4

    :goto_1e
    const-wide/32 v11, 0x40000

    const-string/jumbo v0, "restorePermissionState"

    .line 4637
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_49

    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_31

    const/4 v3, 0x1

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    .line 4641
    :goto_32
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_49
    if-eqz p2, :cond_6a

    .line 4655
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_5d

    move-object/from16 v1, p3

    .line 4657
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v2, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    .line 4658
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    :cond_6a
    if-nez v13, :cond_74

    if-eqz v8, :cond_74

    .line 4663
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPkgLicenseActivated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 4664
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAdminPermissions()V

    .line 4668
    :cond_77
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public writeLegacyPermissionStateTEMP()V
    .registers 4

    .line 5216
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v1

    .line 5218
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 5219
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[I)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    return-void

    :catchall_15
    move-exception p0

    .line 5218
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4f

    .line 5308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5309
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez v1, :cond_16

    .line 5311
    :try_start_f
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v4

    goto :goto_1c

    :cond_16
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    .line 5312
    :goto_1c
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 5314
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 5315
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v5

    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v6, v7, v5, v0, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 5317
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 5319
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_4c

    if-nez v1, :cond_46

    .line 5321
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_49

    .line 5323
    :cond_46
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_4c
    move-exception p0

    .line 5319
    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    return-void
.end method
