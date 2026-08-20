.class public Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;
.super Landroid/os/Handler;
.source "BleCompanionDeviceScanner.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainThreadHandler"
.end annotation


# static fields
.field public static final NOTIFY_DEVICE_LOST:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    .line 375
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 382
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 383
    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public hasNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    const/4 v0, 0x1

    .line 392
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNotifyDeviceLostDelayedMessage(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x1d4c0

    .line 388
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
