.class public Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
.super Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;
.source "SourceFile"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    return-void
.end method


# virtual methods
.method public getMyCallback()Lcom/samsung/android/mcf/messaging/McfMessageCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    return-object p0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageDeviceStatus(Lcom/samsung/android/mcf/McfDevice;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onMessageReceived(Landroid/os/PersistableBundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageReceived(Lcom/samsung/android/mcf/McfDevice;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onMessageResult(Landroid/os/PersistableBundle;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/messaging/McfMessage;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/messaging/McfMessage;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageResult(Lcom/samsung/android/mcf/messaging/McfMessage;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method
