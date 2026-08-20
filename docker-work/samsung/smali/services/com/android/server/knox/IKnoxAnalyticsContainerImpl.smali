.class public Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;
.super Ljava/lang/Object;
.source "IKnoxAnalyticsContainerImpl.java"

# interfaces
.implements Lcom/android/server/knox/IKnoxAnalyticsContainer;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mContext:Landroid/content/Context;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final personaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IFKnoxAnalyticsContainer"

    .line 42
    iput-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->TAG:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 68
    iput-object p3, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 69
    iput-object p1, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .registers 3

    .line 204
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    return p0
.end method

.method public getAdminComponentForLegacy(I)Landroid/content/ComponentName;
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAdminComponentNameFromEdm(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getCallerIdToShow(I)I
    .registers 5

    .line 211
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 213
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller_id_to_show_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getDeviceOwnerPackage()Ljava/lang/String;
    .registers 5

    const-string p0, "device_policy"

    .line 276
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 275
    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const-string v0, "IFKnoxAnalyticsContainer"

    const/4 v1, 0x0

    if-eqz p0, :cond_31

    const/4 v2, 0x0

    .line 280
    :try_start_10
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 282
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1c

    move-object v1, p0

    goto :goto_31

    :catch_1c
    move-exception p0

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceOwnerPackage exception -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_31
    :goto_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceOwnerPackage packageName -"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_10

    .line 60
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 63
    :cond_10
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getDisabledPrintServices(I)Ljava/lang/String;
    .registers 3

    .line 189
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disabled_print_services"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 332
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKnoxFingerprintPlus(I)I
    .registers 4

    .line 184
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "knox_finger_print_plus"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getKnoxScreenTimeOut(I)I
    .registers 5

    .line 173
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "knox_screen_off_timeout"

    if-eqz v0, :cond_15

    .line 174
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 177
    :cond_15
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getLocationProvidersAllowed(I)I
    .registers 4

    .line 199
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "location_providers_allowed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getLockScreenAllowPrivateNotification(I)I
    .registers 4

    .line 194
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 118
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileOwnerPackage(I)Ljava/lang/String;
    .registers 5

    const-string v0, "IFKnoxAnalyticsContainer"

    const/4 v1, 0x0

    .line 261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 262
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 264
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1e

    move-object v1, p0

    goto :goto_34

    :catch_1e
    move-exception p0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileOwnerPackage exception -"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_34
    :goto_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getProfileOwnerPackage packageName -"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getSeparatedAppsConfig()Landroid/os/Bundle;
    .registers 1

    .line 135
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSeparatedAppsContainerId()J
    .registers 5

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 77
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 78
    iget-wide v2, p0, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_1a
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    :catchall_18
    move-exception p0

    goto :goto_24

    :catch_1a
    move-exception p0

    .line 80
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v2, 0x0

    :goto_23
    return-wide v2

    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    throw p0
.end method

.method public getSeparatedAppsUserId()I
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p0

    return p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->userManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 52
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->userManager:Landroid/os/UserManager;

    .line 55
    :cond_11
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->userManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public getVisibleApps(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0xc0000

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 324
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 325
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 326
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    return-object p1
.end method

.method public final hasKnoxPermission(Ljava/lang/String;)Z
    .registers 5

    const-string p0, "IFKnoxAnalyticsContainer"

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "enterprise_license_policy"

    .line 244
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 247
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1d

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    :catch_1d
    move-exception p1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasKnoxPermission error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const-string p1, "EnterpriseLicenseService is null"

    .line 254
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    .line 125
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isDoEnabled(I)Z
    .registers 2

    .line 160
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isIMPackage(Ljava/lang/String;I)I
    .registers 7

    .line 295
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x808280

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    .line 303
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 304
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 305
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 306
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 307
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 p2, 0x1

    goto :goto_3b

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_3b
    :goto_3b
    return p2
.end method

.method public isKnoxId(I)Z
    .registers 2

    .line 110
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public final isKnoxMode(I)Z
    .registers 6

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->hasKnoxPermission(Ljava/lang/String;)Z

    move-result v2

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    if-eqz v0, :cond_17

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->hasKnoxPermission(Ljava/lang/String;)Z

    move-result v1

    .line 238
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isKnoxPO & isKnoxDO = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int p1, v2, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IFKnoxAnalyticsContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isLegacyClId(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isOrganizationOwned()Z
    .registers 2

    const-string/jumbo p0, "ro.organization_owned"

    .line 166
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPremiumLicenseActivated(I)Z
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isKnoxMode(I)Z

    move-result p0

    return p0
.end method

.method public isSecureFolderId(I)Z
    .registers 2

    .line 105
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method

.method public isSeparatedAppsIndepdentApp(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cTp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_16

    return-void

    .line 100
    :cond_16
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method
