.class public interface abstract Lcom/samsung/android/knox/ExternalDependencyInjector;
.super Ljava/lang/Object;
.source "ExternalDependencyInjector.java"


# virtual methods
.method public greylist getApplicationRestrictionsMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist setApplicationRestrictionsMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist storageVolumeGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method
