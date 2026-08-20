.class public Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoSwitchSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_8e

    goto :goto_31

    :sswitch_11
    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_31

    :cond_1a
    const/4 v0, 0x2

    goto :goto_31

    :sswitch_1c
    const-string v1, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_31

    :cond_25
    move v0, v2

    goto :goto_31

    :sswitch_27
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    const-string v1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    packed-switch v0, :pswitch_data_9c

    goto :goto_8c

    :pswitch_37
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 242
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_8c

    const-string p2, "mReceiver.onReceive - AUTO_SWITCH_MODE_CHANGED"

    .line 244
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance p2, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 246
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result p1

    if-ne p1, v2, :cond_5f

    .line 248
    iget-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->-$$Nest$maddDevice(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    goto :goto_64

    .line 250
    :cond_5f
    iget-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->-$$Nest$mremoveDevice(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 252
    :goto_64
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->-$$Nest$msetAutoSwitchModeEnabled(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    goto :goto_8c

    .line 257
    :pswitch_6a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mReceiver.onReceive - RESET : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {p1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->-$$Nest$fgetmAutoSwitchableDevices(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$2;->this$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->-$$Nest$msetAutoSwitchModeEnabled(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    :cond_8c
    :goto_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x5d019e6f -> :sswitch_27
        -0x22e3d3cc -> :sswitch_1c
        -0x1ff1c7b7 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_37
        :pswitch_6a
    .end packed-switch
.end method
