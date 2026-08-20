.class public Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker$Default;
.super Ljava/lang/Object;
.source "IVirtualDisplayAliveChecker.java"

# interfaces
.implements Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onVirtualDisplayCreated(I)V
    .registers 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onVirtualDisplayReleased(I)V
    .registers 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
