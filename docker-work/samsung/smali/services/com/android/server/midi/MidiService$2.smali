.class public Lcom/android/server/midi/MidiService$2;
.super Landroid/content/BroadcastReceiver;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 735
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MidiService"

    if-nez p1, :cond_e

    const-string p0, "MidiService, action is null"

    .line 737
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v1, -0x1

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c2

    goto :goto_42

    :sswitch_17
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    packed-switch v1, :pswitch_data_d4

    goto/16 :goto_c1

    :pswitch_49
    const-string v1, "ACTION_ACL_DISCONNECTED"

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 777
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 778
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mcloseBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_c1

    :pswitch_62
    const-string v1, "ACTION_ACL_CONNECTED"

    .line 744
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smdumpIntentExtras(Landroid/content/Intent;)V

    .line 748
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smisBleTransport(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string p0, "No BLE transport - NOT MIDI"

    .line 749
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    :cond_76
    const-string v1, "BLE Device"

    .line 753
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 756
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 760
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mhasNonMidiUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_94

    const-string p0, "Non-MIDI service UUIDs found. NOT MIDI"

    .line 761
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    :cond_94
    const-string p2, "Potential MIDI Device."

    .line 765
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_c1

    :pswitch_9f
    const-string v1, "ACTION_UUID"

    .line 801
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 804
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 805
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_c1

    const-string p2, "BT MIDI DEVICE"

    .line 806
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_c1
    :goto_c1
    return-void

    :sswitch_data_c2
    .sparse-switch
        -0x16809cc6 -> :sswitch_38
        -0x11f77b4b -> :sswitch_2d
        0x6c9330ef -> :sswitch_22
        0x7e2cc189 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_62
        :pswitch_49
        :pswitch_9f
    .end packed-switch
.end method
