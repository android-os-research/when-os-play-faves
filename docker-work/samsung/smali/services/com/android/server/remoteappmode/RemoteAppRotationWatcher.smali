.class public Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "RemoteAppRotationWatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoteAppRotationWatcher"


# instance fields
.field public listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

.field public mDisplayId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    if-eqz v0, :cond_9

    .line 17
    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->onRotationChanged(II)V

    :cond_9
    return-void
.end method

.method public removeRotationChangeListenr()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    .line 28
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    return-void
.end method

.method public setRotationChangeListener(ILcom/samsung/android/remoteappmode/IRotationChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iput-object p2, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    .line 22
    iput p1, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->mDisplayId:I

    .line 23
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    return-void
.end method
