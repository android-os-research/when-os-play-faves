.class public final Lcom/android/server/midi/MidiService$Device;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Device"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MidiService.Device"


# instance fields
.field public final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field public mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

.field public mServer:Landroid/media/midi/IMidiDeviceServer;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBluetoothDevice(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmServiceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDeviceServer(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 372
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 373
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x0

    .line 374
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 375
    invoke-static {p1}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmBluetoothServiceUid(Lcom/android/server/midi/MidiService;)I

    move-result p1

    iput p1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V
    .registers 6

    .line 363
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    .line 364
    iput-object p3, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 365
    iput-object p4, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 366
    iput p5, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    .line 367
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "bluetooth_device"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 369
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 7

    const-string v0, "MidiService.Device"

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeviceConnection() [A] connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_19
    const-string v1, "MidiService.Device"

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mServer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v1, :cond_48

    const-string v1, "MidiService.Device"

    const-string v2, "++++ A"

    .line 465
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p1, p0}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    goto/16 :goto_ca

    .line 468
    :cond_48
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_c0

    :cond_55
    const-string v1, "MidiService.Device"

    const-string v3, "++++ B"

    .line 470
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance p1, Lcom/android/server/midi/MidiService$Device$1;

    invoke-direct {p1, p0}, Lcom/android/server/midi/MidiService$Device$1;-><init>(Lcom/android/server/midi/MidiService$Device;)V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 509
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_80

    .line 510
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.media.midi.BluetoothMidiService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.bluetoothmidiservice"

    const-string v4, "com.android.bluetoothmidiservice.BluetoothMidiService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_95

    .line 515
    :cond_80
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 520
    :goto_95
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v1}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmContext(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_ca

    const-string v1, "MidiService.Device"

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 524
    iput-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_ca

    :cond_c0
    const-string p0, "MidiService.Device"

    const-string v1, "No way to connect to device in addDeviceConnection"

    .line 527
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p1, v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 530
    :cond_ca
    :goto_ca
    monitor-exit v0

    return-void

    :catchall_cc
    move-exception p0

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_19 .. :try_end_ce} :catchall_cc

    throw p0
.end method

.method public binderDied()V
    .registers 4

    const-string v0, "MidiService.Device"

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmDevicesByInfo(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 592
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 593
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p0
.end method

.method public closeLocked()V
    .registers 7

    .line 561
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 563
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    .line 565
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v3}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmUsbMidiLock(Lcom/android/server/midi/MidiService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_72

    .line 566
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/midi/MidiService;->removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 567
    monitor-exit v3

    goto :goto_3d

    :catchall_3a
    move-exception p0

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p0

    .line 569
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$DeviceConnection;->getClient()Lcom/android/server/midi/MidiService$Client;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    goto :goto_9

    .line 571
    :cond_45
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 572
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_72

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 577
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_59

    .line 578
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0, p0}, Lcom/android/server/midi/MidiService;->-$$Nest$mremoveDeviceLocked(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_62

    .line 580
    :cond_59
    new-instance v0, Landroid/media/midi/MidiDeviceStatus;

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {v0, v1}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 583
    :goto_62
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_71

    .line 584
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmBluetoothDevices(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    return-void

    :catchall_72
    move-exception p0

    .line 572
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object p0
.end method

.method public getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object p0
.end method

.method public getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :goto_8
    return-object p0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 453
    iget p0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    return p0
.end method

.method public isUidAllowed(I)Z
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_f

    iget p0, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 6

    .line 534
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmDevicesByInfo(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 535
    :try_start_7
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_62

    .line 536
    :try_start_a
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 540
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v2}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmUsbMidiLock(Lcom/android/server/midi/MidiService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_5f

    .line 541
    :try_start_25
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/server/midi/MidiService;->removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 542
    monitor-exit v2

    goto :goto_37

    :catchall_34
    move-exception p0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_34

    :try_start_36
    throw p0

    .line 545
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_5c

    .line 546
    iget-object p1, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p1}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmContext(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 547
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 548
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_59

    .line 550
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    goto :goto_5c

    .line 552
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 555
    :cond_5c
    :goto_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_36 .. :try_end_5d} :catchall_5f

    .line 556
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    return-void

    :catchall_5f
    move-exception p0

    .line 555
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0

    :catchall_62
    move-exception p0

    .line 556
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-void
.end method

.method public final setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 6

    const-string v0, "MidiService.Device"

    const-string/jumbo v1, "setDeviceServer()"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 381
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v2, :cond_19

    const-string p0, "MidiService.Device"

    const-string/jumbo p1, "mServer already set in setDeviceServer"

    .line 382
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 385
    :cond_19
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 387
    :try_start_1d
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 388
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_2c

    .line 393
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmDevicesByServer(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 390
    :catch_2c
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    return-void

    .line 394
    :cond_2f
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v2, :cond_4b

    .line 396
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 398
    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 399
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Device;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v3}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmDevicesByServer(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iput-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 407
    :try_start_44
    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->closeDevice()V

    .line 408
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4a

    :catch_4a
    move-object p1, v2

    .line 414
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_6b

    .line 415
    monitor-enter v0

    .line 416
    :try_start_50
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 417
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    goto :goto_56

    .line 419
    :cond_66
    monitor-exit v0

    goto :goto_6b

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_68

    throw p0

    :cond_6b
    :goto_6b
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UID: "

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget v1, p0, Lcom/android/server/midi/MidiService$Device;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DeviceConnection count: "

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device;->mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mServiceConnection: "

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    iget-object p0, p0, Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
