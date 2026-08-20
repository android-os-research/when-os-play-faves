.class public Lcom/samsung/android/server/audio/SensorHandleThread;
.super Ljava/lang/Thread;
.source "SensorHandleThread.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.SensorHandleThread"

.field public static final sBluetoothCommunicationDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isMotionRegistered:Z

.field public isProximateRegistered:Z

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public mDevicePositionChangedDuringRingtone:Z

.field public mDevicePositionSensorEnabled:Z

.field public mFlatMotionSensorEnabled:Z

.field public mIsClosed:Z

.field public mMusicDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public mSensorHandler:Landroid/os/Handler;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mVoiceDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mediaCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

.field public voiceCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$MU6wd1EpDuFe5qIEs9gil5LGy6s(Lcom/samsung/android/server/audio/SensorHandleThread;Ljava/util/Set;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SensorHandleThread;->setVoiceDevice(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RLR6o1i34D_2gnM-pYqYLiEyJOs(Lcom/samsung/android/server/audio/SensorHandleThread;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/SensorHandleThread;->lambda$new$0(Ljava/util/Set;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    .line 70
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/high16 v1, 0x20000000

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 4

    const-string v0, "SensorHandleThread"

    .line 75
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isProximateRegistered:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isMotionRegistered:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    .line 185
    new-instance v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SensorHandleThread;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    .line 186
    new-instance v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/SensorHandleThread;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    const-string/jumbo p2, "sensor"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 78
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "com.sec.feature.sensorhub"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_61

    const-string/jumbo p2, "scontext"

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz p1, :cond_61

    const/16 p2, 0x16

    .line 84
    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionSensorEnabled:Z

    if-nez p1, :cond_61

    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mFlatMotionSensorEnabled:Z

    :cond_61
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Set;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final isBluetoothCommunicationDevice()Z
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 202
    :cond_6
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    return p0
.end method

.method public declared-synchronized isStarted()Z
    .registers 2

    monitor-enter p0

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isProximateRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 8

    .line 121
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 123
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    if-eqz v1, :cond_7

    return-void

    .line 124
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x2

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 126
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getModeInternal()I

    move-result v1

    if-gt v1, v3, :cond_21

    return-void

    .line 130
    :cond_21
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x14

    const-string v4, "l_hw_flat_motion_state=0"

    const-string v5, "l_hw_flat_motion_state=1"

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x16

    if-eq v0, v1, :cond_32

    goto :goto_6b

    .line 132
    :cond_32
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result p1

    if-ne p1, v3, :cond_40

    .line 135
    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6b

    .line 137
    :cond_40
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result p1

    if-ne p1, v3, :cond_6b

    .line 139
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    goto :goto_6b

    .line 144
    :cond_4e
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_5c

    .line 147
    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6b

    :cond_5c
    if-ne p1, v2, :cond_6b

    .line 149
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result p1

    if-ne p1, v3, :cond_6b

    .line 151
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    :cond_6b
    :goto_6b
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2e

    .line 110
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-nez p1, :cond_27

    const-string p1, "GAMEVOIP"

    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getAppMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    goto :goto_29

    .line 113
    :cond_27
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 115
    :goto_29
    iget-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SensorHandleThread;->setProximitySensorClosed(Z)V

    .line 117
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public run()V
    .registers 2

    .line 96
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setDevicePositionChangedDuringRingtone(Z)V
    .registers 2

    .line 249
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    return-void
.end method

.method public setProximitySensorClosed(Z)V
    .registers 2

    if-eqz p1, :cond_8

    const-string p0, "l_hw_proximity_sensor_state=1"

    .line 242
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    const-string p0, "l_hw_proximity_sensor_state=0"

    .line 244
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public final setVoiceDevice(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->isBluetoothCommunicationDevice()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopProximate()V

    goto :goto_f

    .line 257
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startProximate()V

    :goto_f
    return-void
.end method

.method public declared-synchronized startMotion()V
    .registers 3

    monitor-enter p0

    .line 174
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isMotionRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 175
    :try_start_8
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isMotionRegistered:Z

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionSensorEnabled:Z

    if-eqz v0, :cond_16

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    goto :goto_21

    .line 179
    :cond_16
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_21

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_23

    .line 183
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startProximate()V
    .registers 5

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->isBluetoothCommunicationDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "AS.SensorHandleThread"

    const-string/jumbo v1, "start fail by bluetooth communication device connection"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_26

    .line 163
    monitor-exit p0

    return-void

    .line 166
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isProximateRegistered:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_26

    if-eqz v0, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    const/4 v0, 0x1

    .line 167
    :try_start_18
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isProximateRegistered:Z

    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_26

    .line 171
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSensor()V
    .registers 5

    .line 189
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 190
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/audio/AudioService;->registerCurrentDeviceChangedCallback(ILcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;Ljava/util/concurrent/Executor;)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/audio/AudioService;->registerCurrentDeviceChangedCallback(ILcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;Ljava/util/concurrent/Executor;)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startProximate()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startMotion()V

    return-void
.end method

.method public declared-synchronized stopMotion()V
    .registers 3

    monitor-enter p0

    .line 213
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isMotionRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 214
    :try_start_8
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isMotionRegistered:Z

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionSensorEnabled:Z

    if-eqz v0, :cond_1b

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string v0, "l_hw_flat_motion_state=1"

    .line 218
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2b

    .line 219
    :cond_1b
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_2b

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string v0, "l_hw_flat_motion_state=1"

    .line 221
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2d

    .line 223
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopProximate()V
    .registers 3

    monitor-enter p0

    .line 206
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isProximateRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 207
    :try_start_8
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->isProximateRegistered:Z

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    .line 210
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopSensor()V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->unregisterCurrentDeviceChangedCallback(ILcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->unregisterCurrentDeviceChangedCallback(ILcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopProximate()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopMotion()V

    return-void
.end method
