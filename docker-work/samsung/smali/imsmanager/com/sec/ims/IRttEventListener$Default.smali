.class public Lcom/sec/ims/IRttEventListener$Default;
.super Ljava/lang/Object;
.source "IRttEventListener.java"

# interfaces
.implements Lcom/sec/ims/IRttEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IRttEventListener;
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

.method public onRttEvent(Ljava/lang/String;)V
    .registers 2
    .param p1, "rttEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onRttEventBySession(ILjava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "rttEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "mode"    # Z
    .param p3, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
