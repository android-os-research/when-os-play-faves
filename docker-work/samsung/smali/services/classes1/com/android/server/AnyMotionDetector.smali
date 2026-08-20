.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$RunningSignalStats;,
        Lcom/android/server/AnyMotionDetector$Vector3;,
        Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_DATA_TIMEOUT_MILLIS:J = 0xbb8L

.field public static final DEBUG:Z = false

.field public static final ORIENTATION_MEASUREMENT_DURATION_MILLIS:J = 0x9c4L

.field public static final ORIENTATION_MEASUREMENT_INTERVAL_MILLIS:J = 0x1388L

.field public static final RESULT_MOVED:I = 0x1

.field public static final RESULT_STATIONARY:I = 0x0

.field public static final RESULT_UNKNOWN:I = -0x1

.field public static final SAMPLING_INTERVAL_MILLIS:I = 0x28

.field public static final STALE_MEASUREMENT_TIMEOUT_MILLIS:I = 0x1d4c0

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_INACTIVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AnyMotionDetector"

.field public static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field public final THRESHOLD_ENERGY:F

.field public final mAccelSensor:Landroid/hardware/Sensor;

.field public final mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field public mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Landroid/hardware/SensorEventListener;

.field public final mLock:Ljava/lang/Object;

.field public mMeasurementInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mMeasurementTimeout:Ljava/lang/Runnable;

.field public mMeasurementTimeoutIsActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mNumSufficientSamples:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorRestart:Ljava/lang/Runnable;

.field public mSensorRestartIsActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mThresholdAngle:F

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakelockTimeout:Ljava/lang/Runnable;

.field public volatile mWakelockTimeoutIsActive:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMeasurementTimeoutIsActive(Lcom/android/server/AnyMotionDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumSufficientSamples(Lcom/android/server/AnyMotionDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningStats(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorRestartIsActive(Lcom/android/server/AnyMotionDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakelockTimeout(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakelockTimeoutIsActive(Lcom/android/server/AnyMotionDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmMeasurementTimeoutIsActive(Lcom/android/server/AnyMotionDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSensorRestartIsActive(Lcom/android/server/AnyMotionDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWakelockTimeoutIsActive(Lcom/android/server/AnyMotionDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V
    .registers 9

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 64
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ENERGY:F

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 121
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 311
    new-instance v1, Lcom/android/server/AnyMotionDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    .line 337
    new-instance v1, Lcom/android/server/AnyMotionDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    .line 349
    new-instance v1, Lcom/android/server/AnyMotionDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    .line 370
    new-instance v1, Lcom/android/server/AnyMotionDetector$4;

    invoke-direct {v1, p0}, Lcom/android/server/AnyMotionDetector$4;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    .line 134
    monitor-enter v0

    :try_start_30
    const-string v1, "AnyMotionDetector"

    const/4 v2, 0x1

    .line 135
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 137
    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 138
    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 139
    invoke-virtual {p3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 140
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 144
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 145
    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 146
    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    .line 147
    new-instance p1, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-direct {p1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    const-wide p1, 0x404f400000000000L    # 62.5

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    .line 151
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_30 .. :try_end_6c} :catchall_6a

    throw p0
.end method


# virtual methods
.method public checkForAnyMotion()V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    .line 170
    iput v2, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v1, 0x0

    .line 174
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 175
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 176
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 177
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 178
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    iput-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    .line 182
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final getStationaryStatusLocked()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const/4 v1, -0x1

    if-eqz v0, :cond_46

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v2, :cond_a

    goto :goto_46

    .line 286
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    .line 288
    invoke-virtual {v0, v2}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    .line 291
    iget v2, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getEnergy()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2c

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_2c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    return v2

    .line 301
    :cond_34
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long p0, v3, v5

    if-lez p0, :cond_45

    return v1

    :cond_45
    return v2

    :cond_46
    :goto_46
    return v1
.end method

.method public hasSensor()Z
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final startOrientationMeasurementLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2e

    .line 214
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    const v3, 0x9c40

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 216
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 217
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 219
    :cond_1d
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    :cond_2e
    return-void
.end method

.method public stop()V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    .line 188
    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 191
    :cond_b
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 194
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 195
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-eqz v1, :cond_2a

    .line 196
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 197
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2a
    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 200
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 201
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 202
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 204
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 206
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final stopOrientationMeasurementLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6a

    .line 231
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 233
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 234
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 235
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 236
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 237
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "AnyMotionDetector"

    const-string v3, "No accelerometer data acquired for orientation measurement."

    .line 238
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->getStationaryStatusLocked()I

    move-result v2

    .line 250
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    if-eq v2, v1, :cond_57

    .line 253
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 254
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 256
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 261
    :cond_54
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    goto :goto_69

    .line 270
    :cond_57
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    :goto_69
    move v1, v2

    :cond_6a
    return v1
.end method
