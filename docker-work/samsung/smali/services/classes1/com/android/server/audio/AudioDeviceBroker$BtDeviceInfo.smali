.class public final Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BtDeviceInfo"
.end annotation


# instance fields
.field public final mAudioSystemDevice:I

.field public final mCodec:I

.field public final mDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mEventSource:Ljava/lang/String;

.field public final mIsLeOutput:Z

.field public final mMusicDevice:I

.field public final mProfile:I

.field public final mState:I

.field public final mSupprNoisy:Z

.field public final mVolume:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 669
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const-string p1, ""

    .line 670
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    const/4 p1, 0x0

    .line 671
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    .line 672
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    .line 673
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 674
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 675
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    const/4 p2, -0x1

    .line 676
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 677
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IIII)V
    .registers 6

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 684
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const-string p1, ""

    .line 685
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 686
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    const/4 p1, 0x0

    .line 687
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    .line 688
    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 689
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 690
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    const/4 p2, -0x1

    .line 691
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 692
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;III)V
    .registers 6

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 655
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 656
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 657
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->isSuppressNoisyIntent()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    .line 658
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->getVolume()I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 659
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 660
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mEventSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    .line 661
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    const/4 p1, 0x0

    .line 662
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    .line 663
    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 704
    :cond_8
    instance-of v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    if-eqz v2, :cond_1f

    .line 705
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-ne v2, v3, :cond_1f

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 706
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    move v0, v1

    :cond_1f
    return v0
.end method
