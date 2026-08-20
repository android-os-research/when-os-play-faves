.class public Landroid/hardware/gnss/IGnssCallback$Default;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gnssAcquireWakelockCb()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist gnssLocationCb(Landroid/hardware/gnss/GnssLocation;)V
    .registers 2
    .param p1, "location"    # Landroid/hardware/gnss/GnssLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist gnssNmeaCb(JLjava/lang/String;)V
    .registers 4
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist gnssReleaseWakelockCb()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist gnssRequestLocationCb(ZZ)V
    .registers 3
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist gnssRequestTimeCb()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist gnssSetCapabilitiesCb(I)V
    .registers 2
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist gnssSetSystemInfoCb(Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist gnssStatusCb(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist gnssSvStatusCb([Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;)V
    .registers 2
    .param p1, "svInfoList"    # [Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
