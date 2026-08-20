.class public Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;
.source "SourceFile"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;->onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method
