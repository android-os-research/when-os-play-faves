.class public final Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BtDeviceChangedData"
.end annotation


# instance fields
.field public final mEventSource:Ljava/lang/String;

.field public final mInfo:Landroid/media/BluetoothProfileConnectionInfo;

.field public final mNewDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mPreviousDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V
    .registers 5

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 619
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 620
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 621
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mEventSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtDeviceChangedData profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 628
    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v1

    .line 627
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", switch device: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 629
    invoke-static {v1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] -> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 630
    invoke-static {p0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
