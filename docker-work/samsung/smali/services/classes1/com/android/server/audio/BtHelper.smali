.class public Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    }
.end annotation


# static fields
.field public static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field public static final BT_LE_AUDIO_MAX_VOL:I = 0xff

.field public static final BT_LE_AUDIO_MIN_VOL:I = 0x0

.field public static final EVENT_ACTIVE_DEVICE_CHANGE:I = 0x1

.field public static final EVENT_DEVICE_CONFIG_CHANGE:I = 0x0

.field public static final REMOTE_MIC_SCO_RESUME:I = 0x2

.field public static final SAP_UUID:Landroid/os/ParcelUuid;

.field public static final SBYTE:Ljava/lang/String; = "WA"

.field public static final SCO_MODE_MAX:I = 0x2

.field public static final SCO_MODE_UNDEFINED:I = -0x1

.field public static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field public static final SCO_MODE_VR:I = 0x2

.field public static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field public static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field public static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field public static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field public static final SCO_STATE_DEACTIVATING:I = 0x5

.field public static final SCO_STATE_INACTIVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AS.BtHelper"


# instance fields
.field public mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field public mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field public mIsBtOffloadEnabled:I

.field public mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field public mScoAudioMode:I

.field public mScoAudioState:I

.field public mScoConnectionState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"

    .line 1202
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/BtHelper;->SAP_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 746
    new-instance v1, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1070
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mIsBtOffloadEnabled:I

    .line 73
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-void
.end method

.method public static a2dpDeviceEventToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    .line 221
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1d
    const-string p0, "ACTIVE_DEVICE_CHANGE"

    return-object p0

    :cond_20
    const-string p0, "DEVICE_CONFIG_CHANGE"

    return-object p0
.end method

.method public static bluetoothCodecToEncodingString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENCODING_BT_CODEC_TYPE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string p0, "ENCODING_LDAC"

    return-object p0

    :cond_28
    const-string p0, "ENCODING_APTX_HD"

    return-object p0

    :cond_2b
    const-string p0, "ENCODING_APTX"

    return-object p0

    :cond_2e
    const-string p0, "ENCODING_AAC"

    return-object p0

    :cond_31
    const-string p0, "ENCODING_SBC"

    return-object p0
.end method

.method public static btDeviceClassToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_4e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1040
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "0x%04x"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_14
    const-string p0, "AUDIO_VIDEO_VIDEO_GAMING_TOY"

    return-object p0

    :sswitch_17
    const-string p0, "AUDIO_VIDEO_RESERVED_0x0444"

    return-object p0

    :sswitch_1a
    const-string p0, "AUDIO_VIDEO_VIDEO_CONFERENCING"

    return-object p0

    :sswitch_1d
    const-string p0, "AUDIO_VIDEO_VIDEO_DISPLAY_AND_LOUDSPEAKER"

    return-object p0

    :sswitch_20
    const-string p0, "AUDIO_VIDEO_VIDEO_MONITOR"

    return-object p0

    :sswitch_23
    const-string p0, "AUDIO_VIDEO_CAMCORDER"

    return-object p0

    :sswitch_26
    const-string p0, "AUDIO_VIDEO_VIDEO_CAMERA"

    return-object p0

    :sswitch_29
    const-string p0, "AUDIO_VIDEO_VCR"

    return-object p0

    :sswitch_2c
    const-string p0, "AUDIO_VIDEO_HIFI_AUDIO"

    return-object p0

    :sswitch_2f
    const-string p0, "AUDIO_VIDEO_SET_TOP_BOX"

    return-object p0

    :sswitch_32
    const-string p0, "AUDIO_VIDEO_CAR_AUDIO"

    return-object p0

    :sswitch_35
    const-string p0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    return-object p0

    :sswitch_38
    const-string p0, "AUDIO_VIDEO_HEADPHONES"

    return-object p0

    :sswitch_3b
    const-string p0, "AUDIO_VIDEO_LOUDSPEAKER"

    return-object p0

    :sswitch_3e
    const-string p0, "AUDIO_VIDEO_MICROPHONE"

    return-object p0

    :sswitch_41
    const-string p0, "AUDIO_VIDEO_RESERVED_0x040C"

    return-object p0

    :sswitch_44
    const-string p0, "AUDIO_VIDEO_HANDSFREE"

    return-object p0

    :sswitch_47
    const-string p0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    return-object p0

    :sswitch_4a
    const-string p0, "AUDIO_VIDEO_UNCATEGORIZED"

    return-object p0

    nop

    :sswitch_data_4e
    .sparse-switch
        0x400 -> :sswitch_4a
        0x404 -> :sswitch_47
        0x408 -> :sswitch_44
        0x40c -> :sswitch_41
        0x410 -> :sswitch_3e
        0x414 -> :sswitch_3b
        0x418 -> :sswitch_38
        0x41c -> :sswitch_35
        0x420 -> :sswitch_32
        0x424 -> :sswitch_2f
        0x428 -> :sswitch_2c
        0x42c -> :sswitch_29
        0x430 -> :sswitch_26
        0x434 -> :sswitch_23
        0x438 -> :sswitch_20
        0x43c -> :sswitch_1d
        0x440 -> :sswitch_1a
        0x444 -> :sswitch_17
        0x448 -> :sswitch_14
    .end sparse-switch
