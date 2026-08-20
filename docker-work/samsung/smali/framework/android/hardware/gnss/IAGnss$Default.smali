.class public Landroid/hardware/gnss/IAGnss$Default;
.super Ljava/lang/Object;
.source "IAGnss.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnss;
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

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dataConnClosed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist dataConnFailed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist dataConnOpen(JLjava/lang/String;I)V
    .registers 5
    .param p1, "networkHandle"    # J
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "apnIpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IAGnssCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/IAGnssCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setServer(ILjava/lang/String;I)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
