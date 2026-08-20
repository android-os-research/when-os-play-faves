.class public Lcom/sec/vsim/attsoftphone/ISoftphoneService$Default;
.super Ljava/lang/Object;
.source "ISoftphoneService.java"

# interfaces
.implements Lcom/sec/vsim/attsoftphone/ISoftphoneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/ISoftphoneService;
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
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "authorizationCode"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public getCallForwardingInfo(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public getCallWaitingInfo(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public getClientId(Ljava/lang/String;)I
    .registers 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceList(I)Ljava/util/List;
    .registers 3
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTermsConditions(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public logOut(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public provisionAccount(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public tryDeregister(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public tryRegister(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "addressId"    # I
    .param p3, "confirmed"    # Z
    .param p4, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