.end method

.method public static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    if-eqz p2, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 941
    :cond_7
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 939
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method public static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4

    if-eqz p2, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 929
    :cond_7
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 927
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method public static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 1

    .line 226
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const-string p0, ""

    :cond_8
    return-object p0
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_25

    if-eqz p0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_MODE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "SCO_MODE_VR"

    return-object p0

    :cond_22
    const-string p0, "SCO_MODE_VIRTUAL_CALL"

    return-object p0

    :cond_25
    const-string p0, "SCO_MODE_UNDEFINED"

    return-object p0
.end method

.method public static scoAudioStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x5

    if-eq p0, v0, :cond_25

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_STATE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string p0, "SCO_STATE_DEACTIVATING"

    return-object p0

    :cond_28
    const-string p0, "SCO_STATE_ACTIVE_INTERNAL"

    return-object p0

    :cond_2b
    const-string p0, "SCO_STATE_ACTIVE_EXTERNAL"

    return-object p0

    :cond_2e
    const-string p0, "SCO_STATE_ACTIVATE_REQ"

    return-object p0

    :cond_31
    const-string p0, "SCO_STATE_INACTIVE"

    return-object p0
.end method


# virtual methods
.method public final broadcastScoConnectionState(I)V
    .registers 2

    .line 631
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    return-void
.end method

.method public final btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .registers 6

    const-string p0, ""

    const/16 v0, 0x10

    if-nez p1, :cond_c

    .line 643
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p1, v0, p0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 645
    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_18

    :cond_17
    move-object p0, v1

    .line 649
    :goto_18
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 652
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x404

    if-eq v2, v3, :cond_32

    const/16 v3, 0x408

    if-eq v2, v3, :cond_32

    const/16 v3, 0x420

    if-eq v2, v3, :cond_2f

    goto :goto_34

    :cond_2f
    const/16 v0, 0x40

    goto :goto_34

    :cond_32
    const/16 v0, 0x20

    .line 663
    :cond_34
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btHeadsetDeviceToAudioDevice btDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " btClass: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4e

    const-string v1, "Unknown"

    .line 665
    :cond_4e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " nativeType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " address: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-static {p0}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS.BtHelper"

    .line 663
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p1, v0, p0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public final checkScoAudioState()V
    .registers 4

    .line 948
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_17

    .line 951
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    const/4 v0, 0x2

    .line 953
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :cond_17
    return-void
.end method

