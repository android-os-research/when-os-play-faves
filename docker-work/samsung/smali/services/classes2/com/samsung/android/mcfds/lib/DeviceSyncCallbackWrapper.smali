.class public Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;
.super Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;
.source "DeviceSyncCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    return-void
.end method


# virtual methods
.method public getDeviceSyncCallback()Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    return-object p0
.end method

.method public onDeviceFound(Landroid/os/PersistableBundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    if-eqz p0, :cond_10

    .line 26
    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;->onDeviceFound(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 29
    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/common/LibUtil;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onDeviceLost(Landroid/os/PersistableBundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    if-eqz p0, :cond_10

    .line 48
    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;->onDeviceLost(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 51
    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/common/LibUtil;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onDeviceUpdated(Landroid/os/PersistableBundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    if-eqz p0, :cond_10

    .line 37
    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;->onDeviceUpdated(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 40
    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/common/LibUtil;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method
