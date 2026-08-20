.class public Landroid/hardware/gnss/IGnssBatching$Default;
.super Ljava/lang/Object;
.source "IGnssBatching.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssBatching;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssBatching;
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

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cleanup()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist getBatchSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(Landroid/hardware/gnss/IGnssBatchingCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssBatchingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist start(Landroid/hardware/gnss/IGnssBatching$Options;)V
    .registers 2
    .param p1, "options"    # Landroid/hardware/gnss/IGnssBatching$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist stop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