.method public declared-synchronized disconnectAllBluetoothProfiles()V
    .registers 3

    monitor-enter p0

    .line 526
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 527
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 528
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 529
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 530
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V

    .line 531
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBtProfileDisconnected(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 532
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectHeadset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 550
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 551
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 552
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadsetDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1048
    invoke-static {v2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_67

    .line 1051
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mBluetoothHeadsetDevice.DeviceClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->btDeviceClassToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHearingAid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLeAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mA2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mAvrcpAbsVolSupported: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceCloseSco()V
    .registers 4

    .line 1104
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_10

    .line 1105
    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    const/4 v0, 0x5

    .line 1107
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :cond_10
    return-void
.end method

.method public declared-synchronized getA2dp()Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    monitor-enter p0

    .line 1133
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 315
    monitor-exit p0

    return v1

    .line 317
    :cond_8
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_22

    if-nez p1, :cond_10

    .line 319
    monitor-exit p0

    return v1

    .line 321
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_22

    if-nez p1, :cond_18

    .line 323
    monitor-exit p0

    return v1

    .line 325
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothCodecToAudioFormat(I)I

    move-result p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    monitor-exit p0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getActiveA2dpDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    monitor-enter p0

    .line 1179
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1180
    monitor-exit p0

    return-object v0

    .line 1182
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    const-string p0, "(null)"

    goto :goto_9

    .line 705
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public declared-synchronized getBTHeadset()Landroid/bluetooth/BluetoothHeadset;
    .registers 2

    monitor-enter p0

    .line 1141
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getBluetoothHeadset()Z
    .registers 6

    .line 959
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 961
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 968
    :goto_16
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    if-eqz v0, :cond_1c

    const/16 v1, 0xbb8

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    return v0
.end method

.method public getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 638
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getLeAudio()Landroid/bluetooth/BluetoothLeAudio;
    .registers 2

    monitor-enter p0

    .line 1137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 15

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const v1, -0x7ffffff8

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    .line 678
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p2, :cond_27

    .line 681
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    .line 682
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v6

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v4, v5, p2}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z

    move-result v4

    or-int/2addr v4, v3

    goto :goto_47

    :cond_27
    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 685
    fill-array-data v5, :array_5e

    move v6, v3

    move v7, v6

    :goto_2f
    if-ge v7, v4, :cond_46

    .line 690
    aget v8, v5, v7

    .line 691
    iget-object v9, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v10, Landroid/media/AudioDeviceAttributes;

    .line 692
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v11, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v9, v10, p2}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z

    move-result v8

    or-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_46
    move v4, v6

    .line 697
    :goto_47
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    .line 698
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v1, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0, v5, p2}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;Z)Z

    move-result p0

    if-eqz p0, :cond_5b

    if-eqz v4, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v3

    :goto_5c
    return v0

    nop

    :array_5e
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method public declared-synchronized isAvrcpAbsoluteVolumeSupported()Z
    .registers 2

    monitor-enter p0

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBluetoothScoOn()Z
    .registers 4

    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_b

    goto :goto_16

    .line 449
    :cond_b
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    const/16 v2, 0xc

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    monitor-exit p0

    return v1

    .line 447
    :cond_16
    :goto_16
    monitor-exit p0

    return v1

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBluetoothScoSupported()Z
    .registers 7

    monitor-enter p0

    .line 1079
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    const/4 v2, 0x3

    new-array v3, v2, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v1, v3, v1

    aput v2, v3, v4

    .line 1080
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 1085
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_54

    if-nez v0, :cond_21

    .line 1086
    monitor-exit p0

    return v5

    .line 1088
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_52

    const/16 v2, 0xc

    if-eq v0, v2, :cond_52

    const-string v1, "AS.BtHelper"

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mScoAudioState:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_54

    .line 1092
    monitor-exit p0

    return v5

    .line 1096
    :cond_52
    monitor-exit p0

    return v1

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDualA2dpMode()Z
    .registers 2

    monitor-enter p0

    .line 1160
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOnlyWatchConnected()Z
    .registers 5

    monitor-enter p0

    .line 1121
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1122
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 1124
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->isSamsungWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1127
    :cond_1d
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRemoteVolumeControlSupported()Z
    .registers 2

    monitor-enter p0

    .line 1147
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_d

    .line 1148
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getVolumeControlSupport()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1147
    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSamsungWatch(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 1205
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->isSamsungWatchType(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadset;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->isSamsungWatchUuid(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final isSamsungWatchType(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadset;)Z
    .registers 3

    if-eqz p1, :cond_10

    if-nez p2, :cond_5

    goto :goto_10

    .line 1224
    :cond_5
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WA"

    .line 1225
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isSamsungWatchUuid(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1213
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    sget-object v0, Lcom/android/server/audio/BtHelper;->SAP_UUID:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    :cond_11
    return p0
.end method

.method public declared-synchronized isScoStateInternal()Z
    .registers 3

    monitor-enter p0

    .line 1100
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWatchOrBudsWearingOff()Z
    .registers 3

    .line 1112
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1116
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->isSamsungWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/samsung/android/server/audio/AudioHelper;->isBudsWearingOff(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public declared-synchronized onAudioServerDiedRestoreA2dp()V
    .registers 5

    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getBluetoothA2dpEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    const/16 v0, 0xa

    .line 264
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const-string/jumbo v3, "onAudioServerDied()"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 265
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBroadcastScoConnectionState(I)V
    .registers 5

    monitor-enter p0

    .line 514
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-ne p1, v0, :cond_7

    .line 515
    monitor-exit p0

    return-void

    .line 517
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    .line 518
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 519
    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 522
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    .line 523
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 556
    :try_start_4
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 557
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_6a

    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 560
    :try_start_10
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_29

    :cond_16
    const/16 v1, 0x15

    if-ne p1, v1, :cond_20

    .line 562
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_29

    :cond_20
    const/16 v1, 0x16

    if-ne p1, v1, :cond_29

    .line 564
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 566
    :cond_29
    :goto_29
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 567
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_b

    if-eqz v2, :cond_35

    .line 568
    monitor-exit p0

    return-void

    :cond_35
    const/4 v2, 0x0

    .line 570
    :try_start_36
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 571
    invoke-interface {p2, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/4 v2, 0x0

    if-ne p2, v0, :cond_56

    .line 572
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    new-instance v3, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-direct {v3, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(I)V

    const-string/jumbo p1, "mBluetoothProfileServiceListener"

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    goto :goto_68

    .line 577
    :cond_56
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    new-instance v3, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-direct {v3, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(I)V

    const-string/jumbo p1, "mBluetoothProfileServiceListener"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    :try_end_68
    .catchall {:try_start_36 .. :try_end_68} :catchall_b

    .line 582
    :goto_68
    monitor-exit p0

    return-void

    :goto_6a
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 589
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 590
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_17

    .line 593
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    .line 595
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 598
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_64

    const/4 v0, 0x4

    if-eq p1, v1, :cond_35

    if-eq p1, v0, :cond_35

    .line 600
    monitor-exit p0

    return-void

    .line 603
    :cond_35
    :try_start_35
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_5a

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_5a

    if-eq p1, v1, :cond_4e

    if-eq p1, v0, :cond_42

    goto :goto_5a

    .line 614
    :cond_42
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v3, v4, p1}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_5b

    const/4 v0, 0x5

    .line 618
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_5b

    .line 606
    :cond_4e
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v3, v4, p1}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_5b

    const/4 v0, 0x3

    .line 610
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_5b

    :cond_5a
    :goto_5a
    move p1, v2

    :cond_5b
    :goto_5b
    if-nez p1, :cond_62

    .line 624
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 625
    invoke-virtual {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_64

    .line 627
    :cond_62
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onScoAudioStateChanged(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x4

    const-string v2, "BtHelper.receiveBtEvent"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_a4

    goto/16 :goto_8e

    .line 373
    :pswitch_d
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v3, :cond_18

    if-eq p1, v1, :cond_18

    if-eq p1, v0, :cond_18

    .line 376
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_21

    .line 377
    :cond_18
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result p1

    if-eqz p1, :cond_21

    move v5, v6

    .line 381
    :cond_21
    :goto_21
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v6, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    move v4, v6

    goto/16 :goto_8f

    .line 423
    :pswitch_29
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v3, :cond_8e

    if-eq p1, v1, :cond_8e

    if-eq p1, v0, :cond_8e

    .line 426
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_8e

    .line 385
    :pswitch_34
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->muteRingtoneDuringVibration()V

    .line 387
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v5, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 390
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 391
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string/jumbo v1, "run_amplify_ambient_sound"

    .line 390
    invoke-static {p1, v1, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v4, :cond_6c

    .line 394
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.samsung.media.action.ACTION_AUDIO_REMOTEMIC_SCO_RESUME"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    const-string p1, "AS.BtHelper"

    const-string v0, "broadcast remote mic resume intent"

    .line 398
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_6c
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne p1, v6, :cond_83

    .line 408
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_83

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_83

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 409
    invoke-static {p1, v0, v1}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 411
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_8c

    .line 417
    :cond_83
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v4, :cond_88

    goto :goto_89

    :cond_88
    move v6, v5

    .line 420
    :goto_89
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    move v4, v5

    :goto_8c
    move v5, v6

    goto :goto_8f

    :cond_8e
    :goto_8e
    const/4 v4, -0x1

    :goto_8f
    if-eqz v5, :cond_a3

    .line 433
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 436
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    .line 437
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    :cond_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0xa
        :pswitch_34
        :pswitch_29
        :pswitch_d
    .end packed-switch
.end method

.method public declared-synchronized onSystemReady()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    .line 239
    :try_start_2
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 240
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 250
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 252
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 254
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 256
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    .line 259
    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized receiveBtEvent(Landroid/content/Intent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiveBtEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mScoAudioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_bf

    :cond_3b
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    .line 341
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "AS.BtHelper"

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiveBtEvent ACTION_AUDIO_STATE_CHANGED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postScoAudioStateChanged(I)V

    const/16 v1, 0xc

    if-ne v0, v1, :cond_bf

    const-string v0, "com.samsung.bt.hfp.intent.extra.HEADSET_SCO_VOLUME"

    const/4 v1, 0x7

    .line 345
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    .line 346
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x6

    const/16 v2, 0x20

    const-string v3, "BtHelper.receiveBtEvent"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    const-string v0, "AS.BtHelper"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCO volume set to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " by BT intent"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    :cond_99
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.DEVICE_TYPE"

    .line 353
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_bf

    const/4 v0, 0x1

    if-eq v1, v0, :cond_bf

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 355
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_bf
    .catchall {:try_start_1 .. :try_end_bf} :catchall_c1

    .line 359
    :cond_bf
    :goto_bf
    monitor-exit p0

    return-void

    :catchall_c1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final requestScoState(II)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    const-string v0, ", scoAudioMode="

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "AS.BtHelper"

    const/4 v6, 0x0

    const/16 v7, 0xc

    if-ne p1, v7, :cond_10a

    const/4 p1, 0x2

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 794
    iget v7, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eqz v7, :cond_59

    if-eq v7, p1, :cond_54

    if-eq v7, v3, :cond_4c

    if-eq v7, v2, :cond_45

    if-eq v7, v1, :cond_41

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: failed to connect in state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return v6

    .line 842
    :cond_41
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_17f

    .line 845
    :cond_45
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 846
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_17f

    :cond_4c
    const-string/jumbo p0, "requestScoState: already in ACTIVE mode, simply return"

    .line 849
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17f

    .line 858
    :cond_54
    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_17f

    .line 796
    :cond_59
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8d

    .line 798
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 799
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_8d

    .line 800
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 801
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_sco_channel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 803
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-static {p2, v0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-gt p2, p1, :cond_8b

    if-gez p2, :cond_8d

    .line 806
    :cond_8b
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 810
    :cond_8d
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p1, :cond_b6

    .line 811
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 812
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_17f

    .line 814
    :cond_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return v6

    .line 822
    :cond_b6
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_d5

    .line 823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return v6

    .line 829
    :cond_d5
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 831
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_17f

    .line 833
    :cond_e1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: connect to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 834
    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return v6

    :cond_10a
    const/16 v7, 0xa

    if-ne p1, v7, :cond_17f

    .line 867
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v4, :cond_17a

    if-eq p1, v3, :cond_135

    .line 902
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: failed to disconnect in state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return v6

    .line 869
    :cond_135
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p1, :cond_15f

    .line 870
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_142

    .line 871
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_17f

    .line 873
    :cond_142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 876
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    return v6

    .line 882
    :cond_15f
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_169

    .line 883
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 884
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_17f

    .line 888
    :cond_169
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_174

    .line 890
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_17f

    .line 892
    :cond_174
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 893
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_17f

    .line 898
    :cond_17a
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 899
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    :cond_17f
    :goto_17f
    return v4
.end method

.method public declared-synchronized resetBluetoothSco()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 537
    :try_start_2
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 544
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "resetBluetoothSco"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 545
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 5

    const/high16 v0, 0x10000000

    .line 914
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 917
    :try_start_9
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    .line 919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    throw p0
.end method

.method public declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .registers 6

    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1a

    .line 279
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 280
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_85

    .line 281
    monitor-exit p0

    return-void

    .line 284
    :cond_1a
    :try_start_1a
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_33

    .line 285
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_85

    .line 287
    monitor-exit p0

    return-void

    :cond_33
    if-ltz p1, :cond_61

    const/16 v0, 0x96

    if-le p1, v0, :cond_3a

    goto :goto_61

    :cond_3a
    :try_start_3a
    const-string v0, "AS.BtHelper"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndexExt(I)V
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_85

    .line 305
    monitor-exit p0

    return-void

    .line 290
    :cond_61
    :goto_61
    :try_start_61
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAvrcpAbsoluteVolumeIndex: wrong index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.BtHelper"

    .line 291
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 290
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_85

    .line 292
    monitor-exit p0

    return-void

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAvrcpAbsoluteVolumeIndex(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 1188
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_a

    goto :goto_26

    .line 1194
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1195
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    sget-object v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    aget v2, v2, p2

    invoke-virtual {v1, v0, v2, p2}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3b

    goto :goto_e

    .line 1197
    :cond_24
    monitor-exit p0

    return-void

    .line 1189
    :cond_26
    :goto_26
    :try_start_26
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v0, "setAvrcpAbsoluteVolumeIndex list : bailing due to null mA2dp"

    invoke-direct {p2, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.BtHelper"

    .line 1190
    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p2

    .line 1189
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3b

    .line 1191
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setAvrcpAbsoluteVolumeIndexExt(I)V
    .registers 7

    .line 1164
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpDevices()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1e

    const-string v0, "AS.BtHelper"

    const-string v1, "No a2dp volume info"

    .line 1166
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V

    return-void

    :cond_1e
    const/4 p1, 0x0

    .line 1171
    :goto_1f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_41

    .line 1172
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1173
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1174
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    aget v4, v4, v2

    invoke-virtual {v3, v1, v4, v2}, Landroid/bluetooth/BluetoothA2dp;->setA2dpMediaVolume(Landroid/bluetooth/BluetoothDevice;FI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_41
    return-void
.end method

.method public declared-synchronized setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 5

    monitor-enter p0

    .line 272
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    const-string v0, "AS.BtHelper"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 274
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBtOffloadEnable(I)V
    .registers 2

    monitor-enter p0

    .line 1154
    :try_start_1
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mIsBtOffloadEnabled:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1155
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "BtHelper.this"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBtScoActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelper"

    .line 712
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 715
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    return-void

    :cond_32
    const/4 v2, 0x0

    .line 718
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    if-nez v3, :cond_52

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 v0, 0x1

    .line 722
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    if-nez v0, :cond_73

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 728
    :cond_73
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_7a

    .line 730
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 732
    :cond_7a
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_a7

    .line 733
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 734
    invoke-static {v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 735
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "l_smart_view_split_sound_enable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 735
    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 738
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy(I)V

    :cond_a7
    return-void
.end method

.method public declared-synchronized setHearingAidVolume(IIZ)V
    .registers 7

    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_f

    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setHearingAidVolume: null mHearingAid"

    .line 491
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_50

    .line 493
    monitor-exit p0

    return-void

    .line 496
    :cond_f
    :try_start_f
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p2

    float-to-int p2, p2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_1d

    move p2, v0

    :cond_1d
    const-string v0, "AS.BtHelper"

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_49

    .line 507
    sget-object p3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {p3, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 510
    :cond_49
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_50

    .line 511
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLeAudioVolume(III)V
    .registers 8

    monitor-enter p0

    .line 469
    :try_start_1
    iget-object p3, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez p3, :cond_f

    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setLeAudioVolume: null mLeAudio"

    .line 471
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4f

    .line 473
    monitor-exit p0

    return-void

    :cond_f
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 476
    :try_start_18
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p3, v0

    const-string v0, "AS.BtHelper"

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLeAudioVolume: calling mLeAudio.setVolume idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 484
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothLeAudio;->setVolume(I)V
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_4f

    .line 485
    monitor-exit p0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startBluetoothSco(ILjava/lang/String;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/16 p2, 0xc

    .line 458
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopBluetoothSco(Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    monitor-enter p0

    .line 464
    :try_start_1
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/16 p1, 0xa

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateWatchConnectionState()V
    .registers 5

    .line 1230
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1231
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 1233
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->isSamsungWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1236
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveBTevent updateWatchConnectionState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->updateWatchConnectionState(Z)V

    return-void
.end method
