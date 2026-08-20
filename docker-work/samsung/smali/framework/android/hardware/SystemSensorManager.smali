.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final blacklist CAPPED_SAMPLING_PERIOD_US:I = 0x1388

.field private static final blacklist CAPPED_SAMPLING_RATE_LEVEL:I = 0x1

.field static final blacklist CHANGE_ID_SAMPLING_RATE_SENSORS_PERMISSION:J = 0x81c4045L

.field private static final greylist-max-o DEBUG_DYNAMIC_SENSOR:Z = true

.field private static final blacklist HIGH_SAMPLING_RATE_SENSORS_PERMISSION:Ljava/lang/String; = "android.permission.HIGH_SAMPLING_RATE_SENSORS"

.field private static final greylist-max-o MAX_LISTENER_COUNT:I = 0x80

.field private static final greylist-max-o MIN_DIRECT_CHANNEL_BUFFER_SIZE:I = 0x68

.field private static greylist-max-o sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sNativeClassInited:Z


# instance fields
.field private blacklist mCameraLightManager:Landroid/hardware/CameraLightSensorManager;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDynamicSensorListDirty:Z

.field private greylist-max-o mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsPackageDebuggable:Z

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private final greylist-max-o mNativeInstance:J

.field private final greylist-max-o mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTargetSdkLevel:I

