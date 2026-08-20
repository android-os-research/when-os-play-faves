.class public abstract Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .registers 1

    .line 34
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getEdmsInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method


# virtual methods
.method public abstract getActiveAdminPackageName(I)Ljava/lang/String;
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getFirmwareUpgrade()Z
.end method

.method public abstract getOrganizationOwnedProfileUserId()I
.end method

.method public abstract getPseudoAdminUid()I
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isMdmAdminPresent()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public abstract startDeferredServicesIfNeeded()V
.end method
