.class public Lcom/sec/vsim/ericssonnsds/INSDSService$Default;
.super Ljava/lang/Object;
.source "INSDSService.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSService;
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
.method public activateAllLines()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public activateLine(JLjava/lang/String;)V
    .registers 4
    .param p1, "lineId"    # J
    .param p3, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public activateSimDevice()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public authorizeMsisdn(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public cancelMsisdnAuthorization(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public createTmoId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tmoId"    # Ljava/lang/String;
    .param p2, "tmoPw"    # Ljava/lang/String;
    .param p3, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public deactivateAllLines()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public deactivateLine(JLjava/lang/String;)V
    .registers 4
    .param p1, "lineId"    # J
    .param p3, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public deactivateSimDevice()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public getDeviceState()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJanskyServiceStatus()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingMsisdnAuthStatus()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
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

    .line 99
    .local p2, "toMsisdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public handleNsdsAppToggleOffEvent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public handleNsdsAppToggleOnEvent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public handleNsdsAppToggleOnEventWithSnT()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public isDeviceReadyForLogin()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isUserLoggedin()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public loginWithMsisdn(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public logout()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public openCreateAccountPage()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public openLoginPage()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public refreshSIT(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public registerListener(Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public reprovisionLine(JLjava/lang/String;)V
    .registers 4
    .param p1, "lineId"    # J
    .param p3, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public requestWsgAkaAuthRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public retriveAvailableMSISDNs()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public unregisterListener(Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public updateAccessSteering()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public updateDeviceConfiguration()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public updateDeviceName(JLjava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;)V
    .registers 5
    .param p1, "deviceId"    # J
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "deviceNameUpdateListener"    # Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public updateE911Address()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public updateEntitlementUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public updateEntitlementUrlWithImsi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public updateLineName(JLjava/lang/String;Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;)V
    .registers 5
    .param p1, "deviceId"    # J
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "lineNameUpdateListener"    # Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method
