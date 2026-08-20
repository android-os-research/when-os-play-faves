.class public Lcom/sec/ims/ss/IImsUtEventListener$Default;
.super Ljava/lang/Object;
.source "IImsUtEventListener.java"

# interfaces
.implements Lcom/sec/ims/ss/IImsUtEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/IImsUtEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    .registers 3
    .param p1, "reqId"    # I
    .param p2, "callBarringList"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    .registers 3
    .param p1, "reqId"    # I
    .param p2, "callForwardList"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onUtConfigurationCallWaitingQueried(IZ)V
    .registers 3
    .param p1, "reqId"    # I
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "reqId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "reqId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "reqId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onUtConfigurationUpdated(I)V
    .registers 2
    .param p1, "reqId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
