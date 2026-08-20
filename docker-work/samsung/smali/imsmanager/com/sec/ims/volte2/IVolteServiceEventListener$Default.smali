.class public Lcom/sec/ims/volte2/IVolteServiceEventListener$Default;
.super Ljava/lang/Object;
.source "IVolteServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVolteServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVolteServiceEventListener;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCdpnInfo(Ljava/lang/String;I)V
    .registers 3
    .param p1, "calledPartyNumber"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .registers 2
    .param p1, "dialogEvent"    # Lcom/sec/ims/DialogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onIncomingCall(I)V
    .registers 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onPullingCall(I)V
    .registers 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
