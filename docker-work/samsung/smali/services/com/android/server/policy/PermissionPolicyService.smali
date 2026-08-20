.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$Internal;,
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;,
        Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "PermissionPolicyService"

.field public static final NOTIFICATION_PERM_CHANGE_ID:J = 0xb9cec21L

.field public static final SYSTEM_PKG:Ljava/lang/String; = "android"

.field public static final USER_SENSITIVE_UPDATE_DELAY_MS:J = 0xea60L


# instance fields
.field public mAppOpPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public mBootCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsPackageSyncsScheduled:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mIsStarted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLock:Ljava/lang/Object;

.field public mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

.field public mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$Q9k9U27pAhp2mAT-DmNupRvkYwE(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnDRakQtMnR8LtloM1QJwVK3a38(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dasocVEhhMOxl_Co25Vo-yuaDf8(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$la2EuOntWnY3Epfe3DmXIAtWV1M(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rd-wRS1VmTcWPlWJqKsNJNLcaT4(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/policy/PermissionPolicyService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PermissionPolicyService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsStarted(Lcom/android/server/policy/PermissionPolicyService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/notification/NotificationManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitTelephonyManagerIfNeeded(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterCarrierPrivilegesCallbacks(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetAppOpPermissionsIfNotRequestedForUidAsync(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUidAsync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msynchronizePackagePermissionsAndAppOpsAsyncForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterCarrierPrivilegesCallback(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->unregisterCarrierPrivilegesCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetSwitchOp(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 139
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 150
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 157
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 531
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PermissionPolicyService$4;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 184
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 185
    const-class p1, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$Internal-IA;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static getSwitchOp(Ljava/lang/String;)I
    .registers 2

    .line 387
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    return v0

    .line 392
    :cond_8
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p0

    return p0
.end method

.method public static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 656
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 658
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create context for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V
    .registers 4

    .line 624
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p1, 0x0

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_29

    .line 629
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error granting/upgrading runtime permissions for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 631
    sget-object p2, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_29
    return-void
.end method

.method public static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 715
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .registers 7

    .line 600
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 602
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 603
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 604
    const-class v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 605
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 606
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 610
    sget-object v2, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultPermsWereGrantedSinceBoot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 618
    new-instance v3, Landroid/permission/PermissionControllerManager;

    .line 620
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 621
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 623
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v4, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;I)V

    .line 622
    invoke-virtual {v3, p0, v4}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 636
    :try_start_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission_callback_waiting-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_73} :catch_7f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5c .. :try_end_73} :catch_7f
    .catchall {:try_start_5c .. :try_end_73} :catchall_7d

    .line 641
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 644
    invoke-virtual {v3}, Landroid/permission/PermissionControllerManager;->updateUserSensitive()V

    .line 646
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->updateRuntimePermissionsFingerprint(I)V

    goto :goto_8a

    :catchall_7d
    move-exception p0

    goto :goto_86

    :catch_7f
    move-exception p0

    .line 639
    :try_start_80
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_7d

    .line 641
    :goto_86
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 642
    throw p0

    :cond_8a
    :goto_8a
    return-void
.end method

.method public final initTelephonyManagerIfNeeded()V
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_c

    .line 456
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_c
    return-void
.end method

.method public final isStarted(I)Z
    .registers 3

    .line 546
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 548
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 9

    const/16 v0, 0x208

    if-ne p1, v0, :cond_15

    .line 424
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->registerCarrierPrivilegesCallbacks()V

    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mSimConfigBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_15
    const/16 v0, 0x226

    if-ne p1, v0, :cond_37

    .line 431
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 434
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_37

    aget v5, v2, v4

    .line 435
    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 436
    invoke-virtual {p0, v5}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_37
    if-ne p1, v0, :cond_44

    .line 442
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    .line 443
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->-$$Nest$monActivityManagerReady(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    :cond_44
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_53

    .line 447
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 448
    :try_start_4c
    iput-boolean v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    .line 449
    monitor-exit p1

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit p1
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method public onStart()V
    .registers 16

    const-string v0, "Cannot set up app-ops listener"

    .line 190
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 192
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "appops"

    .line 195
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 194
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 246
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    .line 249
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 257
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v3, 0x1

    .line 258
    invoke-interface {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 261
    :try_start_45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_4a
    if-ge v8, v7, :cond_82

    .line 263
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 265
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v10

    if-eqz v10, :cond_63

    .line 266
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v10, v6, v11}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 268
    :cond_63
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 269
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 270
    invoke-static {v6, v6, v6, v6, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v9

    .line 272
    invoke-virtual {v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v9

    if-eq v9, v4, :cond_7a

    .line 274
    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_7a} :catch_7d

    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 279
    :catch_7d
    sget-object v2, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_82
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/16 v7, 0x40

    .line 283
    invoke-interface {v2, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 285
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 286
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    move v8, v5

    :goto_96
    if-ge v8, v7, :cond_ed

    .line 288
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 290
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_138

    :goto_aa
    move v10, v4

    goto :goto_cc

    :sswitch_ac
    const-string v11, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b5

    goto :goto_aa

    :cond_b5
    const/4 v10, 0x2

    goto :goto_cc

    :sswitch_b7
    const-string v11, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c0

    goto :goto_aa

    :cond_c0
    move v10, v3

    goto :goto_cc

    :sswitch_c2
    const-string v11, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_cb

    goto :goto_aa

    :cond_cb
    move v10, v5

    :goto_cc
    packed-switch v10, :pswitch_data_146

    .line 300
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v4, :cond_ea

    .line 303
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :try_start_de
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e3} :catch_e4

    goto :goto_ea

    :catch_e4
    move-exception v9

    .line 307
    sget-object v10, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v0, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ea
    :goto_ea
    :pswitch_ea
    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    .line 313
    :cond_ed
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 314
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 315
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 316
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/policy/PermissionPolicyService$3;

    invoke-direct {v10, p0}, Lcom/android/server/policy/PermissionPolicyService$3;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 370
    new-instance v0, Landroid/permission/PermissionControllerManager;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 372
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 373
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda5;-><init>(Landroid/permission/PermissionControllerManager;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :sswitch_data_138
    .sparse-switch
        0x1277d93c -> :sswitch_c2
        0x50b27c6d -> :sswitch_b7
        0x69eee241 -> :sswitch_ac
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
    .end packed-switch
.end method

.method public final onStartUser(I)V
    .registers 6

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 564
    :cond_7
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission_grant_default_permissions-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V

    .line 567
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 571
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_29
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 573
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 574
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_69

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission_synchronize_permissions-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 579
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v2, :cond_68

    .line 583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission_onInitialized-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 584
    invoke-interface {v2, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 585
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_68
    return-void

    :catchall_69
    move-exception p0

    .line 574
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 553
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 595
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final registerCarrierPrivilegesCallbacks()V
    .registers 6

    .line 461
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    .line 462
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_8

    return-void

    .line 466
    :cond_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    .line 468
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;-><init>(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 469
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method public final resetAppOpPermissionsIfNotRequestedForUid(I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 736
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_7
    iget-object v2, v0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 738
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b3

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 742
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 741
    invoke-static {v1, v2}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 742
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 743
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b2

    .line 744
    array-length v3, v8

    if-nez v3, :cond_28

    goto/16 :goto_b2

    .line 748
    :cond_28
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 749
    array-length v3, v8

    const/4 v10, 0x0

    move v4, v10

    :goto_30
    if-ge v4, v3, :cond_47

    aget-object v5, v8, v4

    const/16 v6, 0x1000

    .line 752
    :try_start_36
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_3a} :catch_44

    if-eqz v5, :cond_44

    .line 756
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_41

    goto :goto_44

    .line 759
    :cond_41
    invoke-static {v9, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :catch_44
    :cond_44
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 762
    :cond_47
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/AppOpsManager;

    .line 763
    const-class v1, Landroid/app/AppOpsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/app/AppOpsManagerInternal;

    .line 765
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    move v14, v10

    :goto_60
    if-ge v14, v13, :cond_b2

    .line 767
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 769
    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 770
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v15

    .line 771
    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    .line 772
    array-length v5, v8

    move v4, v10

    :goto_7a
    if-ge v4, v5, :cond_af

    aget-object v3, v8, v4

    .line 773
    invoke-virtual {v11, v15, v7, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_a2

    .line 776
    iget-object v1, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v12, v15, v7, v6, v1}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 778
    iget-object v2, v0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object v1, v12

    move-object/from16 v16, v2

    move v2, v15

    move-object/from16 v17, v3

    move/from16 v3, p1

    move/from16 v18, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move v5, v6

    move/from16 v19, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_a8

    :cond_a2
    move/from16 v18, v4

    move/from16 v17, v5

    move/from16 v19, v6

    :goto_a8
    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v17

    move/from16 v6, v19

    goto :goto_7a

    :cond_af
    add-int/lit8 v14, v14, 0x1

    goto :goto_60

    :cond_b2
    :goto_b2
    return-void

    :catchall_b3
    move-exception v0

    .line 738
    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0
.end method

.method public final resetAppOpPermissionsIfNotRequestedForUidAsync(I)V
    .registers 5

    .line 723
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 724
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 726
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 727
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda0;-><init>()V

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 727
    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 731
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw p0

    :cond_34
    :goto_34
    return-void
.end method

.method public final synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .registers 7

    .line 397
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 398
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 405
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda2;-><init>()V

    .line 408
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 405
    invoke-static {v2, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    :cond_2e
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .registers 10

    .line 669
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 671
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5e

    .line 679
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p1

    move v6, p2

    .line 681
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_28

    return-void

    .line 686
    :cond_28
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 687
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 688
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 689
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 692
    array-length p1, p0

    const/4 p2, 0x0

    :goto_46
    if-ge p2, p1, :cond_5a

    aget-object v2, p0, p2

    .line 694
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 696
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    :cond_57
    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    .line 699
    :cond_5a
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    return-void

    :catchall_5e
    move-exception p0

    .line 671
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public final synchronizePermissionsAndAppOpsForUser(I)V
    .registers 7

    .line 707
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 709
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 711
    new-instance v2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 712
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 713
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission_synchronize_addPackages-"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 714
    new-instance p0, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;

    invoke-direct {p0, v2}, Lcom/android/server/policy/PermissionPolicyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 716
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission_syncPackages-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 718
    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->-$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 719
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final unregisterCarrierPrivilegesCallback()V
    .registers 4

    .line 476
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->initTelephonyManagerIfNeeded()V

    .line 477
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 481
    :goto_9
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 482
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;

    if-eqz v1, :cond_20

    .line 484
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 487
    :cond_23
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPhoneCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
