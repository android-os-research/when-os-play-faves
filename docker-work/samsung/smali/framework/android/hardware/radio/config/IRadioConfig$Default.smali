.class public Landroid/hardware/radio/config/IRadioConfig$Default;
.super Ljava/lang/Object;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHalDeviceCapabilities(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumOfLiveModems(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist getPhoneCapability(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getSimSlotsStatus(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setNumOfLiveModems(IB)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "numOfLiveModems"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist setPreferredDataModem(IB)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "modemId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/config/IRadioConfigResponse;Landroid/hardware/radio/config/IRadioConfigIndication;)V
    .registers 3
    .param p1, "radioConfigResponse"    # Landroid/hardware/radio/config/IRadioConfigResponse;
    .param p2, "radioConfigIndication"    # Landroid/hardware/radio/config/IRadioConfigIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist setSimSlotsMapping(I[Landroid/hardware/radio/config/SlotPortMapping;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "slotMap"    # [Landroid/hardware/radio/config/SlotPortMapping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
