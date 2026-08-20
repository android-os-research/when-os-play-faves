.class public Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleCompanionDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .registers 2

    .line 366
    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fputmScanning(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Z)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 4

    .line 329
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected callback "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CompanionDevice_PresenceMonitor_BLE"

    .line 356
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 352
    :cond_25
    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->sendNotifyDeviceLostDelayedMessage(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_4a

    .line 343
    :cond_2f
    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->hasNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 344
    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;->removeNotifyDeviceLostMessages(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 348
    :cond_45
    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {p0, p2}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V

    :goto_4a
    return-void
.end method
