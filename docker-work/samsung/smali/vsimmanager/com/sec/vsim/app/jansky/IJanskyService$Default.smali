.class public Lcom/sec/vsim/app/jansky/IJanskyService$Default;
.super Ljava/lang/Object;
.source "IJanskyService.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/IJanskyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/IJanskyService;
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
.method public activateLine(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public activateSIMDevice()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public activateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public addLine(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public addServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public deactivateLine(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public deactivateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public downloadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .registers 2
    .param p1, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public getDeviceState()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationAndTc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "lineNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V
    .registers 4
    .param p1, "fromMsisdn"    # Ljava/lang/String;
    .param p3, "trnReceivedListener"    # Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/ITRNReceivedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    .local p2, "toMsisdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public isUserLogedin()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public logout()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public openLoginPage()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public registerForPushNotification(Lcom/sec/vsim/app/jansky/IPushNotificationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public removeLine(Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public removeServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public requestAkaAuthentication()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public requestWsgAkaAuthRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public retriveAvailableMSISDNs()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public updateDeviceConfiguration()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public updateLineName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .registers 4
    .param p1, "lineNumber"    # Ljava/lang/String;
    .param p2, "lineName"    # Ljava/lang/String;
    .param p3, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public uploadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .registers 2
    .param p1, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public uploadUpdatedContact(Ljava/lang/String;Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .registers 3
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method
