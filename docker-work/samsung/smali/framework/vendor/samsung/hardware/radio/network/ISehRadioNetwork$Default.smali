.class public Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Default;
.super Ljava/lang/Object;
.source "ISehRadioNetwork.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
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

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist emergencyControl(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist emergencySearch(I)V
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

.method public blacklist getAvailableNetworks(I)V
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

.method public blacklist getCnap(I)V
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

.method public blacklist getCsgList(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getDisable2g(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNrIconType(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getNrMode(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist getPreferredNetworkList(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getRoamingNetworkInfoViaBLE(IBLjava/lang/String;)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "mode"    # B
    .param p3, "homePlmn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist getVendorSpecificConfiguration(I)V
    .registers 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist selectCsgManual(ILvendor/samsung/hardware/radio/network/SehCsgInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "csgInfo"    # Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist sendEncodedUssd(ILvendor/samsung/hardware/radio/network/SehEncodedUssd;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "encodedUssd"    # Lvendor/samsung/hardware/radio/network/SehEncodedUssd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist sendRequestRaw(I[B)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist sendRequestStrings(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist setCurrentNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "networkInfo"    # [Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setDisable2g(II)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist setImsCallList(I[Lvendor/samsung/hardware/radio/network/SehImsCall;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "imsCalls"    # [Lvendor/samsung/hardware/radio/network/SehImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist setNrMode(IIZ)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist setPreferredNetworkList(ILvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "info"    # Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist setResponseFunctions(Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;)V
    .registers 3
    .param p1, "radioResponse"    # Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
    .param p2, "radioIndication"    # Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist setRoamingNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "networkInfo"    # [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist setScanResultViaBLE(IBB)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "result"    # B
    .param p3, "scanType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist setVendorSpecificConfiguration(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .registers 3
    .param p1, "serial"    # I
    .param p2, "configurations"    # [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method
