.class public Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothA2dpDeviceInfo"
.end annotation


# instance fields
.field public final mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mCodec:I

.field public final mVolume:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 178
    iput p2, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    .line 179
    iput p3, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 203
    :cond_8
    instance-of v1, p1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    if-eqz v1, :cond_19

    .line 204
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_19
    return v0
.end method

.method public getBtDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getCodec()I
    .registers 1

    .line 191
    iget p0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mCodec:I

    return p0
.end method

.method public getVolume()I
    .registers 1

    .line 187
    iget p0, p0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->mVolume:I

    return p0
.end method
