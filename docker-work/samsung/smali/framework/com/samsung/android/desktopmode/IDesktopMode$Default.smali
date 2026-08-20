.class public Lcom/samsung/android/desktopmode/IDesktopMode$Default;
.super Ljava/lang/Object;
.source "IDesktopMode.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopMode;
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

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDesktopModeKillPolicy()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAllowed()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDesktopDockConnected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDesktopMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceConnected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .registers 4
    .param p1, "blocker"    # Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    .registers 2
    .param p1, "launcher"    # Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/desktopmode/IDesktopModeListener;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scheduleUpdateDesktopMode(Z)V
    .registers 2
    .param p1, "enter"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "message"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .registers 3
    .param p1, "blocker"    # Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/desktopmode/IDesktopModeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method
