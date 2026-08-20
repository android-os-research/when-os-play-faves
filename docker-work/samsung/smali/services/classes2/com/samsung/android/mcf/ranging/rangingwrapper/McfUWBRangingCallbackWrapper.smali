.class public Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
.super Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;
.source "SourceFile"


# instance fields
.field public final mBleSID:I

.field public final mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)V
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    iput p2, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mBleSID:I

    return-void
.end method


# virtual methods
.method public getBleSID()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mBleSID:I

    return p0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .registers 2
    .param p1    # [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onStatusChanged(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onStatusChanged(IILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onStatusError(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onStatusError(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onUWBParamChanged(Ljava/lang/String;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;->onUWBParamChanged(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