.field private final greylist-max-o mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPackageDebuggable(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeInstance(Landroid/hardware/SystemSensorManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I
    .registers 1

    iget p0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDynamicSensorListDirty(Landroid/hardware/SystemSensorManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasHighSamplingRateSensorsPermission(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSensorInCappedSet(Landroid/hardware/SystemSensorManager;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDynamicSensorList(Landroid/hardware/SystemSensorManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 100
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 131
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 126
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 132
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_39
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_42

    .line 134
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 135
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 137
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_87

    .line 139
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 141
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 142
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 144
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "index":I
    :goto_64
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 149
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v3, v4, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v3

    if-nez v3, :cond_72

    .line 153
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    return-void

    .line 150
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_72
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 137
    .end local v0    # "index":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v0
.end method

.method private greylist-max-o cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .registers 9
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 461
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 464
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 465
    :try_start_17
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 468
    .local v1, "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/TriggerEventListener;

    .line 470
    .local v3, "l":Landroid/hardware/TriggerEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed trigger listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 474
    nop

    .end local v3    # "l":Landroid/hardware/TriggerEventListener;
    goto :goto_26

    .line 475
    .end local v1    # "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    :cond_5b
    monitor-exit v0

    goto :goto_a6

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_17 .. :try_end_5f} :catchall_5d

    throw v1

    .line 477
    :cond_60
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 478
    :try_start_63
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 481
    .local v1, "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    .line 483
    .local v3, "l":Landroid/hardware/SensorEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed event listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, v3, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 487
    .end local v3    # "l":Landroid/hardware/SensorEventListener;
    goto :goto_72

    .line 488
    .end local v1    # "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    :cond_a5
    monitor-exit v0

    .line 490
    :goto_a6
    return-void

    .line 488
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_63 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method private static greylist-max-o diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .line 613
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 615
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 617
    .local v2, "j":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 618
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-le v3, v4, :cond_34

    .line 619
    :cond_25
    const/4 v0, 0x1

    .line 620
    if-eqz p4, :cond_31

    .line 621
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 624
    :cond_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_70

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 625
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 626
    :cond_56
    const/4 v0, 0x1

    .line 627
    if-eqz p3, :cond_62

    .line 628
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_62
    if-eqz p2, :cond_6d

    .line 631
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 634
    :cond_70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a3

    .line 635
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ne v3, v4, :cond_a3

    .line 636
    if-eqz p2, :cond_9d

    .line 637
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 645
    :cond_a3
    return v0
.end method

.method private blacklist hasHighSamplingRateSensorsPermission()Z
    .registers 4

    .line 1144
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1145
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 1147
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1145
    const-string v2, "android.permission.HIGH_SAMPLING_RATE_SENSORS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1148
    .local v0, "granted":Z
    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 1151
    .end local v0    # "granted":Z
    :cond_2b
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist isSensorInCappedSet(I)Z
    .registers 4
    .param p1, "sensorType"    # I

    .line 1135
    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/16 v1, 0x23

    if-eq p1, v1, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_17

    const/16 v1, 0x10

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/16 v1, 0xe

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    return v0
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private static native greylist-max-o nativeConfigDirectChannel(JIII)I
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/String;)J
.end method

.method private static native greylist-max-o nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native greylist-max-o nativeDestroyDirectChannel(JI)V
.end method

.method private static native greylist-max-o nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native greylist-max-o nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native greylist-max-o nativeSetOperationParameter(JII[F[I)I
.end method

.method private blacklist requestCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 9
    .param p1, "cameraLooper"    # Landroid/os/Looper;
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;
    .param p3, "sensor"    # Landroid/hardware/Sensor;
    .param p4, "enable"    # Z

    .line 439
    const/4 v0, 0x0

    const-string v1, "SensorManager"

    if-eqz p4, :cond_52

    .line 440
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mCameraLightManager:Landroid/hardware/CameraLightSensorManager;

    if-nez v2, :cond_12

    .line 441
    new-instance v2, Landroid/hardware/CameraLightSensorManager;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/hardware/CameraLightSensorManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mCameraLightManager:Landroid/hardware/CameraLightSensorManager;

    .line 443
    :cond_12
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mCameraLightManager:Landroid/hardware/CameraLightSensorManager;

    if-eqz v2, :cond_37

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/CameraLightSensorManager;->registerCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraLight] registerListener : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 446
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CameraLight] registerListener fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v0

    .line 450
    :cond_52
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mCameraLightManager:Landroid/hardware/CameraLightSensorManager;

    if-eqz v2, :cond_78

    invoke-virtual {v2, p2}, Landroid/hardware/CameraLightSensorManager;->unRegisterCameraLightSensor(Landroid/hardware/SensorEventListener;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraLight] unregisteListener : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_76
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_78
    return v0
.end method

.method private greylist-max-o setupDynamicSensorBroadcastReceiver()V
    .registers 5

    .line 547
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1f

    .line 548
    new-instance v0, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 562
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 567
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method private greylist-max-o teardownDynamicSensorBroadcastReceiver()V
    .registers 3

    .line 570
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 571
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 573
    return-void
.end method

.method private greylist-max-o updateDynamicSensorList()V
    .registers 13

    .line 493
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v0

    .line 494
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v1, :cond_a6

    .line 495
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v2, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v3, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v4, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 505
    .local v5, "changed":Z
    if-eqz v5, :cond_a3

    .line 507
    const-string v6, "SensorManager"

    const-string v7, "DYNS dynamic sensor list cached should be updated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 511
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 512
    .local v7, "s":Landroid/hardware/Sensor;
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    nop

    .end local v7    # "s":Landroid/hardware/Sensor;
    goto :goto_35

    .line 515
    :cond_50
    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 518
    .local v6, "mainHandler":Landroid/os/Handler;
    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_65
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 519
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 521
    .local v9, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7f

    move-object v10, v6

    goto :goto_85

    :cond_7f
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Handler;

    .line 523
    .local v10, "handler":Landroid/os/Handler;
    :goto_85
    new-instance v11, Landroid/hardware/SystemSensorManager$1;

    invoke-direct {v11, p0, v3, v9, v4}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    nop

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v9    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v10    # "handler":Landroid/os/Handler;
    goto :goto_65

    .line 536
    :cond_8f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 537
    .local v8, "s":Landroid/hardware/Sensor;
    invoke-direct {p0, v8}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    .line 538
    .end local v8    # "s":Landroid/hardware/Sensor;
    goto :goto_93

    .line 541
    .end local v6    # "mainHandler":Landroid/os/Handler;
    :cond_a3
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 543
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v2    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v5    # "changed":Z
    :cond_a6
    monitor-exit v0

    .line 544
    return-void

    .line 543
    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_3 .. :try_end_aa} :catchall_a8

    throw v1
.end method


# virtual methods
.method protected greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 10
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .line 349
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 350
    return v0

    .line 352
    :cond_b
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 353
    :try_start_e
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 354
    .local v2, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v2, :cond_8c

    .line 356
    if-nez p2, :cond_1f

    .line 357
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_23

    .line 359
    .end local v0    # "result":Z
    :cond_1f
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v0

    .line 361
    .restart local v0    # "result":Z
    :goto_23
    if-eqz v0, :cond_8a

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 362
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 365
    if-eqz p2, :cond_6e

    .line 366
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelTrigger :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 368
    :cond_6e
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelTrigger :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_8a
    :goto_8a
    monitor-exit v1

    return v0

    .line 373
    .end local v0    # "result":Z
    :cond_8c
    monitor-exit v1

    return v0

    .line 374
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_8e
    move-exception v0

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_e .. :try_end_90} :catchall_8e

    throw v0
.end method

.method protected greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 9
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 651
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 655
    if-ltz p3, :cond_79

    const/4 v0, 0x3

    if-gt p3, v0, :cond_79

    .line 660
    if-nez p2, :cond_19

    if-nez p3, :cond_10

    goto :goto_19

    .line 662
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_19
    :goto_19
    if-nez p2, :cond_1d

    const/4 v0, -0x1

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 667
    .local v0, "sensorHandle":I
    :goto_21
    const/4 v1, 0x1

    if-eqz p2, :cond_63

    .line 668
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result v2

    if-eqz v2, :cond_63

    if-le p3, v1, :cond_63

    iget-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    if-eqz v2, :cond_63

    .line 671
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result v2

    if-nez v2, :cond_63

    const-wide/32 v2, 0x81c4045

    .line 672
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_63

    .line 673
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To use the sampling rate level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_63
    :goto_63
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 679
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v4

    .line 678
    invoke-static {v2, v3, v4, v0, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    move-result v2

    .line 680
    .local v2, "ret":I
    const/4 v3, 0x0

    if-nez p3, :cond_75

    .line 681
    if-nez v2, :cond_73

    goto :goto_74

    :cond_73
    move v1, v3

    :goto_74
    return v1

    .line 683
    :cond_75
    if-lez v2, :cond_78

    move v3, v2

    :cond_78
    return v3

    .line 657
    .end local v0    # "sensorHandle":I
    .end local v2    # "ret":I
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate parameter invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 18
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 693
    move-object v7, p0

    const/16 v0, 0x68

    if-eqz p1, :cond_58

    .line 696
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v13
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_4f

    .line 699
    .local v13, "fd":I
    nop

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->length()I

    move-result v1

    if-lt v1, v0, :cond_47

    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v0, v0

    .line 708
    .local v0, "size":J
    iget-wide v8, v7, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide v10, v0

    invoke-static/range {v8 .. v14}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v2

    .line 710
    .local v2, "id":I
    if-lez v2, :cond_29

    .line 714
    const/4 v3, 0x1

    .line 715
    .end local v13    # "fd":I
    .local v3, "type":I
    move-wide v8, v0

    move v0, v2

    move v10, v3

    goto :goto_93

    .line 711
    .end local v3    # "type":I
    .restart local v13    # "fd":I
    :cond_29
    new-instance v3, Ljava/io/UncheckedIOException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create MemoryFile direct channel failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 702
    .end local v0    # "size":J
    .end local v2    # "id":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size of MemoryFile has to be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    .end local v13    # "fd":I
    :catch_4f
    move-exception v0

    .line 698
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MemoryFile object is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 715
    .end local v0    # "e":Ljava/io/IOException;
    :cond_58
    if-eqz p2, :cond_dc

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_d4

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cc

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_c4

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bc

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    int-to-long v0, v0

    .line 732
    .local v0, "size":J
    iget-wide v8, v7, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-wide v10, v0

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v14}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v2

    .line 735
    .restart local v2    # "id":I
    if-lez v2, :cond_9e

    .line 739
    const/4 v3, 0x2

    move-wide v8, v0

    move v0, v2

    move v10, v3

    .line 743
    .end local v2    # "id":I
    .local v0, "id":I
    .local v8, "size":J
    .local v10, "type":I
    :goto_93
    new-instance v11, Landroid/hardware/SensorDirectChannel;

    move-object v1, v11

    move-object v2, p0

    move v3, v0

    move v4, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    return-object v11

    .line 736
    .end local v8    # "size":J
    .end local v10    # "type":I
    .local v0, "size":J
    .restart local v2    # "id":I
    :cond_9e
    new-instance v3, Ljava/io/UncheckedIOException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create HardwareBuffer direct channel failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 728
    .end local v0    # "size":J
    .end local v2    # "id":I
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width if HaradwareBuffer must be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of HardwareBuffer must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format of HardwareBuffer must be BLOB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_dc
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "shared memory object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 5
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 748
    if-eqz p1, :cond_b

    .line 749
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    .line 751
    :cond_b
    return-void
.end method

.method protected greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 378
    if-eqz p1, :cond_1e

    .line 380
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 381
    :try_start_5
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 382
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 383
    monitor-exit v0

    return v2

    .line 385
    :cond_12
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_19

    const/4 v2, 0x1

    :cond_19
    monitor-exit v0

    return v2

    .line 387
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1

    .line 378
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 167
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 168
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected greylist-max-o getFullSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected greylist-max-o initDataInjectionImpl(Z)Z
    .registers 10
    .param p1, "enable"    # Z

    .line 391
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    const/4 v1, 0x1

    if-eqz p1, :cond_4d

    .line 393
    :try_start_6
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v2

    .line 395
    .local v2, "isDataInjectionModeEnabled":Z
    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 396
    const-string v1, "SensorManager"

    const-string v4, "Data Injection mode not enabled"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    monitor-exit v0

    return v3

    .line 400
    :cond_18
    sget-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_59

    if-nez v4, :cond_45

    .line 402
    :try_start_1c
    new-instance v4, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 403
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, p0, v6}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2b} :catch_2c
    .catchall {:try_start_1c .. :try_end_2b} :catchall_59

    .line 406
    goto :goto_45

    .line 404
    :catch_2c
    move-exception v4

    .line 405
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_2d
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create InjectEventQueue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_45
    :goto_45
    sget-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    monitor-exit v0

    return v1

    .line 411
    .end local v2    # "isDataInjectionModeEnabled":Z
    :cond_4d
    sget-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v2, :cond_57

    .line 412
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 413
    const/4 v2, 0x0

    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 415
    :cond_57
    monitor-exit v0

    return v1

    .line 417
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_59

    throw v1
