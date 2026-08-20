.class public Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;
.source "SourceFile"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleScanCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    return-object p0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onScanFailed(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ble/BleScanCallback;->onScanFailed(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ble/BleScanCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
