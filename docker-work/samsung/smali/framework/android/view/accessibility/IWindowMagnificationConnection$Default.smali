.class public Landroid/view/accessibility/IWindowMagnificationConnection$Default;
.super Ljava/lang/Object;
.source "IWindowMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IWindowMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IWindowMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "magnificationFrameOffsetRatioX"    # F
    .param p6, "magnificationFrameOffsetRatioY"    # F
    .param p7, "callback"    # Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist moveWindowMagnifier(IFF)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "positionX"    # F
    .param p3, "positionY"    # F
    .param p4, "callback"    # Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist removeMagnificationButton(I)V
    .registers 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public blacklist setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/accessibility/IWindowMagnificationConnectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist setScale(IF)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist showMagnificationButton(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method
