.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field public static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final MAX_CONNECTIONS_PER_CLIENT:I = 0x40

.field public static final MAX_DEVICE_SERVERS_PER_UID:I = 0x10

.field public static final MAX_LISTENERS_PER_CLIENT:I = 0x10

.field public static final MIDI_LEGACY_STRING:Ljava/lang/String; = "MIDI 1.0"

.field public static final MIDI_SERVICE:Ljava/util/UUID;

.field public static final MIDI_UNIVERSAL_STRING:Ljava/lang/String; = "MIDI 2.0"

.field public static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field public final mBleMidiDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/media/midi/MidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mBleMidiReceiver:Landroid/content/BroadcastReceiver;

.field public final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field public mBluetoothServiceUid:I

.field public final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field public final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field public mNextDeviceId:I

.field public final mNonMidiUUIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsbMidiLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsbMidiLock:Ljava/lang/Object;

.field public final mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsbMidiLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBleMidiDeviceMap(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothDevices(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothServiceUid(Lcom/android/server/midi/MidiService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClients(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicesByInfo(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicesByServer(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbMidiLock(Lcom/android/server/midi/MidiService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddPackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcloseBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->closeBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->dumpUuids(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasNonMidiUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->hasNonMidiUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->isBLEMIDIDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/midi/MidiService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/midi/MidiService;->onUnlockUser()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDeviceLocked(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremovePackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdumpIntentExtras(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/midi/MidiService;->dumpIntentExtras(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisBleTransport(Landroid/content/Intent;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/midi/MidiService;->isBleTransport(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "03B80E5A-EDE8-4B33-A751-6CE34EC4C700"

    .line 152
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/midi/MidiService;->MIDI_SERVICE:Ljava/util/UUID;

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/media/midi/MidiDeviceInfo;

    .line 909
    sput-object v1, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    new-array v0, v0, [Ljava/lang/String;

    .line 1231
    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 815
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    .line 158
    new-instance v1, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 732
    new-instance v1, Lcom/android/server/midi/MidiService$2;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$2;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mBleMidiReceiver:Landroid/content/BroadcastReceiver;

    .line 816
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, -0x1

    .line 829
    iput p1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 831
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 832
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 833
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 834
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->AVRCP_CONTROLLER:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object p0, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static dumpIntentExtras(Landroid/content/Intent;)V
    .registers 6

    .line 674
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 678
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_53

    :cond_51
    const-string v2, "NULL"

    :goto_53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_5e
    return-void
.end method

.method public static isBleTransport(Landroid/content/Intent;)Z
    .registers 3

    .line 686
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const-string v1, "android.bluetooth.device.extra.TRANSPORT"

    .line 689
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_12

    const/4 p0, 0x1

    move v0, p0

    :cond_12
    return v0
.end method


# virtual methods
.method public final addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZII)Landroid/media/midi/MidiDeviceInfo;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p10

    .line 1146
    iget-object v3, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/midi/MidiService$Device;

    .line 1147
    invoke-virtual {v5}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v5

    if-ne v5, v2, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_26
    const/16 v3, 0x10

    if-ge v4, v3, :cond_b7

    .line 1157
    iget v7, v0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    add-int/lit8 v3, v7, 0x1

    iput v3, v0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 1158
    new-instance v3, Landroid/media/midi/MidiDeviceInfo;

    move-object v5, v3

    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p9

    move/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V

    const/4 v4, 0x0

    if-eqz v1, :cond_55

    .line 1164
    :try_start_49
    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_55

    :catch_4d
    const-string v0, "MidiService"

    const-string v1, "RemoteException in setDeviceInfo()"

    .line 1166
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_55
    :goto_55
    const/4 v5, 0x3

    move/from16 v6, p1

    if-ne v6, v5, :cond_75

    const-string v4, "bluetooth_device"

    move-object/from16 v5, p6

    .line 1174
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1176
    iget-object v5, v0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/midi/MidiService$Device;

    if-eqz v5, :cond_71

    .line 1178
    invoke-virtual {v5, v3}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    :cond_71
    move-object v15, v5

    move-object v5, v4

    move-object v4, v15

    goto :goto_76

    :cond_75
    move-object v5, v4

    :goto_76
    if-nez v4, :cond_89

    .line 1182
    new-instance v4, Lcom/android/server/midi/MidiService$Device;

    move-object/from16 p1, v4

    move-object/from16 p2, p0

    move-object/from16 p3, p7

    move-object/from16 p4, v3

    move-object/from16 p5, p8

    move/from16 p6, p10

    invoke-direct/range {p1 .. p6}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    .line 1184
    :cond_89
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_95

    .line 1186
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_95
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 1190
    :try_start_98
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Client;

    .line 1191
    invoke-virtual {v2, v4}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_a2

    .line 1193
    :cond_b2
    monitor-exit v1

    return-object v3

    :catchall_b4
    move-exception v0

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_b4

    throw v0

    .line 1152
    :cond_b7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "too many MIDI devices already created for UID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    const/4 v14, 0x0

    .line 1237
    :try_start_5
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.media.midi.MidiDeviceService"

    invoke-virtual {v13, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_209
    .catchall {:try_start_5 .. :try_end_d} :catchall_207

    if-nez v15, :cond_15

    if-eqz v15, :cond_14

    .line 1365
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    return-void

    :cond_15
    :try_start_15
    const-string v1, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    .line 1242
    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v0, "MidiService"

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping MIDI device service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": it does not require the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_204
    .catchall {:try_start_15 .. :try_end_41} :catchall_201

    .line 1365
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    .line 1254
    :cond_45
    :try_start_45
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move/from16 v16, v10

    move/from16 v17, v16

    move/from16 v18, v17

    move-object v7, v14

    .line 1258
    :goto_57
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_204
    .catchall {:try_start_45 .. :try_end_5b} :catchall_201

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    .line 1365
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_229

    :cond_63
    const/4 v2, 0x2

    if-ne v1, v2, :cond_15e

    .line 1262
    :try_start_66
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    .line 1263
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    if-eqz v7, :cond_8f

    const-string v1, "MidiService"

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nested <device> elements in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    .line 1269
    :cond_8f
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "service_info"

    .line 1270
    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1275
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    move v2, v10

    move/from16 v18, v2

    :goto_a1
    if-ge v2, v1, :cond_c2

    .line 1277
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1278
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "private"

    .line 1279
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    const-string/jumbo v3, "true"

    .line 1280
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    goto :goto_bf

    .line 1282
    :cond_bc
    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :cond_c2
    move/from16 v16, v10

    move/from16 v17, v16

    goto/16 :goto_156

    :cond_c8
    const-string/jumbo v2, "input-port"

    .line 1285
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    if-nez v7, :cond_ed

    const-string v1, "MidiService"

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    :cond_ed
    add-int/lit8 v16, v16, 0x1

    .line 1294
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    move v2, v10

    :goto_f4
    if-ge v2, v1, :cond_10b

    .line 1296
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    .line 1298
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    goto :goto_10c

    :cond_108
    add-int/lit8 v2, v2, 0x1

    goto :goto_f4

    :cond_10b
    move-object v4, v14

    .line 1303
    :goto_10c
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    :cond_110
    const-string/jumbo v2, "output-port"

    .line 1304
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    if-nez v7, :cond_134

    const-string v1, "MidiService"

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    :cond_134
    add-int/lit8 v17, v17, 0x1

    .line 1313
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    move v2, v10

    :goto_13b
    if-ge v2, v1, :cond_152

    .line 1315
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1316
    invoke-interface {v15, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    .line 1317
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    goto :goto_153

    :cond_14f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13b

    :cond_152
    move-object v4, v14

    .line 1322
    :goto_153
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_156
    :goto_156
    move/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v19, v12

    goto/16 :goto_1f9

    :cond_15e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_156

    .line 1325
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    .line 1326
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    if-eqz v7, :cond_156

    if-nez v16, :cond_18c

    if-nez v17, :cond_18c

    const-string v1, "MidiService"

    .line 1329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<device> with no ports in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_18b} :catch_204
    .catchall {:try_start_66 .. :try_end_18b} :catchall_201

    goto :goto_156

    .line 1336
    :cond_18c
    :try_start_18c
    iget-object v1, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1338
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_196
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18c .. :try_end_196} :catch_1db
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_196} :catch_204
    .catchall {:try_start_18c .. :try_end_196} :catchall_201

    .line 1345
    :try_start_196
    iget-object v8, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_199} :catch_204
    .catchall {:try_start_196 .. :try_end_199} :catchall_201

    const/4 v2, 0x2

    .line 1346
    :try_start_19a
    sget-object v1, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1348
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Ljava/lang/String;

    .line 1349
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;
    :try_end_1aa
    .catchall {:try_start_19a .. :try_end_1aa} :catchall_1d4

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v21, v8

    move-object/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, p1

    move/from16 v22, v10

    move/from16 v10, v18

    move-object/from16 v23, v11

    move/from16 v11, v19

    move-object/from16 v19, v12

    move/from16 v12, v20

    .line 1346
    :try_start_1c8
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZII)Landroid/media/midi/MidiDeviceInfo;

    .line 1352
    monitor-exit v21
    :try_end_1cc
    .catchall {:try_start_1c8 .. :try_end_1cc} :catchall_1d9

    .line 1356
    :try_start_1cc
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1357
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d2} :catch_204
    .catchall {:try_start_1cc .. :try_end_1d2} :catchall_201

    move-object v7, v14

    goto :goto_1f9

    :catchall_1d4
    move-exception v0

    move-object/from16 v21, v8

    .line 1352
    :goto_1d7
    :try_start_1d7
    monitor-exit v21
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_1d9

    :try_start_1d8
    throw v0

    :catchall_1d9
    move-exception v0

    goto :goto_1d7

    :catch_1db
    move/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v19, v12

    const-string v1, "MidiService"

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not fetch ApplicationInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1f9} :catch_204
    .catchall {:try_start_1d8 .. :try_end_1f9} :catchall_201

    :goto_1f9
    move-object/from16 v12, v19

    move/from16 v10, v22

    move-object/from16 v11, v23

    goto/16 :goto_57

    :catchall_201
    move-exception v0

    move-object v14, v15

    goto :goto_22a

    :catch_204
    move-exception v0

    move-object v14, v15

    goto :goto_20a

    :catchall_207
    move-exception v0

    goto :goto_22a

    :catch_209
    move-exception v0

    :goto_20a
    :try_start_20a
    const-string v1, "MidiService"

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load component info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_224
    .catchall {:try_start_20a .. :try_end_224} :catchall_207

    if-eqz v14, :cond_229

    .line 1365
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_229
    :goto_229
    return-void

    :goto_22a
    if-eqz v14, :cond_22f

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1366
    :cond_22f
    throw v0
.end method

.method public final addPackageDeviceServers(Ljava/lang/String;)V
    .registers 4

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_1a

    .line 1224
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 1226
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 1227
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    return-void

    :catch_1a
    move-exception p0

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePackageUpdate could not find package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MidiService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public addUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsbMidiLock"
        }
    .end annotation

    .line 1432
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    return-void

    .line 1436
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MIDI 2.0"

    .line 1441
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1442
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_48
    const-string v1, "MIDI 1.0"

    .line 1443
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 1444
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1445
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final closeBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    const-string v0, "MidiService"

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBluetoothDevice() device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1003
    :try_start_19
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/midi/MidiDevice;

    .line 1004
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_40

    if-eqz p0, :cond_3f

    .line 1008
    :try_start_24
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception p0

    const-string p1, "MidiService"

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception closing BLE-MIDI device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return-void

    :catchall_40
    move-exception p0

    .line 1004
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 1046
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 1048
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1384
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-string p3, "MidiService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1385
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "MIDI Manager State:"

    .line 1387
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Devices:"

    .line 1390
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1392
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter p2

    .line 1393
    :try_start_25
    iget-object p3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 1394
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 1396
    :cond_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_78

    .line 1397
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Clients:"

    .line 1399
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1401
    iget-object p3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter p3

    .line 1402
    :try_start_52
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/midi/MidiService$Client;

    .line 1403
    invoke-virtual {p2}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 1405
    :cond_70
    monitor-exit p3
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_75

    .line 1406
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_75
    move-exception p0

    .line 1405
    :try_start_76
    monitor-exit p3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0

    :catchall_78
    move-exception p0

    .line 1396
    :try_start_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public final dumpUuids(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7

    .line 696
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpUuids("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") numParcels:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz p0, :cond_1b

    .line 698
    array-length v1, p0

    goto :goto_1c

    :cond_1b
    move v1, p1

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiService"

    .line 697
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_30

    const-string p0, "No UUID Parcels"

    .line 701
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 705
    :cond_30
    array-length v0, p0

    :goto_31
    if-ge p1, v0, :cond_50

    aget-object v2, p0, p1

    .line 706
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_50
    return-void
.end method

.method public extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x8

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1490
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x8

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    if-nez v1, :cond_1f

    .line 329
    new-instance v1, Lcom/android/server/midi/MidiService$Client;

    invoke-direct {v1, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    const/4 v2, 0x0

    .line 332
    :try_start_13
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1c
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 336
    :try_start_16
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catch_1c
    const/4 p0, 0x0

    .line 334
    monitor-exit v0

    return-object p0

    .line 338
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p0

    .line 339
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .registers 5

    .line 1102
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/midi/MidiService$Device;

    if-eqz p0, :cond_4b

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object p0

    return-object p0

    .line 1110
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceStatus() invalid UID = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MidiService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x534e4554

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "203549963"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "getDeviceStatus: invalid uid"

    aput-object v1, v0, p1

    .line 1111
    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0

    .line 1104
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no such device for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    const/4 v0, 0x1

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;
    .registers 8

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 922
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 923
    :try_start_c
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Device;

    .line 924
    invoke-virtual {v3, v1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ne p1, v4, :cond_3e

    .line 927
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v4

    if-eq v4, v5, :cond_16

    .line 929
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3e
    const/4 v4, 0x1

    if-ne p1, v4, :cond_16

    .line 932
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v4

    if-ne v4, v5, :cond_16

    .line 934
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 939
    :cond_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_c .. :try_end_54} :catchall_5d

    .line 941
    sget-object p0, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/midi/MidiDeviceInfo;

    return-object p0

    :catchall_5d
    move-exception p0

    .line 939
    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .registers 9

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1082
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 1083
    :try_start_7
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 1084
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1085
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1086
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1087
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1088
    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 1089
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_40
    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "185796676"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 1091
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, ""

    aput-object v0, p1, p2

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1092
    monitor-exit v1

    return-object v3

    .line 1096
    :cond_5d
    monitor-exit v1

    return-object v3

    :catchall_5f
    move-exception p0

    .line 1097
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public final hasNonMidiUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    .line 712
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_27

    .line 717
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_b
    if-ge v3, v1, :cond_1c

    aget-object v4, p1, v3

    .line 719
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    return v0

    :cond_18
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_b

    :cond_1c
    if-eq v4, v0, :cond_26

    const-string p0, "MidiService"

    const-string p1, "MidiService, uuid size 0"

    .line 724
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_26
    return v2

    :cond_27
    return v0
.end method

.method public final isBLEMIDIDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    .line 662
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 664
    array-length v0, p0

    move v1, p1

    :goto_9
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 665
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/android/server/midi/MidiService;->MIDI_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return p1
.end method

.method public final isUsbMidiDeviceInUseLocked(Landroid/media/midi/MidiDeviceInfo;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsbMidiLock"
        }
    .end annotation

    .line 1411
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_15

    return v1

    .line 1415
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MidiService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "MIDI 2.0"

    .line 1423
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 1424
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    goto :goto_55

    :cond_54
    return v1

    :cond_55
    :goto_55
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 5

    .line 1131
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 1132
    :try_start_3
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 1133
    invoke-virtual {v1, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_d

    .line 1135
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final onUnlockUser()V
    .registers 7

    .line 846
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 848
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 852
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_20
    if-ge v4, v3, :cond_32

    .line 854
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_2f

    .line 856
    invoke-virtual {p0, v5}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 863
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.bluetoothmidiservice"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_3a} :catch_3a

    :catch_3a
    if-eqz v2, :cond_45

    .line 867
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_45

    .line 868
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    goto :goto_48

    :cond_45
    const/4 v0, -0x1

    .line 870
    iput v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    :goto_48
    return-void
.end method

.method public final openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openBluetoothDevice() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/midi/MidiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 986
    new-instance v1, Lcom/android/server/midi/MidiService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/midi/MidiService$3;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 8

    const-string v0, "MidiService"

    const-string/jumbo v1, "openBluetoothDevice()"

    .line 1018
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    const-string v0, "MidiService"

    const-string v1, "alloc device..."

    .line 1025
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 1027
    :try_start_19
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    if-nez v1, :cond_2d

    .line 1029
    new-instance v1, Lcom/android/server/midi/MidiService$Device;

    invoke-direct {v1, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1030
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_6a

    const-string p0, "MidiService"

    .line 1033
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_48
    const-string p0, "MidiService"

    .line 1037
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addDeviceConnection() [C] device:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p1, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_65

    .line 1040
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_65
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw p0

    :catchall_6a
    move-exception p0

    .line 1032
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 9

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    const-string v0, "MidiService"

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openDevice() client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1e

    return-void

    .line 952
    :cond_1e
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 953
    :try_start_21
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    const-string v2, "MidiService"

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a9

    .line 958
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 961
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_21 .. :try_end_4c} :catchall_c0

    .line 963
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7b

    .line 964
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_56
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService;->isUsbMidiDeviceInUseLocked(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 968
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService;->addUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 969
    monitor-exit v0

    goto :goto_7b

    .line 966
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device already in use: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_78
    move-exception p0

    .line 969
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_78

    throw p0

    .line 973
    :cond_7b
    :goto_7b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7f
    const-string p0, "MidiService"

    .line 975
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addDeviceConnection() [B] device:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {p1, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_98
    .catchall {:try_start_7f .. :try_end_98} :catchall_9c

    .line 978
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_9c
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    throw p0

    .line 959
    :cond_a1
    :try_start_a1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Attempt to open private device with wrong UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 956
    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device does not exist: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_c0
    move-exception p0

    .line 961
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_a1 .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;
    .registers 23

    move-object v0, p0

    move/from16 v2, p7

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v1, 0x1

    if-ne v2, v1, :cond_18

    const/16 v1, 0x3e8

    if-ne v11, v1, :cond_f

    goto :goto_18

    .line 1057
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only system can create USB devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    const/4 v1, 0x3

    if-ne v2, v1, :cond_29

    .line 1058
    iget v1, v0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    if-ne v11, v1, :cond_20

    goto :goto_29

    .line 1059
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_29
    :goto_29
    iget-object v13, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    move/from16 v12, p8

    .line 1063
    :try_start_3e
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZII)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    monitor-exit v13

    return-object v0

    :catchall_44
    move-exception v0

    .line 1066
    monitor-exit v13
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw v0
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 878
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 880
    invoke-static {p1}, Lcom/android/server/midi/MidiService$Client;->-$$Nest$fgetmUid(Lcom/android/server/midi/MidiService$Client;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/midi/MidiService;->updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V

    return-void
.end method

.method public final removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .registers 4

    .line 1200
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1202
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_f
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 1207
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 1208
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_25

    .line 1210
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final removePackageDeviceServers(Ljava/lang/String;)V
    .registers 6

    .line 1370
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 1371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1372
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 1374
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1375
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1376
    invoke-virtual {p0, v2}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_d

    .line 1379
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsbMidiLock"
        }
    .end annotation

    .line 1451
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    return-void

    .line 1455
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MIDI 2.0"

    .line 1460
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1461
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_48
    const-string v1, "MIDI 1.0"

    .line 1462
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 1463
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 1464
    iget-object p1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_72

    .line 1466
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 1468
    :cond_72
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    :goto_77
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 5

    .line 1119
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/midi/MidiService$Device;

    if-eqz p1, :cond_47

    .line 1121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 1125
    invoke-virtual {p1, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 1126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_47

    .line 1122
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDeviceStatus() caller UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not match device\'s UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :goto_47
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 1072
    :try_start_3
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/midi/MidiService$Device;

    if-eqz p0, :cond_14

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 1076
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 887
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    return-void
.end method

.method public final updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V
    .registers 7

    .line 892
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 893
    :try_start_3
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 895
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    if-eqz v2, :cond_d

    .line 897
    :try_start_1f
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 899
    invoke-interface {p2, v1}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29
    .catchall {:try_start_1f .. :try_end_28} :catchall_35

    goto :goto_d

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "MidiService"

    const-string/jumbo v3, "remote exception"

    .line 902
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 906
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p0
.end method
