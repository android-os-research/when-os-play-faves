.class public Lcom/android/server/audio/SpatializerHelper;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/SpatializerHelper$SADeviceState;,
        Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;,
        Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;,
        Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final DEBUG_MORE:Z = false

.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final DEFAULT_FORMAT:Landroid/media/AudioFormat;

.field public static final METRICS_DEVICE_PREFIX:Ljava/lang/String; = "audio.spatializer.device."

.field public static final ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

.field public static final SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

.field public static final STATE_DISABLED_AVAILABLE:I = 0x6

.field public static final STATE_DISABLED_UNAVAILABLE:I = 0x3

.field public static final STATE_ENABLED_AVAILABLE:I = 0x5

.field public static final STATE_ENABLED_UNAVAILABLE:I = 0x4

.field public static final STATE_NOT_SUPPORTED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AS.SpatializerHelper"

.field public static final WIRELESS_TYPES:[I


# instance fields
.field public final mASA:Lcom/android/server/audio/AudioSystemAdapter;

.field public mActualHeadTrackingMode:I

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public mBinauralSupported:Z

.field public mCapableSpatLevel:I

.field public mDesiredHeadTrackingMode:I

.field public mDesiredHeadTrackingModeWhenEnabled:I

.field public mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

.field public mFeatureEnabled:Z

.field public mGlobalHeadTrackerAvailable:Z

.field public final mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerHeadToSoundStagePoseCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mHeadTrackerAvailable:Z

.field public final mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerHeadTrackerAvailableCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerHeadTrackingModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mIsHeadTrackingSupported:Z

.field public final mOutputCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerOutputCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mSACapableDeviceTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSADevices:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/SpatializerHelper$SADeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public mSecHeadTrackerAvailable:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSpat:Landroid/media/ISpatializer;

.field public mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

.field public mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

.field public mSpatLevel:I

.field public mSpatOutput:I

.field public mState:I

.field public final mStateCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ISpatializerCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSupportedHeadTrackingModes:[I

.field public mTransauralSupported:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpatOutput(Lcom/android/server/audio/SpatializerHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpatLevel(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSpatOutput(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchActualHeadTrackingMode(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchActualHeadTrackingMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOutputUpdate(Lcom/android/server/audio/SpatializerHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchOutputUpdate(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchPoseUpdate(Lcom/android/server/audio/SpatializerHelper;[F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchPoseUpdate([F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smheadTrackingModeTypeToSpatializerInt(B)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisWireless(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smloglogi(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smspatializationLevelToSpatializerInt(B)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->spatializationLevelToSpatializerInt(B)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->WIRELESS_TYPES:[I

    .line 148
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 151
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    .line 152
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const v2, 0xbb80

    .line 153
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v2, 0xfc

    .line 154
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    new-array v0, v1, [Landroid/media/AudioDeviceAttributes;

    .line 158
    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    return-void

    nop

    :array_44
    .array-data 4
        0x7
        0x8
        0x1a
        0x1b
        0x1e
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;)V
    .registers 6

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 119
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    .line 121
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    .line 122
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 123
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    new-array v1, v0, [I

    .line 126
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    const/4 v1, -0x2

    .line 127
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    const/4 v1, 0x1

    .line 128
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 129
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 139
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 140
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    .line 143
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback-IA;)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    .line 806
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1020
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 1033
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    .line 1245
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 1350
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    .line 179
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 180
    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method

.method public static getCanonicalDeviceType(I)I
    .registers 3

    .line 611
    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    .line 613
    :cond_7
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    if-nez p0, :cond_18

    const/4 p0, 0x4

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static headTrackingModeTypeToSpatializerInt(B)I
    .registers 4

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v1, 0x2

    if-eq p0, v1, :cond_23

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    return v1

    .line 1467
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected head tracking mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return v0

    :cond_24
    const/4 p0, -0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public static isWireless(I)Z
    .registers 6

    .line 1666
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->WIRELESS_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    if-ne v4, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method

.method public static logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AS.SpatializerHelper"

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logloge(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1719
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/audio/AudioEventLogger;

    const/4 v1, 0x1

    const-string v2, "AS.SpatializerHelper"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;->loglog(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public static loglogi(Ljava/lang/String;)V
    .registers 3

    .line 1715
    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/audio/AudioEventLogger;

    const-string v1, "AS.SpatializerHelper"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/audio/AudioEventLogger;->loglogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static spatStateString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_18

    const/4 v0, 0x6

    if-eq p0, v0, :cond_15

    const-string/jumbo p0, "invalid state"

    return-object p0

    :cond_15
    const-string p0, "STATE_DISABLED_AVAILABLE"

    return-object p0

    :cond_18
    const-string p0, "STATE_ENABLED_AVAILABLE"

    return-object p0

    :cond_1b
    const-string p0, "STATE_ENABLED_UNAVAILABLE"

    return-object p0

    :cond_1e
    const-string p0, "STATE_DISABLED_UNAVAILABLE"

    return-object p0

    :cond_21
    const-string p0, "STATE_NOT_SUPPORTED"

    return-object p0

    :cond_24
    const-string p0, "STATE_UNINITIALIZED"

    return-object p0
.end method

.method public static spatializationLevelToSpatializerInt(B)I
    .registers 4

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    return v0

    .line 1495
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected spatializer level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return v0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static spatializerIntToHeadTrackingModeType(I)B
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_27

    if-eqz p0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v1, :cond_24

    if-ne p0, v0, :cond_d

    const/4 p0, 0x3

    return p0

    .line 1482
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected head tracking mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return v0

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    return v1
.end method


# virtual methods
.method public declared-synchronized addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 528
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 529
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 546
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCompatibleAudioDevice: dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2c

    .line 550
    iget-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    goto :goto_5d

    :cond_2c
    move-object v0, v1

    goto :goto_5d

    .line 556
    :cond_2e
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result p2

    if-nez p2, :cond_4f

    .line 558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addCompatibleAudioDevice with incompatible AudioDeviceAttributes "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.SpatializerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 562
    :cond_4f
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5d
    if-eqz v0, :cond_6c

    .line 566
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 567
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    const-string p1, "addCompatibleAudioDevice"

    .line 568
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V

    :cond_6c
    return-void
.end method

.method public final declared-synchronized addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V
    .registers 5

    monitor-enter p0

    .line 672
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4b

    if-nez v0, :cond_9

    .line 673
    monitor-exit p0

    return-void

    .line 675
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    if-nez v0, :cond_49

    .line 677
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "AS.SpatializerHelper"

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWirelessDeviceIfNew with incompatible AudioDeviceAttributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_4b

    .line 681
    monitor-exit p0

    return-void

    .line 683
    :cond_31
    :try_start_31
    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 684
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    const-string p1, "addWirelessDeviceIfNew"

    .line 687
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_4b

    .line 689
    :cond_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .registers 7

    monitor-enter p0

    .line 987
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    const/4 v2, 0x1

    if-eq v0, v2, :cond_70

    const/4 v3, 0x3

    if-eq v0, v3, :cond_70

    const/4 v3, 0x4

    if-eq v0, v3, :cond_70

    .line 1000
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v2, :cond_33

    const/16 v3, 0xe

    if-eq v0, v3, :cond_33

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canBeSpatialized false due to usage:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_88

    .line 1006
    monitor-exit p0

    return v1

    :cond_33
    :try_start_33
    new-array v0, v2, [Landroid/media/AudioDeviceAttributes;

    .line 1010
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1011
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1012
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canBeSpatialized usage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " format:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {p2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returning "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1013
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_33 .. :try_end_6e} :catchall_88

    .line 1015
    monitor-exit p0

    return v0

    .line 992
    :cond_70
    :try_start_70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "canBeSpatialized false due to state:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logd(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_88

    .line 993
    monitor-exit p0

    return v1

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 731
    :try_start_2
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 732
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_12

    monitor-exit p0

    return p1

    .line 734
    :cond_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final checkSpatForHeadTracking(Ljava/lang/String;)Z
    .registers 4

    .line 1181
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    const/4 v1, 0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x3

    if-eq p1, v1, :cond_15

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    const/4 v1, 0x5

    if-eq p1, v1, :cond_15

    const/4 v1, 0x6

    if-eq p1, v1, :cond_15

    goto :goto_35

    .line 1189
    :cond_15
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez p1, :cond_35

    .line 1191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSpatForHeadTracking(): native spatializer should not be null in state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS.SpatializerHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V

    return v0

    .line 1198
    :cond_35
    :goto_35
    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    return p0

    :cond_38
    return v0
.end method

.method public clearSADevices()V
    .registers 1

    .line 1727
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createSpat()V
    .registers 4

    .line 945
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_39

    .line 946
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 947
    invoke-static {v0}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 950
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v1, :cond_39

    .line 952
    invoke-interface {v0}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 953
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_27} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_39

    :catch_28
    move-exception v0

    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Can\'t configure head tracking"

    .line 956
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 957
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v0, 0x0

    .line 958
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    const/4 v0, -0x2

    .line 959
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    :cond_39
    :goto_39
    return-void
.end method

.method public final dispatchActualHeadTrackingMode(I)V
    .registers 7

    .line 1202
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 1205
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 1206
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerActualHeadTrackingModeChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_31

    :catch_15
    move-exception v2

    .line 1208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerActualHeadTrackingModeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1212
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchDesiredHeadTrackingMode(I)V
    .registers 7

    .line 1216
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 1219
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 1220
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_31

    :catch_15
    move-exception v2

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerDesiredHeadTrackingModeChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1226
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchHeadTrackerAvailable(Z)V
    .registers 7

    .line 1230
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    .line 1233
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    .line 1234
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback;->dispatchSpatializerHeadTrackerAvailable(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_31

    :catch_15
    move-exception v2

    .line 1236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in dispatchSpatializerHeadTrackerAvailable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1240
    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchOutputUpdate(I)V
    .registers 7

    .line 1364
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 1367
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerOutputCallback;

    invoke-interface {v2, p1}, Landroid/media/ISpatializerOutputCallback;->dispatchSpatializerOutputChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v2

    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchOutputUpdate"

    .line 1369
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1372
    :cond_20
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchPoseUpdate([F)V
    .registers 7

    .line 1259
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 1262
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    .line 1263
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;->dispatchPoseChanged([F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v2

    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchPoseChanged"

    .line 1265
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1268
    :cond_20
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "SpatializerHelper:"

    .line 1500
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmSpatLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCapableSpatLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmIsHeadTrackingSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1506
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_66
    if-ge v3, v2, :cond_79

    aget v4, v1, v3

    .line 1507
    invoke-static {v4}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 1509
    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tsupported head tracking modes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmDesiredHeadTrackingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 1511
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmActualHeadTrackingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 1513
    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1512
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\theadtracker available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tsec headtracker available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tglobal headtracker available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tsupports binaural:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / transaural:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmSpatOutput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "\tdevices:"

    .line 1522
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_144
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_144

    :cond_165
    return-void
.end method

.method public final declared-synchronized evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 648
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 650
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v0, "AS.SpatializerHelper"

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device incompatible with Spatial Audio dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_8f

    monitor-exit p0

    return-object p1

    .line 655
    :cond_30
    :try_start_30
    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_5a

    const-string p1, "AS.SpatializerHelper"

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no spatialization mode found for device type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_8f

    monitor-exit p0

    return-object p1

    .line 661
    :cond_5a
    :try_start_5a
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    if-nez v0, :cond_80

    const-string v0, "AS.SpatializerHelper"

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no spatialization device state found for Spatial Audio device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_5a .. :try_end_7e} :catchall_8f

    monitor-exit p0

    return-object p1

    .line 668
    :cond_80
    :try_start_80
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_8f

    monitor-exit p0

    return-object p1

    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 629
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    .line 630
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result v1

    .line 631
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v0

    .line 633
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 634
    iget v3, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    if-ne v3, v0, :cond_12

    if-eqz v1, :cond_30

    .line 635
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_30
    return-object v2

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getActualHeadTrackingMode()I
    .registers 2

    monitor-enter p0

    .line 1050
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCapableImmersiveAudioLevel()I
    .registers 2

    monitor-enter p0

    .line 803
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCompatibleAudioDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 520
    iget-boolean v3, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-eqz v3, :cond_c

    .line 521
    invoke-virtual {v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_26

    goto :goto_c

    .line 524
    :cond_24
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDesiredHeadTrackingMode()I
    .registers 2

    monitor-enter p0

    .line 1054
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEffectParameter(I[B)V
    .registers 6

    monitor-enter p0

    .line 1298
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_5a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_3b

    .line 1307
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_3b

    const-string p2, "AS.SpatializerHelper"

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): null spatializer in state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_76

    .line 1309
    monitor-exit p0

    return-void

    .line 1315
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1, p2}, Landroid/media/ISpatializer;->getParameter(I[B)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41
    .catchall {:try_start_3b .. :try_end_40} :catchall_76

    goto :goto_58

    :catch_41
    move-exception p2

    :try_start_42
    const-string v0, "AS.SpatializerHelper"

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getParameter for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_76

    .line 1319
    :goto_58
    monitor-exit p0

    return-void

    .line 1301
    :cond_5a
    :try_start_5a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get parameter key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without a spatializer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getHeadSensorHandleUpdateTracker()I
    .registers 9

    .line 1676
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 1680
    :cond_9
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService;->getDeviceSensorUuid(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;

    move-result-object v2

    .line 1686
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 1687
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 1688
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 1689
    invoke-virtual {v6, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1690
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    .line 1691
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setHasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_4d

    :cond_3d
    move v1, v2

    goto :goto_4d

    .line 1696
    :cond_3f
    sget-object v7, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1697
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    goto :goto_1c

    :cond_4c
    move v1, v4

    :goto_4d
    return v1
.end method

.method public declared-synchronized getOutput()I
    .registers 4

    monitor-enter p0

    .line 1326
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_19

    .line 1335
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3d

    if-eqz v0, :cond_2c

    .line 1343
    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->getOutput()I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_21
    .catchall {:try_start_19 .. :try_end_1f} :catchall_3d

    monitor-exit p0

    return v0

    :catch_21
    move-exception v0

    :try_start_22
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error in getOutput"

    .line 1345
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_3d

    const/4 v0, 0x0

    .line 1346
    monitor-exit p0

    return v0

    .line 1336
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null Spatializer for getOutput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get output without a spatializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSADeviceSettings()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1618
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1619
    :goto_f
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1620
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    invoke-virtual {v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_36

    const-string/jumbo v2, "|"

    .line 1622
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1625
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v0

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScreenSensorHandle()I
    .registers 2

    .line 1706
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1708
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getHandle()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, -0x1

    :goto_10
    return p0
.end method

.method public declared-synchronized getSupportedHeadTrackingModes()[I
    .registers 2

    monitor-enter p0

    .line 1046
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    .line 1131
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    const-string v0, "AS.SpatializerHelper"

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, hasHeadTracker always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2c

    .line 1133
    monitor-exit p0

    return v1

    .line 1135
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 1136
    iget-boolean p1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2c

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    monitor-exit p0

    return v1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(ZLjava/lang/String;)V
    .registers 15

    monitor-enter p0

    .line 184
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init effectExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_23

    const-string/jumbo p1, "init(): setting state to STATE_NOT_SUPPORTED due to effect not expected"

    .line 186
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 187
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1cd

    .line 188
    monitor-exit p0

    return-void

    .line 190
    :cond_23
    :try_start_23
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-nez p1, :cond_1af

    .line 194
    new-instance p1, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerCallback-IA;)V

    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 195
    invoke-static {p1}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object p1

    if-nez p1, :cond_3f

    const-string/jumbo p1, "init(): No Spatializer found"

    .line 197
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 198
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_1cd

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->resetCapabilities()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_1cd

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 205
    :try_start_44
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedLevels()[B

    move-result-object v3

    if-eqz v3, :cond_17f

    .line 206
    array-length v4, v3

    if-eqz v4, :cond_17f

    array-length v4, v3

    if-ne v4, v0, :cond_56

    aget-byte v4, v3, v2

    if-nez v4, :cond_56

    goto/16 :goto_17f

    .line 214
    :cond_56
    array-length v4, v3

    move v5, v2

    :goto_58
    if-ge v5, v4, :cond_7f

    aget-byte v6, v3, v5

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init(): found support for level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    if-ne v6, v0, :cond_7c

    const-string/jumbo v3, "init(): setting capable level to LEVEL_MULTICHANNEL"

    .line 217
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 218
    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    goto :goto_7f

    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 226
    :cond_7f
    :goto_7f
    invoke-interface {p1}, Landroid/media/ISpatializer;->isHeadTrackingSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_f7

    .line 228
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedHeadTrackingModes()[B

    move-result-object v3

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    array-length v6, v3

    move v7, v2

    :goto_93
    if-ge v7, v6, :cond_cc

    aget-byte v8, v3, v7

    if-eqz v8, :cond_c9

    if-eq v8, v0, :cond_c9

    if-eq v8, v4, :cond_be

    if-eq v8, v1, :cond_be

    const-string v9, "AS.SpatializerHelper"

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected head tracking mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "invalid mode"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 238
    :cond_be
    invoke-static {v8}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    :goto_c9
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    .line 246
    :cond_cc
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    move v3, v2

    .line 247
    :goto_d5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_ec

    .line 248
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 251
    :cond_ec
    invoke-interface {p1}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    goto :goto_fc

    :cond_f7
    const/4 v3, -0x2

    .line 253
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    .line 254
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 257
    :goto_fc
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedModes()[B

    move-result-object v3

    .line 258
    array-length v5, v3

    move v6, v2

    :goto_102
    if-ge v6, v5, :cond_128

    aget-byte v7, v3, v6

    if-eqz v7, :cond_123

    if-eq v7, v0, :cond_120

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init(): Spatializer reports unknown supported mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_125

    .line 264
    :cond_120
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    goto :goto_125

    .line 261
    :cond_123
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    :goto_125
    add-int/lit8 v6, v6, 0x1

    goto :goto_102

    .line 272
    :cond_128
    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v3, :cond_137

    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-nez v3, :cond_137

    .line 273
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_132} :catch_18e
    .catchall {:try_start_44 .. :try_end_132} :catchall_18c

    .line 307
    :try_start_132
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_135} :catch_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_1cd

    .line 274
    :catch_135
    monitor-exit p0

    return-void

    :cond_137
    move v3, v2

    .line 278
    :goto_138
    :try_start_138
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_160

    .line 279
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-nez v6, :cond_14a

    .line 280
    iget-boolean v7, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v7, :cond_150

    :cond_14a
    if-ne v6, v0, :cond_15d

    iget-boolean v6, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz v6, :cond_15d

    .line 283
    :cond_150
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15d
    add-int/lit8 v3, v3, 0x1

    goto :goto_138

    :cond_160
    if-eqz p2, :cond_165

    .line 290
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->setSADeviceSettings(Ljava/lang/String;)V

    .line 295
    :cond_165
    new-instance p2, Landroid/media/AudioDeviceAttributes;

    const-string v3, ""

    invoke-direct {p2, v4, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V

    .line 299
    new-instance p2, Landroid/media/AudioDeviceAttributes;

    const/16 v3, 0x8

    const-string v4, ""

    invoke-direct {p2, v3, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;Z)V
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_17b} :catch_18e
    .catchall {:try_start_138 .. :try_end_17b} :catchall_18c

    .line 307
    :goto_17b
    :try_start_17b
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_17e
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_17e} :catch_192
    .catchall {:try_start_17b .. :try_end_17e} :catchall_1cd

    goto :goto_192

    :cond_17f
    :goto_17f
    :try_start_17f
    const-string/jumbo p2, "init(): found Spatializer is useless"

    .line 210
    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_187} :catch_18e
    .catchall {:try_start_17f .. :try_end_187} :catchall_18c

    .line 307
    :try_start_187
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_18a
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_18a} :catch_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_1cd

    .line 212
    :catch_18a
    monitor-exit p0

    return-void

    :catchall_18c
    move-exception p2

    goto :goto_1ab

    .line 303
    :catch_18e
    :try_start_18e
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->resetCapabilities()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_18c

    goto :goto_17b

    .line 311
    :catch_192
    :goto_192
    :try_start_192
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    if-nez p1, :cond_19a

    .line 312
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_1cd

    .line 313
    monitor-exit p0

    return-void

    .line 315
    :cond_19a
    :try_start_19a
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 316
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    sget-object p2, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p2, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    .line 317
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1a9
    .catchall {:try_start_19a .. :try_end_1a9} :catchall_1cd

    .line 319
    monitor-exit p0

    return-void

    .line 307
    :goto_1ab
    :try_start_1ab
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_1ae
    .catch Landroid/os/RemoteException; {:try_start_1ab .. :try_end_1ae} :catch_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1cd

    .line 310
    :catch_1ae
    :try_start_1ae
    throw p2

    .line 191
    :cond_1af
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "init() called in state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1cd
    .catchall {:try_start_1ae .. :try_end_1cd} :catchall_1cd

    :catchall_1cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAvailable()Z
    .registers 4

    monitor-enter p0

    .line 709
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10

    .line 718
    monitor-exit p0

    return v1

    :cond_10
    const/4 v0, 0x0

    .line 714
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .registers 5

    monitor-enter p0

    .line 723
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    .line 724
    monitor-exit p0

    return v2

    .line 726
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    if-eqz p1, :cond_12

    const/4 v2, 0x1

    :cond_12
    monitor-exit p0

    return v2

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z
    .registers 4

    .line 741
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    int-to-byte p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 743
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v1, :cond_19

    :cond_13
    if-ne p1, v0, :cond_1a

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz p0, :cond_1a

    :cond_19
    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isEnabled()Z
    .registers 4

    monitor-enter p0

    .line 695
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10

    .line 704
    monitor-exit p0

    return v1

    :cond_10
    const/4 v0, 0x0

    .line 700
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeadTrackerAvailable()Z
    .registers 2

    monitor-enter p0

    .line 1174
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    .line 1163
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    const-string v0, "AS.SpatializerHelper"

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, isHeadTrackerEnabled always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_30

    .line 1165
    monitor-exit p0

    return v1

    .line 1167
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1168
    iget-boolean v0, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v0, :cond_2e

    iget-boolean p1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_30

    if-eqz p1, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    monitor-exit p0

    return v1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    .registers 7

    .line 580
    iget p0, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result p0

    .line 582
    invoke-static {p0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p0

    .line 583
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.spatializer.device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p0, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 584
    invoke-virtual {v0, p0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object v0, Landroid/media/MediaMetrics$Property;->ENABLED:Landroid/media/MediaMetrics$Key;

    .line 585
    iget-boolean v1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const-string/jumbo v2, "true"

    const-string v3, "false"

    if-eqz v1, :cond_35

    move-object v1, v2

    goto :goto_36

    :cond_35
    move-object v1, v3

    :goto_36
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 586
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p2, Landroid/media/MediaMetrics$Property;->HAS_HEAD_TRACKER:Landroid/media/MediaMetrics$Key;

    .line 588
    iget-boolean v0, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v0, :cond_4c

    move-object v0, v2

    goto :goto_4d

    :cond_4c
    move-object v0, v3

    .line 587
    :goto_4d
    invoke-virtual {p0, p2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p2, Landroid/media/MediaMetrics$Property;->HEAD_TRACKER_ENABLED:Landroid/media/MediaMetrics$Key;

    .line 590
    iget-boolean p1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    move-object v2, v3

    .line 589
    :goto_59
    invoke-virtual {p0, p2, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 591
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public declared-synchronized onInitSensors()V
    .registers 10

    monitor-enter p0

    .line 1382
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-eqz v0, :cond_14

    const-string/jumbo v3, "initializing"

    goto :goto_17

    :cond_14
    const-string/jumbo v3, "releasing"

    .line 1384
    :goto_17
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v4, :cond_37

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensors, null spatializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_15e

    .line 1386
    monitor-exit p0

    return-void

    .line 1388
    :cond_37
    :try_start_37
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v4, :cond_57

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensors, spatializer doesn\'t support headtracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_15e

    .line 1390
    monitor-exit p0

    return-void

    :cond_57
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_bd

    .line 1395
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_15e

    if-nez v0, :cond_89

    .line 1397
    :try_start_5f
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    .line 1398
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1399
    new-instance v0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    .line 1400
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7a} :catch_7b
    .catchall {:try_start_5f .. :try_end_7a} :catchall_15e

    goto :goto_89

    :catch_7b
    move-exception v0

    :try_start_7c
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error with SensorManager, can\'t initialize sensors"

    .line 1402
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1404
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_15e

    .line 1405
    monitor-exit p0

    return-void

    .line 1413
    :cond_89
    :goto_89
    :try_start_89
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getHeadSensorHandleUpdateTracker()I

    move-result v0

    .line 1414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "head tracker sensor handle initialized to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getScreenSensorHandle()I

    move-result v4

    const-string v5, "AS.SpatializerHelper"

    .line 1416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found screen sensor handle initialized to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 1418
    :cond_bd
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_cc

    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    if-eqz v5, :cond_cc

    .line 1419
    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 1420
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1421
    iput-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_cc
    .catchall {:try_start_89 .. :try_end_cc} :catchall_15e

    :cond_cc
    move v0, v3

    move v4, v0

    :goto_ce
    :try_start_ce
    const-string v5, "AS.SpatializerHelper"

    .line 1426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenSensor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v5, v4}, Landroid/media/ISpatializer;->setScreenSensor(I)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ea} :catch_eb
    .catchall {:try_start_ce .. :try_end_ea} :catchall_15e

    goto :goto_102

    :catch_eb
    move-exception v5

    :try_start_ec
    const-string v6, "AS.SpatializerHelper"

    .line 1429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error calling setScreenSensor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_102
    .catchall {:try_start_ec .. :try_end_102} :catchall_15e

    :goto_102
    :try_start_102
    const-string v4, "AS.SpatializerHelper"

    .line 1432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHeadSensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v4, v0}, Landroid/media/ISpatializer;->setHeadSensor(I)V

    .line 1434
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-eq v0, v3, :cond_124

    move v5, v1

    goto :goto_125

    :cond_124
    move v5, v2

    :goto_125
    if-eq v4, v5, :cond_157

    if-eq v0, v3, :cond_12b

    move v3, v1

    goto :goto_12c

    :cond_12b
    move v3, v2

    .line 1435
    :goto_12c
    iput-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 1438
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    if-nez v4, :cond_136

    if-eqz v3, :cond_135

    goto :goto_136

    :cond_135
    move v1, v2

    .line 1440
    :cond_136
    :goto_136
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    if-eq v2, v1, :cond_157

    .line 1441
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 1442
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->dispatchHeadTrackerAvailable(Z)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_13f} :catch_140
    .catchall {:try_start_102 .. :try_end_13f} :catchall_15e

    goto :goto_157

    :catch_140
    move-exception v1

    :try_start_141
    const-string v2, "AS.SpatializerHelper"

    .line 1449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setHeadSensor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    :cond_157
    :goto_157
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V
    :try_end_15c
    .catchall {:try_start_141 .. :try_end_15c} :catchall_15e

    .line 1452
    monitor-exit p0

    return-void

    :catchall_15e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRoutingUpdated()V
    .registers 8

    monitor-enter p0

    .line 346
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_116

    if-nez v0, :cond_7

    .line 347
    monitor-exit p0

    return-void

    .line 349
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_114

    const/4 v1, 0x1

    if-eq v0, v1, :cond_114

    .line 359
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v4, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    .line 360
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 363
    aget-object v0, v4, v3

    if-nez v0, :cond_2b

    const-string/jumbo v0, "onRoutingUpdated: device is null, no Spatial Audio"

    .line 364
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_116

    .line 367
    monitor-exit p0

    return-void

    .line 371
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->isWireless(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 372
    aget-object v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V

    .line 376
    :cond_3a
    aget-object v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;

    move-result-object v0

    .line 379
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 381
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRoutingUpdated: can spatialize media 5.1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " on device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    goto :goto_93

    .line 386
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRoutingUpdated: device:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not available for Spatial Audio"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    move v2, v3

    :goto_93
    if-eqz v2, :cond_a1

    .line 391
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a1

    move v0, v1

    goto :goto_a2

    :cond_a1
    move v0, v3

    :goto_a2
    if-eqz v0, :cond_bb

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling Spatial Audio since enabled for media device:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    goto :goto_d1

    .line 396
    :cond_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling Spatial Audio since disabled for media device:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 399
    :goto_d1
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v2, :cond_101

    if-eqz v0, :cond_d8

    goto :goto_d9

    :cond_d8
    move v1, v3

    .line 402
    :goto_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting spatialization level to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_2b .. :try_end_ed} :catchall_116

    .line 404
    :try_start_ed
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v2, v1}, Landroid/media/ISpatializer;->setLevel(B)V
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_f2} :catch_f3
    .catchall {:try_start_ed .. :try_end_f2} :catchall_116

    goto :goto_101

    :catch_f3
    move-exception v0

    :try_start_f4
    const-string v1, "AS.SpatializerHelper"

    const-string/jumbo v2, "onRoutingUpdated() Can\'t set spatializer level"

    .line 406
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postReset()V
    :try_end_ff
    .catchall {:try_start_f4 .. :try_end_ff} :catchall_116

    .line 409
    monitor-exit p0

    return-void

    :cond_101
    :goto_101
    :try_start_101
    const-string/jumbo v1, "onRoutingUpdated"

    .line 413
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(ZLjava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_112

    const/4 v1, -0x1

    if-eq v0, v1, :cond_112

    .line 417
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_112
    .catchall {:try_start_101 .. :try_end_112} :catchall_116

    .line 419
    :cond_112
    monitor-exit p0

    return-void

    .line 352
    :cond_114
    monitor-exit p0

    return-void

    :catchall_116
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final postInitSensors()V
    .registers 1

    .line 1378
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postInitSpatializerHeadTrackingSensors()V

    return-void
.end method

.method public final postReset()V
    .registers 1

    .line 422
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postResetSpatializer()V

    return-void
.end method

.method public declared-synchronized recenterHeadTracker()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "recenterHeadTracker"

    .line 1072
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    if-nez v0, :cond_c

    .line 1073
    monitor-exit p0

    return-void

    .line 1076
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->recenterHeadTracker()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    goto :goto_1a

    :catch_12
    move-exception v0

    :try_start_13
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error calling recenterHeadTracker"

    .line 1078
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 1080
    :goto_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .registers 3

    monitor-enter p0

    .line 1250
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1251
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    .registers 3

    monitor-enter p0

    if-eqz p2, :cond_9

    .line 1039
    :try_start_3
    iget-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_e

    .line 1041
    :cond_9
    iget-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1043
    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerHeadTrackingModeCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .registers 3

    monitor-enter p0

    .line 1025
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1026
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .registers 3

    monitor-enter p0

    .line 1355
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1356
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerStateCallback(Landroid/media/ISpatializerCallback;)V
    .registers 3

    monitor-enter p0

    .line 811
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 812
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final releaseSpat()V
    .registers 5

    .line 968
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v0, :cond_21

    const/4 v1, 0x0

    .line 969
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    .line 971
    :try_start_7
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v2, :cond_e

    .line 972
    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    :cond_e
    const/4 v0, 0x0

    .line 974
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    .line 975
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->release()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Can\'t set release spatializer cleanly"

    .line 977
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    :goto_1f
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    :cond_21
    return-void
.end method

.method public declared-synchronized removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    monitor-enter p0

    .line 595
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCompatibleAudioDevice: dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 598
    iget-boolean v0, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    .line 600
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    .line 601
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    const-string/jumbo v0, "removeCompatibleAudioDevice"

    .line 602
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 604
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset(Z)V
    .registers 4

    monitor-enter p0

    .line 326
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting featureEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 329
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    const/4 v0, -0x2

    .line 330
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->init(ZLjava/lang/String;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 333
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final resetCapabilities()V
    .registers 2

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    .line 337
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    .line 338
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    .line 339
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    new-array v0, v0, [I

    .line 340
    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    return-void
.end method

.method public declared-synchronized setDesiredHeadTrackingMode(I)V
    .registers 5
    .param p1    # I
        .annotation build Landroid/media/Spatializer$HeadTrackingModeSet;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "setDesiredHeadTrackingMode"

    .line 1083
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4e

    if-nez v0, :cond_c

    .line 1084
    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 1087
    :try_start_f
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_4e

    .line 1090
    :cond_11
    :try_start_11
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    if-eq v0, p1, :cond_1a

    .line 1091
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchDesiredHeadTrackingMode(I)V

    :cond_1a
    const-string v0, "AS.SpatializerHelper"

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesiredHeadTrackingMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatializerIntToHeadTrackingModeType(I)B

    move-result p1

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setDesiredHeadTrackingMode(B)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_43} :catch_44
    .catchall {:try_start_11 .. :try_end_43} :catchall_4e

    goto :goto_4c

    :catch_44
    move-exception p1

    :try_start_45
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setDesiredHeadTrackingMode"

    .line 1098
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    .line 1100
    :goto_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setDispatchAvailableState(Z)V
    .registers 7

    monitor-enter p0

    .line 879
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_107

    const/4 v1, 0x1

    if-eq v0, v1, :cond_107

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_94

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_6a

    if-eq v0, v3, :cond_40

    if-eq v0, v1, :cond_16

    goto/16 :goto_98

    :cond_16
    if-eqz p1, :cond_3d

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 908
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 907
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_120

    .line 909
    monitor-exit p0

    return-void

    .line 911
    :cond_3d
    :try_start_3d
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_98

    :cond_40
    if-eqz p1, :cond_67

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 918
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_3d .. :try_end_65} :catchall_120

    .line 919
    monitor-exit p0

    return-void

    .line 921
    :cond_67
    :try_start_67
    iput v4, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_98

    :cond_6a
    if-eqz p1, :cond_6f

    .line 896
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_98

    .line 900
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 901
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 900
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_67 .. :try_end_92} :catchall_120

    .line 902
    monitor-exit p0

    return-void

    :cond_94
    if-eqz p1, :cond_e2

    .line 886
    :try_start_96
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 925
    :goto_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_c1
    .catchall {:try_start_96 .. :try_end_c1} :catchall_120

    const/4 v1, 0x0

    :goto_c2
    if-ge v1, v0, :cond_db

    .line 929
    :try_start_c4
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerCallback;

    .line 930
    invoke-interface {v2, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerAvailableChanged(Z)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_cf} :catch_d0
    .catchall {:try_start_c4 .. :try_end_cf} :catchall_120

    goto :goto_d8

    :catch_d0
    move-exception v2

    :try_start_d1
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchSpatializerEnabledChanged"

    .line 932
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 935
    :cond_db
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_e0
    .catchall {:try_start_d1 .. :try_end_e0} :catchall_120

    .line 936
    monitor-exit p0

    return-void

    .line 890
    :cond_e2
    :try_start_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchAvailableState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 891
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 890
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_e2 .. :try_end_105} :catchall_120

    .line 892
    monitor-exit p0

    return-void

    .line 882
    :cond_107
    :try_start_107
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should not update available state in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_120
    .catchall {:try_start_107 .. :try_end_120} :catchall_120

    :catchall_120
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setDispatchFeatureEnabledState(ZLjava/lang/String;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz p1, :cond_63

    .line 826
    :try_start_7
    iget v4, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eq v4, v3, :cond_60

    if-eq v4, v2, :cond_33

    if-eq v4, v1, :cond_33

    if-ne v4, v0, :cond_15

    .line 831
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto/16 :goto_91

    .line 841
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for enabled true"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 838
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " src:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_108

    .line 839
    monitor-exit p0

    return-void

    .line 828
    :cond_60
    :try_start_60
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_91

    .line 845
    :cond_63
    iget v4, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eq v4, v3, :cond_db

    if-eq v4, v2, :cond_8f

    if-eq v4, v1, :cond_8c

    if-ne v4, v0, :cond_6e

    goto :goto_db

    .line 860
    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for enabled false"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 850
    :cond_8c
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_91

    .line 847
    :cond_8f
    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 864
    :goto_91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDispatchFeatureEnabledState("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") mState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 865
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 864
    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 866
    iget-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2
    :try_end_ba
    .catchall {:try_start_60 .. :try_end_ba} :catchall_108

    const/4 v0, 0x0

    :goto_bb
    if-ge v0, p2, :cond_d4

    .line 869
    :try_start_bd
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/ISpatializerCallback;

    .line 870
    invoke-interface {v1, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerEnabledChanged(Z)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c8} :catch_c9
    .catchall {:try_start_bd .. :try_end_c8} :catchall_108

    goto :goto_d1

    :catch_c9
    move-exception v1

    :try_start_ca
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Error in dispatchSpatializerEnabledChanged"

    .line 872
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 875
    :cond_d4
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_d9
    .catchall {:try_start_ca .. :try_end_d9} :catchall_108

    .line 876
    monitor-exit p0

    return-void

    .line 855
    :cond_db
    :goto_db
    :try_start_db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    .line 856
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " src:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_db .. :try_end_106} :catchall_108

    .line 858
    monitor-exit p0

    return-void

    :catchall_108
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEffectParameter(I[B)V
    .registers 6

    monitor-enter p0

    .line 1274
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_5b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    goto :goto_3c

    .line 1283
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_3c

    const-string p2, "AS.SpatializerHelper"

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setParameter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): null spatializer in state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_77

    .line 1285
    monitor-exit p0

    return-void

    .line 1291
    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1, p2}, Landroid/media/ISpatializer;->setParameter(I[B)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42
    .catchall {:try_start_3c .. :try_end_41} :catchall_77

    goto :goto_59

    :catch_42
    move-exception p2

    :try_start_43
    const-string v0, "AS.SpatializerHelper"

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setParameter for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_77

    .line 1295
    :goto_59
    monitor-exit p0

    return-void

    .line 1277
    :cond_5b
    :try_start_5b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set parameter key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without a spatializer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_77
    .catchall {:try_start_5b .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFeatureEnabled(Z)V
    .registers 4

    monitor-enter p0

    .line 752
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeatureEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") was featureEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 753
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_48

    if-ne v0, p1, :cond_26

    .line 754
    monitor-exit p0

    return-void

    .line 756
    :cond_26
    :try_start_26
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    if-eqz p1, :cond_42

    .line 758
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    const-string p1, "AS.SpatializerHelper"

    const-string v0, "Can\'t enabled Spatial Audio, unsupported"

    .line 759
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_48

    .line 760
    monitor-exit p0

    return-void

    :cond_38
    if-nez p1, :cond_3e

    const/4 p1, 0x0

    .line 763
    :try_start_3b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SpatializerHelper;->init(ZLjava/lang/String;)V

    .line 765
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V

    goto :goto_46

    :cond_42
    const/4 p1, 0x0

    .line 767
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_48

    .line 769
    :goto_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGlobalTransform([F)V
    .registers 5

    monitor-enter p0

    .line 1058
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    const-string/jumbo v0, "setGlobalTransform"

    .line 1061
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->checkSpatForHeadTracking(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_39

    if-nez v0, :cond_10

    .line 1062
    monitor-exit p0

    return-void

    .line 1065
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, p1}, Landroid/media/ISpatializer;->setGlobalTransform([F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_39

    goto :goto_1e

    :catch_16
    move-exception p1

    :try_start_17
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setGlobalTransform"

    .line 1067
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_39

    .line 1069
    :goto_1e
    monitor-exit p0

    return-void

    .line 1059
    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid array size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 6

    monitor-enter p0

    .line 1145
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    const-string v0, "AS.SpatializerHelper"

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no headtracking support, setHasHeadTracker always false for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_54

    .line 1147
    monitor-exit p0

    return v1

    .line 1149
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1151
    iget-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-nez p1, :cond_37

    const/4 p1, 0x1

    .line 1152
    iput-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    .line 1153
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    const-string/jumbo p1, "setHasHeadTracker"

    .line 1154
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V

    .line 1156
    :cond_37
    iget-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_54

    monitor-exit p0

    return p1

    :cond_3b
    :try_start_3b
    const-string v0, "AS.SpatializerHelper"

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHasHeadTracker: device not found for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_54

    .line 1159
    monitor-exit p0

    return v1

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .registers 7

    monitor-enter p0

    .line 1103
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v0, :cond_24

    const-string v0, "AS.SpatializerHelper"

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no headtracking support, ignoring setHeadTrackerEnabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_24
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_b6

    if-nez v0, :cond_2c

    .line 1108
    monitor-exit p0

    return-void

    .line 1109
    :cond_2c
    :try_start_2c
    iget-boolean v1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-nez v1, :cond_55

    const-string v0, "AS.SpatializerHelper"

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called setHeadTrackerEnabled enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on a device without headtracker"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_b6

    .line 1112
    monitor-exit p0

    return-void

    :cond_55
    :try_start_55
    const-string v1, "AS.SpatializerHelper"

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHeadTrackerEnabled enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iput-boolean p1, v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1116
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->persistSpatialAudioDeviceSettings()V

    const-string/jumbo v1, "setHeadTrackerEnabled"

    .line 1117
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V

    .line 1120
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->ROUTING_DEVICES:[Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_b4

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    if-ne v2, v3, :cond_b4

    aget-object v0, v0, v1

    .line 1121
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b4

    if-eqz p1, :cond_a7

    .line 1122
    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    goto :goto_a8

    :cond_a7
    const/4 p2, -0x1

    :goto_a8
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V

    if-eqz p1, :cond_b4

    .line 1124
    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-nez p1, :cond_b4

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_b4
    .catchall {:try_start_55 .. :try_end_b4} :catchall_b6

    .line 1128
    :cond_b4
    monitor-exit p0

    return-void

    :catchall_b6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSADeviceSettings(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1629
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\\|"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1632
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_36

    aget-object v2, p1, v1

    .line 1633
    invoke-static {v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1636
    iget v3, v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1637
    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(I)I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 1639
    invoke-virtual {v2}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    .line 1638
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1640
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSADevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "setSADeviceSettings"

    .line 1641
    invoke-virtual {p0, v2, v3}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/SpatializerHelper$SADeviceState;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_38

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1644
    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecHeadTrackerAvailable(Z)V
    .registers 5

    monitor-enter p0

    .line 1732
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    if-nez p1, :cond_c

    .line 1733
    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-eqz p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    :goto_d
    const-string v0, "AS.SpatializerHelper"

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecHeadTrackerAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHeadTrackerAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    if-eq v0, p1, :cond_39

    .line 1737
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchHeadTrackerAvailable(Z)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 1740
    :cond_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSpatializerEnabledInt(Z)V
    .registers 4

    monitor-enter p0

    .line 772
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_22

    goto :goto_37

    :cond_15
    if-nez p1, :cond_37

    .line 795
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    const/4 p1, 0x0

    const-string/jumbo v0, "setSpatializerEnabledInt"

    .line 796
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(ZLjava/lang/String;)V

    goto :goto_37

    :cond_22
    if-eqz p1, :cond_37

    .line 786
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->createSpat()V

    .line 787
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    goto :goto_37

    :cond_2b
    if-eqz p1, :cond_37

    const-string p1, "AS.SpatializerHelper"

    const-string v0, "Can\'t enable when unsupported"

    .line 780
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_41

    goto :goto_37

    :cond_35
    if-nez p1, :cond_39

    .line 800
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    .line 775
    :cond_39
    :try_start_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t enable when uninitialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .registers 3

    monitor-enter p0

    .line 1255
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1256
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterHeadTrackingModeCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .registers 3

    monitor-enter p0

    .line 1030
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1031
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .registers 3

    monitor-enter p0

    .line 1360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1361
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterStateCallback(Landroid/media/ISpatializerCallback;)V
    .registers 3

    monitor-enter p0

    .line 816
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 817
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
