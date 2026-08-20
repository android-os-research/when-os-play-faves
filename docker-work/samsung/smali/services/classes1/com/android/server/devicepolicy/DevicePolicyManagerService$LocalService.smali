.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerLiteInternal;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public mWidgetProviderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$OIa6Hr7GU76WUSDqjB1P8Hw6US0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->lambda$reportSeparateProfileChallengeChanged$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TQzJEBpWFmaDv01POK1RU3lYSWk(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->lambda$getPrintingDisabledReasonForUser$1(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyCrossProfileProvidersChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 13918
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getPrintingDisabledReasonForUser$1(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14076
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    const-string p1, "DevicePolicyManager"

    const-string v0, "getPackageInfo error"

    .line 14078
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$reportSeparateProfileChallengeChanged$0(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14048
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14049
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 14050
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mupdatePasswordQualityCacheForUserGroup(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 14051
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4

    .line 13948
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13949
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_12

    .line 13950
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 13952
    :cond_12
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 13953
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13955
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final broadcastIntentToCrossProfileManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 15

    const-string v0, "DevicePolicyManager"

    .line 14136
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 14138
    :try_start_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    const-wide/16 v4, 0x400

    move-object v2, p1

    move v6, v7

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 14140
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 14141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 14142
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 14143
    invoke-virtual {p0, v3, v7, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkCrossProfilePackagePermissions(Ljava/lang/String;IZ)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 14145
    invoke-virtual {p0, v3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->checkModifyQuietModePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_3c
    const-string v4, "Sending %s broadcast to %s."

    new-array v5, v10, [Ljava/lang/Object;

    .line 14146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v3, v5, v8

    invoke-static {v0, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14148
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 14149
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000000

    .line 14150
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 14151
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_69} :catch_6a

    goto :goto_1e

    :catch_6a
    move-exception p0

    new-array p2, v10, [Ljava/lang/Object;

    .line 14156
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v9

    aput-object p0, p2, v8

    const-string p0, "Cannot get list of broadcast receivers for %s because: %s."

    .line 14155
    invoke-static {v0, p0, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method public final broadcastIntentToDevicePolicyManagerRoleHolder(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 10

    .line 14162
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 14163
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDevicePolicyManagementRoleHolderPackageName(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 14168
    :cond_f
    :try_start_f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 14169
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 14170
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const-wide/16 v3, 0x400

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 14174
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 14175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    .line 14178
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 14179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 14180
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000000

    .line 14181
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 14182
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_5d} :catch_5e

    goto :goto_33

    :catch_5e
    move-exception p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14186
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    const-string p0, "DevicePolicyManager"

    const-string p1, "Cannot get list of broadcast receivers for %s because: %s."

    .line 14185
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method public broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .registers 7

    .line 14126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14127
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 14128
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DevicePolicyManager"

    const-string v2, "Sending %s broadcast to manifest receivers."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->broadcastIntentToCrossProfileManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 14131
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->broadcastIntentToDevicePolicyManagerRoleHolder(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public canSilentlyInstallPackage(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 14035
    :cond_4
    new-instance p1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 14036
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isUserAffiliatedWithDevice(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 14037
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isActiveProfileOwner(I)Z

    move-result p2

    if-nez p2, :cond_2a

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14038
    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misDefaultDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p2

    if-nez p2, :cond_2a

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misFinancedDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    return v0
.end method

.method public final checkCrossProfilePackagePermissions(Ljava/lang/String;IZ)Z
    .registers 6

    .line 14216
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 14218
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 14219
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCrossProfile()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_39

    :cond_16
    const/4 v0, 0x1

    if-nez p3, :cond_1a

    return v0

    .line 14225
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    .line 14229
    :cond_21
    :try_start_21
    const-class p0, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 14231
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/CrossProfileAppsInternal;->verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result p0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "DevicePolicyManager"

    const-string p2, "Cannot find the package %s to check for permissions."

    .line 14234
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    :goto_39
    return v1
.end method

.method public final checkModifyQuietModePermission(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14196
    :try_start_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 14197
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 14198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14197
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 14196
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string p2, "android.permission.MODIFY_QUIET_MODE"

    const/4 v2, -0x1

    .line 14200
    invoke-static {p2, p0, v2, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_20} :catch_25

    if-nez p0, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    :catch_25
    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "DevicePolicyManager"

    const-string p2, "Cannot find the package %s to check for permissions."

    .line 14204
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .registers 5

    .line 14007
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetEnforcingAdminAndUserDetailsInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_c

    goto :goto_d

    :cond_c
    return-object v1

    .line 14009
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mcreateShowAdminSupportIntent(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 14017
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetEnforcingAdminAndUserDetailsInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 14018
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mcreateShowAdminSupportIntent(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.app.extra.RESTRICTION"

    .line 14019
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method public final findInteractAcrossProfilesResetMode(Ljava/lang/String;)I
    .registers 2

    .line 14332
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_12

    :cond_c
    const/16 p0, 0x5d

    .line 14334
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    :goto_12
    return p0
.end method

.method public getAllCrossProfilePackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14115
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13924
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13925
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_13

    .line 13926
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 13928
    :cond_13
    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 13930
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 13933
    :cond_1f
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object p0

    .line 13934
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz p0, :cond_3e

    .line 13936
    iget-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz p1, :cond_3e

    .line 13937
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3e

    .line 13941
    :cond_3a
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object p0

    .line 13938
    :cond_3e
    :goto_3e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_44
    move-exception p0

    .line 13942
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public getDefaultCrossProfilePackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14120
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceOwnerUserId()I
    .registers 1

    .line 14263
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result p0

    return p0
.end method

.method public getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .registers 1

    .line 14105
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmPolicyCache(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .registers 1

    .line 14110
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmStateCache(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .registers 9

    .line 14062
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14063
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_printing"

    .line 14064
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 14063
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2d

    const-string p0, "DevicePolicyManager"

    const-string/jumbo v1, "printing is enabled for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 14065
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p0, v1, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14066
    monitor-exit v0

    return-object v4

    .line 14068
    :cond_2d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3f

    .line 14070
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object p1

    .line 14073
    :cond_3f
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 14074
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_62

    const-string p0, "DevicePolicyManager"

    const-string/jumbo p1, "packageInfo is inexplicably null"

    .line 14083
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14084
    monitor-exit v0

    return-object v4

    .line 14086
    :cond_62
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_6f

    const-string p0, "DevicePolicyManager"

    const-string p1, "appInfo is inexplicably null"

    .line 14088
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14089
    monitor-exit v0

    return-object v4

    .line 14091
    :cond_6f
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_7e

    const-string p0, "DevicePolicyManager"

    const-string p1, "appLabel is inexplicably null"

    .line 14093
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14094
    monitor-exit v0

    return-object v4

    .line 14096
    :cond_7e
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "Core.PRINTING_DISABLED_NAMED_ADMIN"

    const v4, 0x1040b47

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v1, v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetUpdatableString(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_8f
    move-exception p0

    .line 14100
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_7 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 2

    .line 14258
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 2

    .line 13961
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public isActiveDeviceOwner(I)Z
    .registers 4

    .line 13967
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v0, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misDefaultDeviceOwner(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    return p0
.end method

.method public isActiveProfileOwner(I)Z
    .registers 4

    .line 13972
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v0, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    return p0
.end method

.method public isActiveSupervisionApp(I)Z
    .registers 5

    .line 13977
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v1, Lcom/android/server/devicepolicy/CallerIdentity;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/android/server/devicepolicy/CallerIdentity;-><init>(ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 13980
    :cond_10
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13981
    :try_start_17
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdminLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object p1

    if-nez p1, :cond_25

    .line 13983
    monitor-exit v0

    return v1

    .line 13986
    :cond_25
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misSupervisionComponentLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_33
    move-exception p0

    .line 13987
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3

    .line 14268
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isDeviceOwnerInCallingUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 14269
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isProfileOwnerInCallingUser(Ljava/lang/String;)Z

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

.method public final isDeviceOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3

    .line 14273
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v0, 0x1

    .line 14274
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 14277
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public final isPackageEnabled(Ljava/lang/String;I)Z
    .registers 11

    .line 14241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 14242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 14244
    :try_start_8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v2, 0xc0000

    move-object v1, p1

    move v5, p2

    .line 14245
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 14250
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    .line 14252
    :goto_24
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_28
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14253
    throw p0
.end method

.method public final isProfileOwnerInCallingUser(Ljava/lang/String;)Z
    .registers 3

    .line 14282
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 14284
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .registers 2

    .line 14026
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misUserAffiliatedWithDeviceLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p0

    return p0
.end method

.method public notifyChangesOnWifiPolicy()V
    .registers 3

    .line 14375
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14376
    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetStrictestMinimumRequiredWifiSecurityLevelLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)I

    move-result v1

    .line 14375
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyMinimumRequiredWifiSecurityLevelChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 14378
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetCombinedWifiSsidPolicyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/WifiSsidPolicy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyWifiSsidPolicyChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/app/admin/WifiSsidPolicy;)V

    return-void
.end method

.method public final notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13992
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13993
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13994
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 13995
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_14
    if-ge v0, p0, :cond_22

    .line 13997
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 13998
    invoke-interface {v2, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    return-void

    :catchall_23
    move-exception p0

    .line 13994
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V
    .registers 9

    .line 14312
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string/jumbo p1, "invalid checker: should be %s, was %s"

    invoke-static {v0, p1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14315
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.app.extra.OPERATION_SAFETY_REASON"

    .line 14316
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "android.app.extra.OPERATION_SAFETY_STATE"

    .line 14317
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14319
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result p2

    const-string p3, "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

    if-eqz p2, :cond_40

    .line 14321
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14324
    :cond_40
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14326
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p3, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msendProfileOwnerCommand(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_4c

    :cond_62
    return-void
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .registers 4

    .line 14047
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/16 v0, 0x6e

    .line 14054
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14055
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misSeparateProfileChallengeEnabled(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 14056
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 14057
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->invalidateBinderCaches()V

    return-void
.end method

.method public resetOp(ILjava/lang/String;I)V
    .registers 5

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_14

    .line 14298
    const-class p1, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/CrossProfileAppsInternal;

    .line 14300
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->findInteractAcrossProfilesResetMode(Ljava/lang/String;)I

    move-result p0

    .line 14299
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/pm/CrossProfileAppsInternal;->setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V

    return-void

    .line 14296
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported op for DPM reset: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V
    .registers 6

    .line 14341
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14342
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p0, "DevicePolicyManager"

    const-string/jumbo p1, "setMinimumRequiredWifiSecurityLevel - admin is null!"

    .line 14344
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14345
    monitor-exit v0

    return-void

    .line 14347
    :cond_19
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p3, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetMinimumRequiredWifiSecurityLevelLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/ActiveAdmin;I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 14351
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14352
    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetStrictestMinimumRequiredWifiSecurityLevelLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)I

    move-result p1

    .line 14351
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyMinimumRequiredWifiSecurityLevelChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 14354
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V
    .registers 6

    .line 14360
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14361
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p0, "DevicePolicyManager"

    const-string/jumbo p1, "setWifiSsidPolicy - admin is null!"

    .line 14363
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14364
    monitor-exit v0

    return-void

    .line 14366
    :cond_19
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p3, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetWifiSsidPolicyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/ActiveAdmin;Landroid/app/admin/WifiSsidPolicy;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 14368
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetCombinedWifiSsidPolicyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/admin/WifiSsidPolicy;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyWifiSsidPolicyChanged(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/app/admin/WifiSsidPolicy;)V

    .line 14370
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public supportsResetOp(I)Z
    .registers 2

    const/16 p0, 0x5d

    if-ne p1, p0, :cond_e

    .line 14289
    const-class p0, Landroid/content/pm/CrossProfileAppsInternal;

    .line 14290
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
