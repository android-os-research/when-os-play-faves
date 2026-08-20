.class public Lcom/samsung/android/continuity/ISemContinuityManager$Default;
.super Ljava/lang/Object;
.source "ISemContinuityManager.java"

# interfaces
.implements Lcom/samsung/android/continuity/ISemContinuityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/continuity/ISemContinuityManager;
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

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelDownload(Ljava/lang/String;I)V
    .registers 3
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist clearLocalClip(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist getNearbyDeviceCount(II)I
    .registers 4
    .param p1, "filterType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z
    .registers 5
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setLocalClip(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "clipBundle"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist unregisterContinuityCopyListener(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
