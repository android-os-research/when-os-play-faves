.class public abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeDeviceCompliant()V
    .registers 1

    return-void
.end method

.method public canAdminGrantSensorsPermissionsForUser(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public canProfileOwnerResetPasswordWhenLocked(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .registers 1

    return-void
.end method

.method public createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .registers 3

    return-void
.end method

.method public getDeviceOwnerType(Landroid/content/ComponentName;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, ""

    return-object p0
.end method

.method public getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract handleOnUserUnlocked(I)V
.end method

.method public abstract handleStartUser(I)V
.end method

.method public abstract handleStopUser(I)V
.end method

.method public abstract handleUnlockUser(I)V
.end method

.method public isComplianceAcknowledgementRequired()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public resetDefaultCrossProfileIntentFilters(I)V
    .registers 2

    return-void
.end method

.method public resetDrawables(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public resetStrings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .registers 3

    return-void
.end method

.method public setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V
    .registers 4

    .line 88
    sget-object p1, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDevicePolicySafetyChecker() not implemented by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDrawables(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public setLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 3

    return-void
.end method

.method public setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .registers 4

    return-void
.end method

.method public setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .registers 3

    return-void
.end method

.method public setStrings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract systemReady(I)V
.end method
