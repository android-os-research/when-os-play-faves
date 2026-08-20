.class public Landroid/net/lowpan/ILowpanManager$Default;
.super Ljava/lang/Object;
.source "ILowpanManager.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addInterface(Landroid/net/lowpan/ILowpanInterface;)V
    .registers 2
    .param p1, "lowpan_interface"    # Landroid/net/lowpan/ILowpanInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/lowpan/ILowpanManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeInterface(Landroid/net/lowpan/ILowpanInterface;)V
    .registers 2
    .param p1, "lowpan_interface"    # Landroid/net/lowpan/ILowpanInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/lowpan/ILowpanManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
