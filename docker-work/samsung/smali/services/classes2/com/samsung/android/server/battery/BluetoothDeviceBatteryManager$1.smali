.class public Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->systemServicesReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "BluetoothDeviceBatteryManager"

    .line 451
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 455
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_e5

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_34

    .line 456
    :try_start_24
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 457
    invoke-static {p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    .line 458
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleBatteryLevelChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_fa

    :cond_34
    const-string v1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 460
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 461
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    iget-object v0, v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    const-string v0, "com.samsung.bluetooth.device.extra.META_DATA"

    .line 462
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    .line 463
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-static {v0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mgetChangeType(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;[B)I

    move-result p2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# changeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_fa

    .line 466
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_fa

    :cond_78
    const-string v1, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 468
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    .line 469
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_97

    .line 472
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 473
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    const/4 v0, 0x3

    invoke-static {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_fa

    .line 475
    :cond_97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "state: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    :cond_ad
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 478
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 479
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 480
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleDeviceNameChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_fa

    :cond_c1
    const-string p0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 481
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d3

    .line 483
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 484
    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_fa

    :cond_d3
    const-string p0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 485
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    .line 487
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 488
    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_e4} :catch_e5

    goto :goto_fa

    :catch_e5
    move-exception p0

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    :goto_fa
    return-void
.end method
