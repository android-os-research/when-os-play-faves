.class public Lcom/android/server/midi/MidiService$Device$1;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/midi/MidiService$Device;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService$Device;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "++++ onServiceConnected() mBluetoothDevice:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {v0}, Lcom/android/server/midi/MidiService$Device;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MidiService.Device"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {p1}, Lcom/android/server/midi/MidiService$Device;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 481
    invoke-static {p2}, Landroid/media/midi/IBluetoothMidiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IBluetoothMidiService;

    move-result-object p1

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++ mBluetoothMidiService:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_53

    .line 487
    :try_start_3e
    iget-object p2, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {p2}, Lcom/android/server/midi/MidiService$Device;->-$$Nest$fgetmBluetoothDevice(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 488
    invoke-interface {p1, p2}, Landroid/media/midi/IBluetoothMidiService;->addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;

    move-result-object p1

    .line 490
    invoke-static {p1}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object p1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4c} :catch_4d

    goto :goto_59

    :catch_4d
    move-exception p1

    const-string p2, "Could not call addBluetoothDevice()"

    .line 492
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    const/4 p1, 0x0

    goto :goto_59

    .line 496
    :cond_55
    invoke-static {p2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object p1

    .line 498
    :goto_59
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService$Device;->-$$Nest$msetDeviceServer(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 503
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/midi/MidiService$Device;->-$$Nest$msetDeviceServer(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    .line 504
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {p0, v0}, Lcom/android/server/midi/MidiService$Device;->-$$Nest$fputmServiceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)V

    return-void
.end method
