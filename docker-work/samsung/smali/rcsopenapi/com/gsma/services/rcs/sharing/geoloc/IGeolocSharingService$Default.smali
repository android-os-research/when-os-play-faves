.class public Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Default;
.super Ljava/lang/Object;
.source "IGeolocSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAllGeolocSharings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public deleteGeolocSharingBySharingId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 2
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .registers 3
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeolocSharings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceRegistered()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .registers 4
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
