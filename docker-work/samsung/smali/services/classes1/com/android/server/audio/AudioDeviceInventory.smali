.class public Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;,
        Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    }
.end annotation


# static fields
.field public static final BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field public static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AS.AudioDeviceInventory"

.field public static final mMetricsId:Ljava/lang/String; = "audio.device."


# instance fields
.field public final mApmConnectedDevices:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mConnectedDevices:Ljava/util/LinkedHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field public final mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ICapturePresetDevicesRoleDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public final mDevicesLock:Ljava/lang/Object;

.field public mForcePath:Ljava/lang/String;

.field public final mPrefDevDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IStrategyPreferredDevicesDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreferredDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemReady:Z


# direct methods
.method public static synthetic $r8$lambda$1w8QKT0Yz2lok0X0rF-kJ0nfMGE(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3_jRHUxOMebB2lVGo2VbJbNcmc0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7mm2yGxKdz-TfP8qyHR4_bfJDJc(Lcom/android/server/audio/AudioDeviceInventory;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dp$6(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZb4nu2aFEuFYDw8k41I0qhF4sI(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dpSink$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HYq93uKPlqohgAG5OlyY7VjY2s0(Ljava/io/PrintWriter;Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IiYcRyDG8gKybYd-2r4JUeNDTlA(ILandroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectLeAudio$11(ILandroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WQAL7wmgDuuVH1d_hlIo-lcgJ78(Ljava/lang/Integer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$configureHdmiPlugIntent$14(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cTWcIgxAOgoRmHgT7BPyj0e0hMo(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dpSink$7(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dzFh0KbLfbYeckKc_8wERi1Iftc(Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$isCurrentDeviceConnected$13(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eZAjfNczvEVsTK3VQQwyaDfXJPk(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectHearingAid$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-DUyh7xiokPdiSEx5G9qdPGh1I(Lcom/android/server/audio/AudioDeviceInventory;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectLeAudio$12(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jilYapyzIzjzt3ThcP5aS07qL2g(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbVU_vqZlJn_cv5zKfIDhhPJtbA(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$checkDeviceConnected$15(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nvG6vXRTzWQBdzPURyOPSZAcjB4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dp$5(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhCIf-0SzGxn0HFHcOx0EUX2gt0(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$onRestoreDevices$4(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yl4sIx80Ie4dj7YSL1O6kuAIQl4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectHearingAid$9(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 617
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    const/4 v1, 0x4

    .line 618
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 619
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x20000

    .line 620
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1526
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 1527
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1528
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x400

    .line 1529
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x800

    .line 1530
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1531
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x8000000

    .line 1532
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x20000000

    .line 1533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x20000002

    .line 1534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1535
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1536
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1537
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 175
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 179
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 183
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 1887
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mSystemReady:Z

    const-string v0, ""

    .line 1891
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 188
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioSystemAdapter;)V
    .registers 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 175
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 179
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 183
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 1887
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mSystemReady:Z

    const-string v0, ""

    .line 1891
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 195
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method

.method public static synthetic lambda$checkDeviceConnected$15(ILcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 2

    .line 1904
    iget p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic lambda$configureHdmiPlugIntent$14(Ljava/lang/Integer;)I
    .registers 1

    .line 1813
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$disconnectA2dp$5(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 927
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_b

    .line 928
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method private synthetic lambda$disconnectA2dp$6(ILjava/lang/String;)V
    .registers 3

    .line 938
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$disconnectA2dpSink$7(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 949
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_b

    .line 950
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method private synthetic lambda$disconnectA2dpSink$8(Ljava/lang/String;)V
    .registers 2

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$disconnectHearingAid$10(Ljava/lang/String;)V
    .registers 2

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$disconnectHearingAid$9(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 964
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_b

    .line 965
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static synthetic lambda$disconnectLeAudio$11(ILandroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4

    .line 1017
    iget v0, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne v0, p0, :cond_9

    .line 1018
    iget-object p0, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private synthetic lambda$disconnectLeAudio$12(ILjava/lang/String;)V
    .registers 3

    .line 1027
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailable(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;)V
    .registers 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 6

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 5

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 6

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "capturePreset:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isCurrentDeviceConnected$13(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .registers 2

    .line 1516
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object p0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onRestoreDevices$4(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    .line 317
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 318
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    return-void
.end method


# virtual methods
.method public changeActiveBleDevice(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudio()Landroid/bluetooth/BluetoothLeAudio;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2172
    :cond_a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    const-string v3, "AS.AudioDeviceInventory"

    if-nez v2, :cond_18

    const-string p0, "Nothing connected BLE devices"

    .line 2174
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2178
    :cond_18
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_24

    .line 2179
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBleHeadsetConnected(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 2180
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2183
    :cond_24
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_60

    .line 2184
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 2185
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2186
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeActiveBleDevice setActiveDevice for BLE connection address = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2187
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2194
    :cond_60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_a7

    .line 2196
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2197
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_82

    :cond_81
    move-object v2, v1

    :goto_82
    if-eqz v2, :cond_a7

    .line 2203
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz p0, :cond_8b

    .line 2204
    invoke-static {v2}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 2206
    :cond_8b
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object p0

    .line 2207
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeActiveBleDevice activeDeviceName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_a7
    return-object v1
.end method

.method public changeActiveBluetoothDevice(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 2121
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2126
    :cond_a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    const-string v3, "AS.AudioDeviceInventory"

    if-nez v2, :cond_18

    const-string p0, "Nothing connected BT devices"

    .line 2128
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2132
    :cond_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4c

    .line 2133
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 2135
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "changeActiveBluetoothDevice a2dp setActiveDevice = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz p0, :cond_47

    .line 2138
    invoke-static {v4}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 2140
    :cond_47
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2145
    :cond_4c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2146
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto :goto_50

    .line 2149
    :cond_67
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz v4, :cond_6e

    .line 2150
    invoke-static {v3}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 2152
    :cond_6e
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 2154
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 2155
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7e
    return-object v1
.end method

.method public checkDeviceConnected(I)Z
    .registers 5

    const v0, 0x8000

    if-ne p1, v0, :cond_11

    .line 1897
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioSystemAdapter;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_11

    const/4 p0, 0x1

    return p0

    .line 1902
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_14
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    .line 1905
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final checkEnforcedStream(I)Z
    .registers 5

    .line 2369
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2370
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p0

    if-ne p0, p1, :cond_14

    move v2, v1

    :cond_14
    return v2
.end method

.method public checkSendBecomingNoisyIntent(III)I
    .registers 5

    .line 1046
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 1048
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final checkSendBecomingNoisyIntentInt(III)I
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1546
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.checkSendBecomingNoisyIntentInt"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1548
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_19

    const-string v2, "connected"

    goto :goto_1b

    :cond_19
    const-string v2, "disconnected"

    .line 1549
    :goto_1b
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    const-string v1, "AS.AudioDeviceInventory"

    const/4 v2, 0x0

    if-eqz p2, :cond_47

    .line 1553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not sending NOISY: state="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 1557
    :cond_47
    sget-object p2, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 1558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not sending NOISY: device=0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in set "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 1564
    :cond_82
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1565
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_91
    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1566
    iget v5, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-nez v6, :cond_91

    sget-object v6, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 1567
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 1568
    iget v5, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOISY: adding 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_d4
    const/4 v3, 0x3

    if-nez p3, :cond_f5

    .line 1573
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 1574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOISY: musicDevice changing from NONE to 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1574
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_f5
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v4

    .line 1582
    invoke-static {p2, p1}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result p2

    .line 1583
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v5

    .line 1584
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->checkEnforcedStream(I)Z

    move-result v6

    const/16 v7, 0x1f4

    if-eq p1, p3, :cond_111

    if-nez v4, :cond_111

    if-eqz v6, :cond_17e

    :cond_111
    if-nez v5, :cond_17e

    const v6, 0x8000

    if-eq p3, v6, :cond_17e

    .line 1589
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p2, v3, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result p2

    if-nez p2, :cond_146

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1590
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result p2

    if-nez p2, :cond_146

    .line 1593
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string p2, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {p1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1593
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1595
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 1599
    :cond_146
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result p2

    if-eqz p2, :cond_178

    .line 1600
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p2

    if-eqz p2, :cond_178

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1601
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result p2

    if-eqz p2, :cond_178

    .line 1602
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string p2, "dropping ACTION_AUDIO_BECOMING_NOISY by split sound"

    invoke-direct {p1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1604
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 1609
    :cond_178
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy(I)V

    goto :goto_1eb

    .line 1615
    :cond_17e
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1616
    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->isMultiSoundOn()Z

    move-result v6

    if-eqz v6, :cond_1ad

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 1617
    invoke-virtual {v6, v3, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_1ad

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1618
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->getPinDevice()I

    move-result v3

    if-ne v3, p1, :cond_1ad

    .line 1619
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v3, "send ACTION_AUDIO_BECOMING_NOISY to pinned apps"

    invoke-direct {p3, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p3, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p3

    .line 1619
    invoke-virtual {p2, p3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1621
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendBecomingNoisyToPinnedApp(I)V

    goto :goto_1eb

    .line 1624
    :cond_1ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not sending NOISY: device:0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " musicDevice:0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " inComm:"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mediaPolicy:"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " singleDevice:"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1624
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v2

    :goto_1eb
    if-lez v7, :cond_22c

    .line 1632
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->isFactoryMode()Z

    move-result p2

    if-eqz p2, :cond_20c

    const/16 p2, 0x400

    if-eq p1, p2, :cond_1fb

    const/high16 p2, 0x4000000

    if-ne p1, p2, :cond_20c

    .line 1635
    :cond_1fb
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string p2, "HDMI/USB Headset delay in factory mode"

    invoke-direct {p1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_22d

    .line 1638
    :cond_20c
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p1

    if-eqz p1, :cond_22c

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result p0

    if-eqz p0, :cond_22c

    .line 1639
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo p2, "in call wired headset/headphone"

    invoke-direct {p1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1639
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_22d

    :cond_22c
    move v2, v7

    .line 1645
    :goto_22d
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2
.end method

.method public clearPreferredDevicesForCapturePresetSync(I)I
    .registers 6

    .line 787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 788
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForCapturePreset(II)I

    move-result v2

    .line 790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_15

    .line 793
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveClearPreferredDevicesForCapturePreset(I)V

    :cond_15
    return v2
.end method

.method public final configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 10

    const-string p0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 1781
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 1782
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    if-eq p2, p0, :cond_e

    return-void

    .line 1786
    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-array v0, p0, [I

    .line 1788
    invoke-static {p2, v0}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v0

    if-eqz v0, :cond_38

    .line 1790
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "listAudioPorts error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in configureHdmiPlugIntent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioDeviceInventory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1793
    :cond_38
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPort;

    .line 1794
    instance-of v1, v0, Landroid/media/AudioDevicePort;

    if-nez v1, :cond_4d

    goto :goto_3c

    .line 1797
    :cond_4d
    check-cast v0, Landroid/media/AudioDevicePort;

    .line 1798
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/16 v2, 0x400

    if-eq v1, v2, :cond_69

    .line 1799
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_69

    .line 1800
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const v2, 0x40001

    if-eq v1, v2, :cond_69

    goto :goto_3c

    .line 1804
    :cond_69
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v1

    .line 1805
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_a2

    .line 1806
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1807
    array-length v4, v1

    move v5, v3

    :goto_7c
    if-ge v5, v4, :cond_8c

    aget v6, v1, v5

    if-eqz v6, :cond_89

    .line 1810
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1813
    :cond_8c
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    const-string v2, "android.media.extra.ENCODINGS"

    .line 1814
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1818
    :cond_a2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_a8
    if-ge v3, v1, :cond_b6

    aget v4, v0, v3

    .line 1819
    invoke-static {v4}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    if-le v4, v2, :cond_b3

    move v2, v4

    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    :cond_b6
    const-string v0, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 1824
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3c

    :cond_bc
    return-void
.end method

.method public final disconnectA2dp()V
    .registers 5

    .line 923
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 924
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 926
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 931
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dp"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 933
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_39

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 934
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 937
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 941
    :cond_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final disconnectA2dpSink()V
    .registers 5

    .line 945
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 948
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 953
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dpSink"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 955
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 956
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final disconnectHearingAid()V
    .registers 5

    .line 960
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 963
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 968
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectHearingAid"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 970
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_38

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 971
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 973
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 978
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public disconnectLeAudio(I)V
    .registers 6

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_20

    const v0, 0x20000002

    if-eq p1, v0, :cond_20

    const-string p0, "AS.AudioDeviceInventory"

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectLeAudio: Can\'t disconnect not LE Audio device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1013
    :cond_20
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_23
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1016
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>(ILandroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1021
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectLeAudio"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1023
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_56

    const/4 v2, 0x0

    .line 1024
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 1026
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1030
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_23 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public disconnectLeAudioBroadcast()V
    .registers 2

    const v0, 0x20000002

    .line 1038
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    return-void
.end method

.method public disconnectLeAudioUnicast()V
    .registers 2

    const/high16 v0, 0x20000000

    .line 1034
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    return-void
.end method

.method public final dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1843
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1846
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ICapturePresetDevicesRoleDispatcher;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/ICapturePresetDevicesRoleDispatcher;->dispatchDevicesRoleChanged(IILjava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1851
    :cond_17
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchPreferredDevice(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1830
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1833
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyPreferredDevicesDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyPreferredDevicesDispatcher;->dispatchPrefDevicesChanged(ILjava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1838
    :cond_17
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BECOMING_NOISY_INTENT_DEVICES_SET="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Preferred devices for strategy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connected devices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 287
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getAddressForDevice(I)Ljava/lang/String;
    .registers 6

    .line 1949
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    .line 1952
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1955
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1957
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1963
    :cond_1b
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4b

    .line 1965
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getBTHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1967
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1969
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1970
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1971
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    const v0, 0x8000

    if-ne p1, v0, :cond_61

    const-string v0, "0"

    .line 1985
    invoke-static {p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1986
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v1, :cond_61

    return-object v0

    :cond_61
    const-string v0, ""

    .line 1994
    invoke-static {p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1995
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz p0, :cond_73

    .line 1997
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    :cond_73
    return-object v0
.end method

.method public getAvailableDeviceSetForQuickSoundPath()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2218
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    const/high16 v2, 0x200000

    .line 2220
    :try_start_a
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2221
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_15
    const/high16 v2, -0x7ffe0000

    .line 2225
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2226
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2229
    :cond_22
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2230
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2f
    const v2, 0x8000

    .line 2233
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 2246
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2249
    :cond_3d
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_FM_RADIO:Z

    if-eqz p0, :cond_4c

    invoke-static {}, Lcom/samsung/android/audio/AudioManagerHelper;->isFMPlayerActive()Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 2250
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4c
    const/4 p0, 0x1

    .line 2253
    invoke-static {p0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result p0

    const/16 v2, 0x2711

    if-ne p0, v2, :cond_5a

    .line 2254
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2256
    :cond_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_a .. :try_end_5b} :catchall_66

    .line 2258
    new-instance p0, Ljava/util/HashSet;

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2259
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0

    :catchall_66
    move-exception p0

    .line 2256
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public getConnectedDevice()I
    .registers 6

    .line 2344
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2347
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2348
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v4, -0x80000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_33

    goto :goto_b

    .line 2351
    :cond_33
    sget-object v4, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2352
    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    or-int/2addr v1, v2

    goto :goto_b

    :cond_43
    return v1
.end method

.method public getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 1

    .line 1060
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object p0
.end method

.method public getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;
    .registers 3

    .line 1855
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1856
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1855
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1857
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1858
    :try_start_f
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    .line 1860
    monitor-exit v0

    return-object p0

    .line 1862
    :cond_1c
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mSensorUuid:Ljava/util/UUID;

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 1863
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getPriorityDevice(I)I
    .registers 10

    const/16 v0, 0xb

    new-array v1, v0, [I

    .line 2304
    fill-array-data v1, :array_56

    .line 2318
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2320
    :try_start_a
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2321
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2322
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2323
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2324
    iget v6, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v7, -0x80000000

    and-int/2addr v7, v6

    if-eqz v7, :cond_3e

    goto :goto_16

    :cond_3e
    or-int/2addr v5, v6

    goto :goto_16

    :cond_40
    :goto_40
    if-ge v4, v0, :cond_4f

    .line 2330
    aget p0, v1, v4

    if-ne p1, p0, :cond_47

    goto :goto_4c

    :cond_47
    and-int v3, v5, p0

    if-eqz v3, :cond_4c

    goto :goto_50

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_4f
    const/4 p0, 0x2

    .line 2338
    :goto_50
    monitor-exit v2

    return p0

    :catchall_52
    move-exception p0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_52

    throw p0

    nop

    :array_56
    .array-data 4
        0x8000
        0x80
        0x8
        0x4
        0x4000000
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZ)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioDeviceInventory"

    .line 841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleDeviceConnection("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " dev:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " address:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 841
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v7, Landroid/media/MediaMetrics$Item;

    const-string v8, "audio.device.handleDeviceConnection"

    invoke-direct {v7, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 847
    invoke-virtual {v7, v8, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    sget-object v8, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 848
    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    sget-object v8, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    if-eqz v2, :cond_6c

    const-string v9, "connect"

    goto :goto_6e

    :cond_6c
    const-string v9, "disconnect"

    .line 849
    :goto_6e
    invoke-virtual {v7, v8, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    sget-object v8, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 851
    invoke-virtual {v7, v8, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    .line 852
    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 853
    :try_start_7b
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "AS.AudioDeviceInventory"

    .line 856
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deviceKey:0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v12, 0x0

    if-eqz v10, :cond_ae

    const/4 v13, 0x1

    goto :goto_af

    :cond_ae
    move v13, v12

    :goto_af
    const-string v14, "AS.AudioDeviceInventory"

    .line 865
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceInfo:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " is(already)Connected:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v11, -0x40800000    # -1.0f

    .line 869
    invoke-static {v11}, Lcom/samsung/android/media/AudioFxHelper;->setSoundFxVolume(F)V

    if-eqz v2, :cond_16d

    if-nez v13, :cond_16d

    if-eqz p3, :cond_da

    move v2, v12

    goto :goto_118

    .line 876
    :cond_da
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v6, v12}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result v2

    if-eqz v2, :cond_118

    .line 880
    invoke-static {v3}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result v6

    if-eqz v6, :cond_118

    const-string v6, "AS.AudioDeviceInventory"

    .line 881
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retry: not connecting device 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " due to command error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v1, v12, v12}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 884
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v6, v12}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result v2

    :cond_118
    :goto_118
    if-eqz v2, :cond_150

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not connecting device 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to command error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceInventory"

    .line 891
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v7, v1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v2, "disconnected"

    .line 893
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 895
    monitor-exit v8

    return v12

    .line 897
    :cond_150
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v2, v3, v5, v4, v12}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 900
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "connected"

    invoke-virtual {v7, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 904
    monitor-exit v8

    const/4 v0, 0x1

    return v0

    :cond_16d
    if-nez v2, :cond_189

    if-eqz v13, :cond_189

    .line 906
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v1, v12, v12}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 909
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "connected"

    invoke-virtual {v7, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 911
    monitor-exit v8

    const/4 v0, 0x1

    return v0

    :cond_189
    const-string v0, "AS.AudioDeviceInventory"

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", deviceSpec="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", connect="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    monitor-exit v8
    :try_end_1c2
    .catchall {:try_start_7b .. :try_end_1c2} :catchall_1ce

    .line 917
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "disconnected"

    invoke-virtual {v7, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v12

    :catchall_1ce
    move-exception v0

    .line 916
    :try_start_1cf
    monitor-exit v8
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_1ce

    throw v0
.end method

.method public handleFmRadioDeviceConnection(IILjava/lang/String;)V
    .registers 6

    .line 1911
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const-string v1, ""

    invoke-direct {v0, p1, p3, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    return-void
.end method

.method public handleTmsStateChange(ZI)V
    .registers 11

    const/high16 v0, 0x200000

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_9

    :cond_6
    const v1, -0x4fffffff

    :goto_9
    const-string v2, ""

    .line 2378
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2380
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result v3

    .line 2381
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_54

    if-ne p2, v5, :cond_33

    if-eqz v3, :cond_33

    .line 2384
    :try_start_1f
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance p2, Landroid/media/AudioDeviceAttributes;

    const-string v0, ""

    const-string v3, ""

    invoke-direct {p2, v1, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v7, v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 2386
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_33
    if-ne p2, v6, :cond_8c

    if-nez v3, :cond_8c

    .line 2388
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance p2, Landroid/media/AudioDeviceAttributes;

    const-string v3, ""

    const-string v5, ""

    invoke-direct {p2, v0, v3, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 2391
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string p2, ""

    const-string v0, ""

    invoke-direct {p1, v1, p2, v0, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_54
    if-ne p2, v5, :cond_6c

    if-eqz v3, :cond_6c

    .line 2396
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance p2, Landroid/media/AudioDeviceAttributes;

    const-string v0, ""

    const-string v3, ""

    invoke-direct {p2, v1, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v7, v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 2398
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_6c
    if-ne p2, v6, :cond_8c

    if-nez v3, :cond_8c

    .line 2400
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance p2, Landroid/media/AudioDeviceAttributes;

    const-string v0, ""

    const-string v3, ""

    invoke-direct {p2, v1, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 2402
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string p2, ""

    const-string v0, ""

    invoke-direct {p1, v1, p2, v0, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    :cond_8c
    :goto_8c
    monitor-exit v4

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v4
    :try_end_90
    .catchall {:try_start_1f .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1876
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x80

    .line 1875
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1877
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1878
    :try_start_d
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 1879
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public isBleHeadsetConnected(Ljava/lang/String;)Z
    .registers 5

    .line 2430
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2431
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2432
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_d

    const/4 p0, 0x1

    .line 2434
    monitor-exit v0

    return p0

    :cond_2a
    const/4 p0, 0x0

    .line 2437
    monitor-exit v0

    return p0

    :catchall_2d
    move-exception p0

    .line 2438
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final isBleOnlyOutDevice(Z)Z
    .registers 2

    .line 2423
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result p0

    if-nez p0, :cond_c

    if-eqz p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isBleOutDevice(I)Z
    .registers 2

    const/high16 p0, 0x20000000

    if-eq p1, p0, :cond_c

    const p0, 0x20000001

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public final isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z
    .registers 2

    .line 2416
    iget p0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_c

    const/16 p1, 0x63

    if-ne p0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public final isCurrentDeviceConnected()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3

    .line 817
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 818
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 817
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 819
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_f
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 821
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public isForceSpeakerOn()Z
    .registers 1

    .line 1924
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isForceSpeakerOn()Z

    move-result p0

    return p0
.end method

.method public isHearingAidConnected()Z
    .registers 4

    .line 1414
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1416
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v2, 0x8000000

    if-ne v1, v2, :cond_d

    const/4 p0, 0x1

    .line 1417
    monitor-exit v0

    return p0

    :cond_22
    const/4 p0, 0x0

    .line 1420
    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    .line 1421
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final isRestrictedHeadphone()Z
    .registers 1

    .line 1918
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isRestrictedHeadphone()Z

    move-result p0

    return p0
.end method

.method public final makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 1168
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/16 v2, 0x80

    invoke-direct {v0, v2, p1, p2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1, p4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result p3

    const-string v0, "AS.AudioDeviceInventory"

    if-eqz p3, :cond_43

    .line 1175
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APM failed to make available A2DP device addr="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1175
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void

    .line 1187
    :cond_43
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2DP device addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " now available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    .line 1187
    invoke-virtual {p3, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1200
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v0, "A2dpSuspended=false"

    invoke-virtual {p3, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 1206
    new-instance p3, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p3, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/audio/UuidUtils;->uuidFromAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;

    move-result-object v8

    .line 1208
    new-instance p3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/16 v4, 0x80

    move-object v3, p3

    move-object v5, p2

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/util/UUID;)V

    .line 1210
    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1211
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p4, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 1221
    invoke-virtual {p0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    return-void
.end method

.method public final makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "A2dpSuspended=true"

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    const/16 v0, 0x80

    .line 1321
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v1, :cond_1a

    .line 1323
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1326
    :goto_1b
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpTimeout(Ljava/lang/String;II)V

    return-void
.end method

.method public final makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1227
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    new-instance v1, Landroid/media/MediaMetrics$Item;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio.device.a2dp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 1231
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "makeA2dpDeviceUnavailableNow"

    .line 1232
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    if-nez p1, :cond_3b

    .line 1235
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "address null"

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_3b
    const/16 v2, 0x80

    .line 1239
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1241
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_4e
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1246
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    move v6, v8

    goto :goto_4e

    :cond_63
    const-string v4, "AS.AudioDeviceInventory"

    if-nez v6, :cond_b1

    .line 1252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "makeA2dpDeviceUnavailableNow return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not connected !!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP device "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " made unavailable, was not used"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1253
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1256
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "A2DP device made unavailable, was not used"

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1258
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 1282
    :cond_b1
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v7, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v7, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v7, v5, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result p1

    if-eqz p1, :cond_e6

    .line 1287
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APM failed to make unavailable A2DP device addr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v6, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 1287
    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_10a

    .line 1294
    :cond_e6
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2DP device addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " made unavailable"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p2, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p2

    .line 1294
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1300
    :goto_10a
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1305
    invoke-virtual {p0, p1, v8}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1306
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1309
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result p2

    if-nez p2, :cond_11f

    .line 1310
    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    :cond_11f
    return-void
.end method

.method public final makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    const/high16 v2, -0x7ffe0000

    invoke-direct {v1, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 1338
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1339
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string v3, ""

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1338
    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1346
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    const/high16 v2, -0x7ffe0000

    invoke-direct {v1, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 1350
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1351
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1350
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1357
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v0, 0x8000000

    invoke-virtual {p4, p3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result p4

    .line 1359
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p4, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 1361
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, v0, p1, p2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p4, v1, v2, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 1365
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1366
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v2, v0, p2, p1, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1365
    invoke-virtual {p4, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 1370
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v1, "makeHearingAidDeviceAvailable"

    invoke-virtual {p4, p3, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 1372
    invoke-virtual {p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1373
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p4, "audio.device.makeHearingAidDeviceAvailable"

    invoke-direct {p0, p4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p4, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1376
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1374
    invoke-virtual {p0, p4, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1380
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p4

    .line 1379
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1381
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 1383
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p2

    .line 1382
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1384
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    const/high16 v2, 0x8000000

    invoke-direct {v1, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 1393
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1394
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1393
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1396
    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 1397
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string v0, "audio.device.makeHearingAidDeviceUnavailable"

    invoke-direct {p0, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1400
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1398
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1404
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1403
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1405
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final makeLeAudioDeviceAvailable(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    if-eqz p5, :cond_57

    .line 1431
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1, p6}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 1435
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result p4

    if-eqz p4, :cond_14

    const/high16 p4, 0x400000

    goto :goto_22

    .line 1437
    :cond_14
    invoke-virtual {p0, p5}, Lcom/android/server/audio/AudioDeviceInventory;->isBleOutDevice(I)Z

    move-result p4

    if-eqz p4, :cond_21

    const/16 p4, 0x63

    if-ne p7, p4, :cond_21

    const/high16 p4, 0x800000

    goto :goto_22

    :cond_21
    move p4, v1

    .line 1441
    :goto_22
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "makeLeAudioDeviceAvailable format = "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p7, "AS.AudioDeviceInventory"

    invoke-static {p7, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    new-instance p6, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p6, p5, p1, p2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p6, v0, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 1444
    iget-object p6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {p5, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p7

    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v0, p5, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p6, p7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p5}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 1455
    invoke-virtual {p0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    :cond_57
    const/4 p1, -0x1

    if-ne p3, p1, :cond_5b

    return-void

    .line 1466
    :cond_5b
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, p3, p5}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result p1

    .line 1472
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->getMaxVssVolumeForStream(I)I

    move-result p2

    .line 1473
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    .line 1474
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo p1, "makeLeAudioDeviceAvailable"

    invoke-virtual {p0, p3, p5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    return-void
.end method

.method public final makeLeAudioDeviceUnavailable(Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4a

    .line 1480
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 1483
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->isBleOutDevice(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 1485
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1486
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1487
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->isBleOutDevice(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1488
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1492
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 1493
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo p2, "makeLeAudioDeviceUnavailable"

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->removeBleCommunicationRouteClient(Ljava/lang/String;)V

    :cond_4a
    const/4 p1, 0x0

    .line 1497
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    return-void
.end method

.method public onBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .line 474
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onBluetoothA2dpDeviceConfigChange"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 476
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 478
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_23

    .line 480
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "btDevice null"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 484
    :cond_23
    invoke-static {v2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AS.AudioDeviceInventory"

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothA2dpDeviceConfigChange btDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v3

    .line 491
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result p1

    .line 493
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v4, ""

    .line 497
    :cond_52
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onBluetoothA2dpDeviceConfigChange addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 502
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v7

    const/16 v6, 0x80

    .line 514
    :try_start_7f
    invoke-static {v6, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 516
    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v9, :cond_b8

    .line 518
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const-string p1, "AS.AudioDeviceInventory"

    const-string p2, "DeviceInfo is null. send MSG for handleDeviceConfigChange"

    .line 519
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_b6

    :cond_a2
    const-string p0, "AS.AudioDeviceInventory"

    const-string/jumbo p1, "invalid null DeviceInfo in onBluetoothA2dpDeviceConfigChange"

    .line 523
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo p1, "null DeviceInfo"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 526
    :goto_b6
    monitor-exit v7

    return-void

    .line 529
    :cond_b8
    sget-object v10, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v10, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v10

    sget-object v11, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 531
    invoke-static {p1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v12

    .line 530
    invoke-virtual {v10, v11, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v10

    sget-object v11, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 532
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v10

    sget-object v11, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object v12, v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 533
    invoke-virtual {v10, v11, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    const/4 v10, 0x1

    const/4 v11, 0x3

    if-ne p2, v10, :cond_eb

    const/4 p2, -0x1

    if-eq v3, p2, :cond_f8

    .line 538
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v3, v3, 0xa

    const-string/jumbo v8, "onBluetoothA2dpDeviceConfigChange"

    invoke-virtual {p2, v11, v3, v6, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_f8

    :cond_eb
    if-nez p2, :cond_f8

    .line 545
    iget p2, v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq p2, p1, :cond_f8

    .line 546
    iput p1, v9, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 547
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v9}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_f8
    :goto_f8
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 552
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual {p2, v6, v4, v3, p1}, Lcom/android/server/audio/AudioSystemAdapter;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_143

    .line 555
    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM handleDeviceConfigChange failed for A2DP device addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codec="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {p1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.AudioDeviceInventory"

    .line 559
    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    .line 555
    invoke-virtual {v5, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 561
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v11}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result v5

    .line 564
    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIII)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)I

    goto :goto_16e

    .line 568
    :cond_143
    new-instance p0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM handleDeviceConfigChange success for A2DP device addr="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codec="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.AudioDeviceInventory"

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p0

    .line 568
    invoke-virtual {v5, p0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 574
    :goto_16e
    monitor-exit v7
    :try_end_16f
    .catchall {:try_start_7f .. :try_end_16f} :catchall_173

    .line 575
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :catchall_173
    move-exception p0

    .line 574
    :try_start_174
    monitor-exit v7
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    throw p0
.end method

.method public declared-synchronized onBtProfileDisconnected(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_40

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_38

    const/16 v0, 0x15

    if-eq p1, v0, :cond_34

    const/16 v0, 0x16

    if-eq p1, v0, :cond_30

    :try_start_14
    const-string v0, "AS.AudioDeviceInventory"

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtProfileDisconnected: Not a valid profile to disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1000
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 993
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudioUnicast()V

    goto :goto_43

    .line 990
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    goto :goto_43

    .line 996
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudioBroadcast()V

    goto :goto_43

    .line 987
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    goto :goto_43

    .line 984
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_45

    .line 1004
    :goto_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 581
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onReportNewRoutes()V
    .registers 7

    .line 585
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    if-lez v0, :cond_83

    .line 587
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onReportNewRoutes"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->OBSERVERS:Landroid/media/MediaMetrics$Key;

    .line 588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 591
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 592
    :try_start_1f
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    const-string v3, "BT"

    .line 594
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v3, v3, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v3, :cond_40

    :cond_36
    const-string v3, "OTHERS"

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 596
    :cond_40
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/AudioRoutesInfo;->setForcePath(Ljava/lang/String;)V

    const-string v3, ""

    .line 597
    iput-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    :cond_49
    const-string v3, "AS.AudioDeviceInventory"

    .line 599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchAudioRoutesChanged mainType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v5, v5, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " setForcePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v2}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_1f .. :try_end_70} :catchall_80

    :catch_70
    :goto_70
    if-lez v0, :cond_83

    add-int/lit8 v0, v0, -0x1

    .line 605
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 607
    :try_start_7c
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_70

    goto :goto_70

    :catchall_80
    move-exception p0

    .line 602
    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0

    .line 611
    :cond_83
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 612
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method public onRestoreDevices()V
    .registers 9

    .line 301
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 304
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    goto :goto_d

    .line 308
    :cond_1f
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v4, Landroid/media/AudioDeviceAttributes;

    iget v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    goto :goto_d

    .line 314
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_4d

    .line 315
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 316
    :try_start_37
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 319
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_4a

    .line 320
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    monitor-enter p0

    .line 322
    :try_start_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v0

    :catchall_4a
    move-exception p0

    .line 319
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0

    :catchall_4d
    move-exception p0

    .line 314
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public onSaveClearPreferredDevicesForCapturePreset(I)V
    .registers 4

    .line 720
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public onSaveRemovePreferredDevices(I)V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method public onSaveSetPreferredDevices(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method public onSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    const-string v0, "AS.AudioDeviceInventory"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetBtActiveDevice btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 330
    invoke-static {v2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 331
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    const/16 v3, 0x63

    if-ne v2, v3, :cond_32

    const-string v2, "STATE_CONNECTED_IMPLICIT"

    goto :goto_36

    .line 337
    :cond_32
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getConnectionStateName(I)Ljava/lang/String;

    move-result-object v2

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v0, ""

    :cond_4e
    move-object v2, v0

    .line 344
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT connected: addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {v2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " codec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    .line 348
    invoke-static {v4}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 350
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onSetBtActiveDevice"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 351
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 353
    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    .line 356
    invoke-static {v3}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "onSetBtActiveDevice"

    .line 357
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 359
    invoke-static {p2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    move-result v3

    if-eqz v3, :cond_df

    const-string v3, "connected"

    goto :goto_e1

    :cond_df
    const-string v3, "disconnected"

    .line 360
    :goto_e1
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 369
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_eb
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_ff

    move v5, v4

    goto :goto_100

    :cond_ff
    move v5, v3

    :goto_100
    if-eqz v5, :cond_10a

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    move-result v6

    if-nez v6, :cond_10a

    move v6, v4

    goto :goto_10b

    :cond_10a
    move v6, v3

    :goto_10b
    if-nez v5, :cond_114

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_114

    move v3, v4

    .line 385
    :cond_114
    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-eq v5, v7, :cond_1b3

    const/16 v1, 0xb

    if-eq v5, v1, :cond_1a7

    const/16 v1, 0x1a

    if-eq v5, v1, :cond_15f

    const/16 v1, 0x15

    if-eq v5, v1, :cond_148

    const/16 v1, 0x16

    if-ne v5, v1, :cond_12b

    goto :goto_15f

    .line 464
    :cond_12b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid profile "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 465
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_148
    if-eqz v6, :cond_14f

    .line 432
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    goto/16 :goto_216

    :cond_14f
    if-eqz v3, :cond_216

    .line 434
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "onSetBtActiveDevice"

    invoke-virtual {p0, v2, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_216

    :cond_15f
    :goto_15f
    if-eqz v6, :cond_177

    .line 441
    iget p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    invoke-virtual {p0, v2, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailable(Ljava/lang/String;I)V

    .line 442
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz p2, :cond_216

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBleOnlyOutDevice(Z)Z

    move-result p1

    if-eqz p1, :cond_216

    .line 444
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateBtVolumeMonitor()V

    goto/16 :goto_216

    :cond_177
    if-eqz v3, :cond_216

    .line 447
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz v1, :cond_18a

    iget-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 448
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->isBleOnlyOutDevice(Z)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 449
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 452
    :cond_18a
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 453
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    if-ne v1, v8, :cond_196

    move v5, v8

    goto :goto_199

    :cond_196
    mul-int/lit8 v1, v1, 0xa

    move v5, v1

    :goto_199
    iget v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    const-string/jumbo v7, "onSetBtActiveDevice"

    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    move-object v1, p0

    move v4, p2

    .line 452
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceAvailable(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto/16 :goto_216

    :cond_1a7
    if-eqz v6, :cond_1ad

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_216

    :cond_1ad
    if-eqz v3, :cond_216

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    goto :goto_216

    .line 395
    :cond_1b3
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v7, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    iget v9, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    invoke-virtual {p2, v5, v7, v9}, Lcom/android/server/audio/AudioDeviceBroker;->connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;II)V

    const/16 p2, 0x80

    if-eqz v6, :cond_1d9

    .line 398
    iget p1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-virtual {p0, v2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 401
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result p1

    if-nez p1, :cond_1d1

    const/4 p1, 0x0

    .line 402
    invoke-virtual {p0, p1, v4}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 404
    :cond_1d1
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz p1, :cond_216

    .line 405
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateBtVolumeMonitor()V

    goto :goto_216

    :cond_1d9
    if-eqz v3, :cond_216

    .line 409
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    const/4 v3, 0x3

    if-eq v1, v8, :cond_1ed

    .line 410
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v1, v1, 0xa

    iget v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    const-string/jumbo v5, "onSetBtActiveDevice"

    invoke-virtual {p2, v3, v1, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_1ff

    .line 415
    :cond_1ed
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v8, :cond_1ff

    .line 417
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v5, "onSetBtActiveDevice"

    invoke-virtual {v4, v3, v1, p2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 422
    :cond_1ff
    :goto_1ff
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz p2, :cond_208

    .line 423
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 426
    :cond_208
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "onSetBtActiveDevice"

    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    invoke-virtual {p0, v2, p2, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    :cond_216
    :goto_216
    monitor-exit v0

    return-void

    :catchall_218
    move-exception p0

    monitor-exit v0
    :try_end_21a
    .catchall {:try_start_eb .. :try_end_21a} :catchall_218

    throw p0
.end method

.method public onSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;)V
    .registers 8

    .line 2089
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mDevice:I

    .line 2090
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mAddress:Ljava/lang/String;

    .line 2091
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mActiveBTDeviceName:Ljava/lang/String;

    .line 2093
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2094
    :try_start_9
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v0, :cond_20

    const-string p0, "AS.AudioDeviceInventory"

    const-string p1, "There is no device spec in connected devices"

    .line 2097
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    monitor-exit v2

    return-void

    .line 2100
    :cond_20
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v4, Landroid/media/AudioDeviceAttributes;

    iget v0, v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const-string v5, ""

    invoke-direct {v4, v0, v1, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result v0

    const-string v3, "AS.AudioDeviceInventory"

    .line 2103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device is changed by force ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_6e

    .line 2106
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    :try_start_4b
    const-string v2, "AS.AudioDeviceInventory"

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send NEW_ROUTES MSG, BT Name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 2110
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->updateMediaRoutes(Z)V

    .line 2112
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_4b .. :try_end_6d} :catchall_6b

    throw p0

    :catchall_6e
    move-exception p0

    .line 2104
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .registers 9

    .line 626
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 628
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v2, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 630
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetWiredDeviceConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 632
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 634
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 636
    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez v3, :cond_36

    const-string v3, "disconnected"

    goto :goto_38

    :cond_36
    const-string v3, "connected"

    .line 635
    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 638
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 639
    :try_start_3f
    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_59

    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 640
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 641
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v6, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 645
    :cond_59
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    iget v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-ne v6, v4, :cond_60

    goto :goto_61

    :cond_60
    move v4, v5

    :goto_61
    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZ)Z

    move-result v3

    if-nez v3, :cond_76

    .line 648
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "change of connection state failed"

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 649
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 650
    monitor-exit v2

    return-void

    .line 652
    :cond_76
    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz v3, :cond_9c

    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_81

    .line 655
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->increaseEarJackCounter()V

    .line 658
    :cond_81
    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 659
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {v3, v5, v5, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 662
    :cond_95
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    :cond_9c
    const/16 v3, 0x400

    if-ne v0, v3, :cond_a9

    .line 665
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 668
    :cond_a9
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/server/audio/AudioHelper;->wakeUpDeviceByWiredHeadset(Landroid/content/Context;I)V

    .line 670
    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 671
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v5}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 672
    iget p1, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 673
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_3f .. :try_end_c9} :catchall_cd

    .line 674
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :catchall_cd
    move-exception p0

    .line 673
    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0
.end method

.method public onSystemReady()V
    .registers 2

    const/4 v0, 0x1

    .line 2268
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mSystemReady:Z

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionStateBeforeBoot()V

    return-void
.end method

.method public onToggleHdmi()V
    .registers 7

    .line 678
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onToggleHdmi"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    const/16 v2, 0x400

    .line 680
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 679
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    const-string v3, ""

    .line 683
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v3, :cond_3c

    const-string p0, "AS.AudioDeviceInventory"

    const-string/jumbo v2, "invalid null DeviceInfo in onToggleHdmi"

    .line 686
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "invalid null DeviceInfo"

    invoke-virtual {v0, p0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 688
    monitor-exit v1

    return-void

    .line 691
    :cond_3c
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "android"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 694
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    const-string v4, "android"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    .line 697
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_5b

    .line 698
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :catchall_5b
    move-exception p0

    .line 697
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 2

    .line 800
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 2

    .line 765
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removePreferredDevicesForStrategySync(I)I
    .registers 8

    .line 747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 749
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePreferredDevicesForStrategySync, strategy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceInventory"

    .line 751
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    .line 749
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 753
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForStrategy(II)I

    move-result v2

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_37

    .line 758
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveRemovePreferredDevicesForStrategy(I)V

    :cond_37
    return v2
.end method

.method public final sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceInventory"

    .line 1661
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "builtInMic"

    const-string v2, ""

    const/high16 v3, 0x4000000

    const/high16 v4, -0x7e000000

    const-string/jumbo v5, "microphone"

    const-string v6, "android.intent.action.HEADSET_PLUG"

    const/4 v7, 0x1

    if-eq p1, v4, :cond_94

    const/4 v8, 0x4

    if-eq p1, v8, :cond_8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eq p1, v8, :cond_86

    const/16 v8, 0x400

    if-eq p1, v8, :cond_82

    const/high16 v8, 0x20000

    if-eq p1, v8, :cond_86

    if-eq p1, v3, :cond_6d

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_82

    const v1, 0x40001

    if-eq p1, v1, :cond_82

    goto :goto_a7

    .line 1678
    :cond_6d
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_77

    move v9, v7

    .line 1679
    :cond_77
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1682
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_USB_HEADSET_FOR_CAMCORDER:Z

    if-nez v2, :cond_a7

    .line 1683
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a7

    .line 1702
    :cond_82
    invoke-virtual {p0, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_a7

    .line 1674
    :cond_86
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a7

    .line 1669
    :cond_8d
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a7

    .line 1687
    :cond_94
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_10a

    .line 1689
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1690
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1691
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_USB_HEADSET_FOR_CAMCORDER:Z

    if-nez v2, :cond_a7

    .line 1692
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    :cond_a7
    :goto_a7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ae

    return-void

    :cond_ae
    const-string/jumbo v1, "state"

    .line 1710
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "address"

    .line 1711
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "portName"

    .line 1712
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x40000000    # 2.0f

    .line 1714
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 1718
    :try_start_c8
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V

    .line 1720
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p4

    if-eqz p4, :cond_f0

    .line 1721
    new-instance p4, Landroid/content/Intent;

    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 1723
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    .line 1724
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1725
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p4}, Lcom/android/server/audio/AudioDeviceBroker;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    :try_end_f0
    .catchall {:try_start_c8 .. :try_end_f0} :catchall_105

    .line 1728
    :cond_f0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1731
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p1

    if-eqz p1, :cond_104

    .line 1732
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isForceSpeakerOn()Z

    move-result p1

    if-eqz p1, :cond_104

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->sendMsgForForceSpeaker()V

    :cond_104
    return-void

    :catchall_105
    move-exception p0

    .line 1728
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1729
    throw p0

    :cond_10a
    return-void
.end method

.method public sendMsgForForceSpeaker()V
    .registers 1

    .line 1928
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgForForceSpeaker()V

    return-void
.end method

.method public setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)I
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_3
    iget-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-nez v1, :cond_30

    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v6, 0x16

    if-eq v1, v6, :cond_16

    const/16 v6, 0x1a

    if-ne v1, v6, :cond_1a

    :cond_16
    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-nez v6, :cond_1e

    :cond_1a
    if-eq v1, v4, :cond_1e

    if-ne v1, v2, :cond_30

    .line 1077
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBtStateConnected(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v3

    goto :goto_27

    :cond_26
    move v1, v5

    .line 1085
    :goto_27
    iget v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iget v7, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    invoke-virtual {p0, v6, v1, v7}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    goto :goto_31

    :cond_30
    move v1, v5

    :goto_31
    const-string v6, "AS.AudioDeviceInventory"

    .line 1092
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothActiveDevice device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1093
    invoke-static {v8}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 1094
    invoke-static {v8}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    const/16 v9, 0x63

    if-ne v8, v9, :cond_63

    const-string v8, "STATE_CONNECTED_IMPLICIT"

    goto :goto_67

    .line 1100
    :cond_63
    invoke-static {v8}, Landroid/bluetooth/BluetoothProfile;->getConnectionStateName(I)Ljava/lang/String;

    move-result-object v8

    :goto_67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " delay(ms): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " codec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mCodec:I

    .line 1102
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " suppressNoisyIntent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    .line 1106
    iget v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-ne v6, v4, :cond_a5

    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne p1, v2, :cond_a5

    .line 1108
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string p1, "HEARING_AID set to CONNECTED"

    invoke-virtual {p0, v3, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 1111
    :cond_a5
    monitor-exit v0

    return v1

    :catchall_a7
    move-exception p0

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method public final setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDevicesLock"
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 1503
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1504
    monitor-exit v0

    return-void

    :cond_f
    if-nez p1, :cond_17

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1507
    :cond_17
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 1508
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1510
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public setDeviceBroker(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-void
.end method

.method public setDeviceToForceByUser(ILjava/lang/String;Z)I
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AudioDeviceBroker.mDeviceStateLock"
        }
    .end annotation

    const-string v0, "AS.AudioDeviceInventory"

    .line 2004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceToForceByUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x8000

    if-ne p1, v0, :cond_3f

    const-string p2, "AS.AudioDeviceInventory"

    const-string/jumbo v0, "setDeviceToForceByUser: remote submix should use address 0"

    .line 2006
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "0"

    .line 2011
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7c

    if-nez p3, :cond_7c

    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2013
    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceBroker;->isMultiSoundOn()Z

    move-result p3

    if-eqz p3, :cond_7c

    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2014
    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceBroker;->getPinDevice()I

    move-result p3

    const/16 v0, 0x80

    if-ne p3, v0, :cond_7c

    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x3

    .line 2015
    invoke-virtual {p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    if-eq p3, v0, :cond_7c

    const-string p1, "AS.AudioDeviceInventory"

    const-string p3, "Device does not change while MultiSound On"

    .line 2021
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->changeActiveBluetoothDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2024
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p3

    .line 2025
    :try_start_73
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 2026
    monitor-exit p3

    return v2

    :catchall_79
    move-exception p0

    monitor-exit p3
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_79

    throw p0

    .line 2031
    :cond_7c
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2032
    :try_start_7f
    invoke-static {p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2033
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_a4

    .line 2036
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    const-string p0, "AS.AudioDeviceInventory"

    const-string p1, "There is no device spec in connected devices"

    .line 2037
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    monitor-exit p3

    return v3

    .line 2044
    :cond_a4
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_df

    .line 2045
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->changeActiveBluetoothDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setDeviceToForceByUser(true"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ") from u/pid:"

    .line 2048
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2050
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    goto :goto_148

    .line 2051
    :cond_df
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 2052
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->changeActiveBleDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f3

    .line 2054
    monitor-exit p3

    return v3

    .line 2056
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setDeviceToForceByUser(true) BLE address = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2057
    invoke-static {p2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from u/pid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    goto :goto_148

    .line 2063
    :cond_124
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    if-eqz v0, :cond_148

    .line 2065
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAudioPath(I)I

    move-result v0

    const-string v3, "AS.AudioDeviceInventory"

    .line 2066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAudioPath delay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    :cond_148
    :goto_148
    move v0, v2

    .line 2070
    :goto_149
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;I)V

    .line 2072
    monitor-exit p3

    return v2

    :catchall_155
    move-exception p0

    monitor-exit p3
    :try_end_157
    .catchall {:try_start_7f .. :try_end_157} :catchall_155

    throw p0
.end method

.method public setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 776
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result v2

    .line 778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_15

    .line 781
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V

    :cond_15
    return v2
.end method

.method public setPreferredDevicesForStrategySync(ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 733
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredDevicesForStrategySync, strategy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " devices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceInventory"

    .line 735
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    .line 733
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 736
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result v2

    .line 738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_3f

    .line 741
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveSetPreferredDevicesForStrategy(ILjava/util/List;)V

    :cond_3f
    return v2
.end method

.method public setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5

    .line 1151
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    const-string v1, "com.android.server.audio"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 1153
    iput-boolean p1, v0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 1154
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    return-void
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I
    .registers 10

    .line 1117
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1118
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    .line 1119
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p2, :cond_28

    .line 1123
    invoke-static {v1}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isRestrictedHeadphone()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1124
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result p2

    if-eqz p2, :cond_26

    move p2, v4

    goto :goto_28

    .line 1127
    :cond_26
    monitor-exit v0

    return v4

    .line 1132
    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v5

    .line 1131
    invoke-virtual {p0, v5, p2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v4

    const-string/jumbo v5, "h2w-before-boot-completed"

    .line 1134
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1135
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mSystemReady:Z

    if-nez p1, :cond_40

    const/4 p1, 0x4

    if-eq v1, p1, :cond_44

    :cond_40
    const/16 p1, 0x8

    if-ne v1, p1, :cond_61

    .line 1137
    :cond_44
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    const-string/jumbo v2, "h2w"

    invoke-direct {p1, v1, v3, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    goto :goto_61

    .line 1141
    :cond_57
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    .line 1145
    :cond_61
    :goto_61
    monitor-exit v0

    return v4

    :catchall_63
    move-exception p0

    .line 1146
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final setWiredDeviceConnectionStateBeforeBoot()V
    .registers 7

    .line 2274
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->getWiredDeviceIdFromSysFile()I

    move-result v0

    const-string v1, "AS.AudioDeviceInventory"

    const-string/jumbo v2, "h2w-before-boot-completed"

    const-string v3, ""

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1d

    const/4 v5, 0x2

    if-eq v0, v5, :cond_12

    goto :goto_26

    .line 2284
    :cond_12
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/16 v5, 0x8

    invoke-direct {v0, v5, v3, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    goto :goto_26

    .line 2278
    :cond_1d
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v3, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)I

    :goto_26
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5

    .line 1052
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 1053
    :try_start_3
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 1054
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1055
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception p0

    .line 1056
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .registers 2

    .line 805
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .registers 2

    .line 770
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateAudioRoutes(II)V
    .registers 7

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2e

    if-eq p1, v0, :cond_2c

    const/16 v3, 0x400

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x1000

    if-eq p1, v3, :cond_2a

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_27

    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_2c

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_27

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_2f

    const v1, 0x40001

    if-eq p1, v1, :cond_2f

    move v0, v2

    goto :goto_2f

    :cond_27
    const/16 v0, 0x10

    goto :goto_2f

    :cond_2a
    move v0, v1

    goto :goto_2f

    :cond_2c
    const/4 v0, 0x2

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x1

    .line 1763
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p1

    if-nez v0, :cond_36

    .line 1765
    :try_start_34
    monitor-exit p1

    return-void

    .line 1767
    :cond_36
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v1, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eqz p2, :cond_3f

    or-int p2, v3, v0

    goto :goto_41

    :cond_3f
    not-int p2, v0

    and-int/2addr p2, v3

    :goto_41
    if-eq p2, v3, :cond_4a

    .line 1774
    iput p2, v1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 1775
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1777
    :cond_4a
    monitor-exit p1

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final updateBtVolumeMonitor()V
    .registers 5

    .line 2442
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    .line 2443
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudio()Landroid/bluetooth/BluetoothLeAudio;

    move-result-object v1

    .line 2446
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 2448
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_30

    .line 2450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2451
    invoke-static {v2}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 2452
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1e

    :cond_30
    if-eqz v1, :cond_5c

    .line 2457
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 2459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2460
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->isBleHeadsetConnected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2461
    invoke-static {v1}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Landroid/bluetooth/BluetoothDevice;)V

    .line 2462
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_40

    .line 2467
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_66

    const/4 p0, 0x0

    .line 2468
    invoke-static {p0}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Z)V

    :cond_66
    return-void
.end method

.method public updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1934
    invoke-static {p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1935
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v1, p2, p4, p3, p5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_11

    .line 1938
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 1940
    :cond_11
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    return-void
.end method

.method public updateDexState()V
    .registers 1

    .line 2297
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateDexState()V

    return-void
.end method

.method public final updateMediaRoutes(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCurAudioRoutes"
        }
    .end annotation

    .line 2361
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    const-string v0, "BT"

    goto :goto_b

    :cond_9
    const-string v0, "OTHERS"

    :goto_b
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mForcePath:Ljava/lang/String;

    .line 2362
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    return-void
.end method
