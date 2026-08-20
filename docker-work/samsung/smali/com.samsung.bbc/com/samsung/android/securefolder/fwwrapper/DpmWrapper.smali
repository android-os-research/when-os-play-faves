.class public Lcom/samsung/android/securefolder/fwwrapper/DpmWrapper;
.super Ljava/lang/Object;
.source "DpmWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveAdminsAsUser(Landroid/app/admin/DevicePolicyManager;I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/DevicePolicyManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static semGetAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 3

    const-string v0, "device_policy"

    .line 29
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 32
    :try_start_c
    invoke-interface {v0, p0, p1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static setActiveAdmin(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;ZI)V
    .registers 4

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    return-void
.end method

.method public static setProfileOwner(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