.end method

.method protected greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 14
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 422
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    const/4 v7, 0x0

    if-nez v1, :cond_11

    .line 424
    const-string v1, "SensorManager"

    const-string v2, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v0

    return v7

    .line 427
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v1

    .line 430
    .local v1, "ret":I
    if-eqz v1, :cond_26

    .line 431
    sget-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 432
    const/4 v2, 0x0

    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 434
    :cond_26
    if-nez v1, :cond_29

    const/4 v7, 0x1

    :cond_29
    monitor-exit v0

    return v7

    .line 435
    .end local v1    # "ret":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 579
    const-string v0, "SensorManager"

    const-string v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz p1, :cond_1b

    .line 585
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 587
    return-void

    .line 590
    :cond_12
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 591
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    return-void

    .line 583
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 23
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, p3

    move/from16 v4, p5

    const/4 v5, 0x0

    if-eqz v2, :cond_24d

    if-nez v3, :cond_11

    goto/16 :goto_24d

    .line 180
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_20

    .line 181
    const-string v6, "SensorManager"

    const-string v7, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v5

    .line 184
    :cond_20
    if-ltz v4, :cond_243

    if-gez v0, :cond_26

    goto/16 :goto_243

    .line 189
    :cond_26
    const/4 v6, 0x0

    .line 190
    .local v6, "cameraLightSensorRet":Z
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Camera Light Sensor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8b

    .line 191
    if-eqz p4, :cond_3b

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    goto :goto_3c

    :cond_3b
    const/4 v7, 0x0

    .line 192
    .local v7, "looper":Landroid/os/Looper;
    :goto_3c
    if-eqz p4, :cond_67

    .line 193
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[CameraLightSensor] Use handler looper= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mainLooper= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 195
    :cond_67
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[CameraLightSensor] mainLooper= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Use CameraMangerThread looper."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_87
    invoke-direct {v1, v7, v2, v3, v8}, Landroid/hardware/SystemSensorManager;->requestCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v6

    .line 200
    .end local v7    # "looper":Landroid/os/Looper;
    :cond_8b
    iget-object v7, v1, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    const/16 v9, 0x80

    if-ge v7, v9, :cond_23a

    .line 212
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "strlistener":Ljava/lang/String;
    if-eqz v7, :cond_ab

    const-string v9, "com.tencent"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 214
    const/16 v9, 0x1388

    if-ge v0, v9, :cond_ab

    const/16 v0, 0x1388

    move v9, v0

    .end local p3    # "delayUs":I
    .local v0, "delayUs":I
    goto :goto_ac

    .line 218
    .end local v0    # "delayUs":I
    .restart local p3    # "delayUs":I
    :cond_ab
    move v9, v0

    .end local p3    # "delayUs":I
    .local v9, "delayUs":I
    :goto_ac
    iget-object v10, v1, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v10

    .line 219
    :try_start_af
    iget-object v0, v1, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 220
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    const-string v11, ""

    .line 221
    .local v11, "fullClassName":Ljava/lang/String;
    if-nez v0, :cond_18b

    .line 222
    if-eqz p4, :cond_c2

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    goto :goto_c4

    :cond_c2
    iget-object v12, v1, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 223
    .local v12, "looper":Landroid/os/Looper;
    :goto_c4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_db

    .line 224
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_e3

    .line 225
    :cond_db
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    :goto_e3
    move-object v11, v13

    .line 226
    const/4 v13, 0x0

    .line 227
    .local v13, "proGuard":Z
    const-string v14, ""

    .line 228
    .local v14, "proGuardPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 229
    .local v15, "uid":I
    const/16 v8, 0x2710

    if-lt v15, v8, :cond_f2

    .line 230
    const-string v8, ""

    move-object v7, v8

    .line 232
    :cond_f2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v5, "Palm"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 233
    const/4 v13, 0x1

    .line 234
    iget-object v5, v1, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    .line 236
    :cond_10a
    if-eqz v13, :cond_124

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 239
    :cond_124
    new-instance v5, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v5, v2, v12, v1, v11}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    move-object v0, v5

    .line 240
    invoke-virtual {v0, v3, v9, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v5

    if-nez v5, :cond_181

    .line 241
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 242
    const-string v5, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v11

    .end local v11    # "fullClassName":Ljava/lang/String;
    .local p3, "fullClassName":Ljava/lang/String;
    const-string/jumbo v11, "registerListener fail (1) :: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v10

    const/4 v5, 0x0

    return v5

    .line 245
    .end local p3    # "fullClassName":Ljava/lang/String;
    .restart local v11    # "fullClassName":Ljava/lang/String;
    :cond_181
    move-object/from16 p3, v11

    .end local v11    # "fullClassName":Ljava/lang/String;
    .restart local p3    # "fullClassName":Ljava/lang/String;
    iget-object v5, v1, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    move-object/from16 v11, p3

    .end local v12    # "looper":Landroid/os/Looper;
    .end local v13    # "proGuard":Z
    .end local v14    # "proGuardPkg":Ljava/lang/String;
    .end local v15    # "uid":I
    goto :goto_1dd

    .line 247
    .end local p3    # "fullClassName":Ljava/lang/String;
    .restart local v11    # "fullClassName":Ljava/lang/String;
    :cond_18b
    invoke-virtual {v0, v3, v9, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v5

    if-nez v5, :cond_1dd

    .line 248
    const-string v5, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerListener fail (2) :: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    monitor-exit v10

    const/4 v5, 0x0

    return v5

    .line 252
    :cond_1dd
    :goto_1dd
    const-string v5, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerListener :: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Camera Light Sensor"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_234

    .line 255
    monitor-exit v10

    return v6

    .line 258
    :cond_234
    monitor-exit v10

    const/4 v5, 0x1

    return v5

    .line 259
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v11    # "fullClassName":Ljava/lang/String;
    :catchall_237
    move-exception v0

    monitor-exit v10
    :try_end_239
    .catchall {:try_start_af .. :try_end_239} :catchall_237

    throw v0

    .line 201
    .end local v7    # "strlistener":Ljava/lang/String;
    .end local v9    # "delayUs":I
    .local p3, "delayUs":I
    :cond_23a
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    .end local v6    # "cameraLightSensorRet":Z
    :cond_243
    :goto_243
    const-string v5, "SensorManager"

    const-string/jumbo v6, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v5, 0x0

    return v5

    .line 176
    :cond_24d
    :goto_24d
    const-string v6, "SensorManager"

    const-string/jumbo v7, "sensor or listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v5
.end method

.method protected greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 10
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 306
    if-eqz p2, :cond_128

    .line 308
    if-eqz p1, :cond_120

    .line 310
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    return v2

    .line 312
    :cond_d
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_117

    .line 318
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 319
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 320
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_97

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 324
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_43
    nop

    .line 325
    .local v3, "fullClassName":Ljava/lang/String;
    new-instance v4, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v4, p1, v5, p0, v3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    move-object v1, v4

    .line 326
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_90

    .line 327
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 329
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTrigger :: fail (1) :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    monitor-exit v0

    return v2

    .line 333
    :cond_90
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    nop

    .end local v3    # "fullClassName":Ljava/lang/String;
    goto :goto_d8

    .line 335
    :cond_97
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 336
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestTrigger :: fail (2) :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v0

    return v2

    .line 340
    :cond_d8
    :goto_d8
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTrigger :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 342
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_114
    move-exception v1

    monitor-exit v0
    :try_end_116
    .catchall {:try_start_1a .. :try_end_116} :catchall_114

    throw v1

    .line 313
    :cond_117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 9
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 1120
    const/4 v0, -0x1

    .line 1121
    .local v0, "handle":I
    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_b

    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1122
    :cond_b
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    iget v4, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    iget-object v6, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method protected greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 598
    const-string v0, "SensorManager"

    const-string v1, "Removing dynamic sensor listerner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    return-void
.end method

.method protected greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 10
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 266
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 267
    return-void

    .line 270
    :cond_a
    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mCameraLightManager:Landroid/hardware/CameraLightSensorManager;

    if-eqz v0, :cond_1f

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/CameraLightSensorManager;->isAllowListedListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 272
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/hardware/SystemSensorManager;->requestCameraLightSensor(Landroid/os/Looper;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Z)Z

    .line 275
    :cond_1f
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 276
    :try_start_22
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 277
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v1, :cond_b4

    .line 279
    if-nez p2, :cond_33

    .line 280
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v2

    .local v2, "result":Z
    goto :goto_38

    .line 282
    .end local v2    # "result":Z
    :cond_33
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v2

    .line 284
    .restart local v2    # "result":Z
    :goto_38
    if-eqz v2, :cond_b4

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_b4

    .line 285
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 289
    .local v3, "uid":I
    const/16 v4, 0x2710

    if-ge v3, v4, :cond_ac

    .line 290
    if-eqz p2, :cond_8e

    if-eqz p1, :cond_8e

    .line 291
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterListener :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 293
    :cond_8e
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterListener :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 296
    :cond_ac
    const-string v4, "SensorManager"

    const-string/jumbo v5, "unregisterListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v2    # "result":Z
    .end local v3    # "uid":I
    :cond_b4
    :goto_b4
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_22 .. :try_end_b8} :catchall_b6

    throw v1
.end method
