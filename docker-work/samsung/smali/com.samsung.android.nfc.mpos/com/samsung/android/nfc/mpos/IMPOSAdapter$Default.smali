.class public Lcom/samsung/android/nfc/mpos/IMPOSAdapter$Default;
.super Ljava/lang/Object;
.source "IMPOSAdapter.java"

# interfaces
.implements Lcom/samsung/android/nfc/mpos/IMPOSAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeDedicatedReaderMode(Landroid/os/IBinder;Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;Ljava/lang/String;)Z
    .registers 5
    .param p1, "b"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .param p3, "reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public selectHost(Ljava/lang/String;)Z
    .registers 3
    .param p1, "reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public setDedicatedReaderMode(Z)Z
    .registers 3
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public setOnCallback(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;)Z
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public setTestMode(I)Z
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method
