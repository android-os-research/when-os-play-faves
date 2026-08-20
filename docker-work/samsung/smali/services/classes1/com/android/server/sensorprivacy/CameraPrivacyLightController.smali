.class public Lcom/android/server/sensorprivacy/CameraPrivacyLightController;
.super Ljava/lang/Object;
.source "CameraPrivacyLightController.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final LIGHT_VALUE_MULTIPLIER:D
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mActivePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivePhonePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAlvSum:J

.field public final mAmbientLightValues:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCameraLights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDayColor:I

.field public final mDelayedUpdateToken:Ljava/lang/Object;

.field public mElapsedRealTime:J

.field public mElapsedTimeStartedReading:J

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public mIsAmbientLightListenerRegistered:Z

.field public mLastLightColor:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsManager:Landroid/hardware/lights/LightsManager;

.field public mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

.field public final mMovingAverageIntervalMillis:J

.field public final mNightColor:I

.field public final mNightThreshold:J

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static synthetic $r8$lambda$oF1MmepPqcW5ADy1TzOYmMSBM0E(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    sput-wide v2, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 97
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 83
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    const-wide/16 v2, 0x0

    .line 86
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 87
    iput v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 91
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    .line 94
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 102
    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 104
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 107
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 108
    const-class p2, Landroid/hardware/lights/LightsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/lights/LightsManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 109
    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10600ba

    .line 111
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDayColor:I

    const v2, 0x10600bb

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightColor:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004a

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e004b

    .line 116
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-double v2, p1

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v4, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightThreshold:J

    .line 119
    invoke-virtual {p2}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p1

    .line 120
    :goto_9e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_ba

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/lights/Light;

    .line 122
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_b7

    .line 123
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 127
    :cond_ba
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 128
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    return-void

    .line 132
    :cond_c5
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string p2, "android:camera"

    const-string v0, "android:phone_call_camera"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 138
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final addElement(JI)V
    .registers 11

    .line 142
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 145
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_23
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 148
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 150
    iget-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object p3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    iget-object p3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v5, p3

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    return-void
.end method

.method public final getCurrentIntervalMillis()J
    .registers 7

    .line 290
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 291
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    sub-long/2addr v2, v4

    .line 290
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getElapsedRealTime()J
    .registers 5

    .line 266
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_c
    return-wide v0
.end method

.method public final getLiveAmbientLightTotal()J
    .registers 13

    .line 171
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    return-wide v0

    .line 174
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v0

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    .line 177
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 178
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 180
    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v8

    sub-long v8, v0, v8

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v8, p0

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object p0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    const-string p2, "android:camera"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 188
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    goto :goto_15

    :cond_b
    const-string p2, "android:phone_call_camera"

    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 190
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    :goto_15
    if-eqz p4, :cond_1b

    .line 196
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 198
    :cond_1b
    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    :cond_21
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 278
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    float-to-double v3, p1

    .line 279
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v3, v5

    double-to-int p1, v3

    .line 278
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->addElement(JI)V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    .line 281
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final removeObsoleteData(J)V
    .registers 11

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_52

    .line 156
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 157
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 158
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_31

    .line 159
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_52

    .line 162
    :cond_31
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    goto :goto_0

    :cond_52
    :goto_52
    return-void
.end method

.method public setElapsedRealTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 271
    iput-wide p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    return-void
.end method

.method public final updateLightSession()V
    .registers 8

    .line 205
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 206
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 210
    :cond_17
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 213
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    move v0, v2

    .line 214
    :goto_31
    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateSensorListener(Z)V

    if-eqz v0, :cond_42

    .line 217
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v0, :cond_3b

    return-void

    .line 221
    :cond_3b
    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->close()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    goto :goto_a5

    .line 225
    :cond_42
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getLiveAmbientLightTotal()J

    move-result-wide v0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightThreshold:J

    mul-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-gez v0, :cond_58

    .line 227
    iget v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightColor:I

    goto :goto_5a

    .line 229
    :cond_58
    iget v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDayColor:I

    .line 232
    :goto_5a
    iget v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    if-ne v1, v0, :cond_63

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-eqz v1, :cond_63

    return-void

    .line 235
    :cond_63
    iput v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 237
    new-instance v1, Landroid/hardware/lights/LightsRequest$Builder;

    invoke-direct {v1}, Landroid/hardware/lights/LightsRequest$Builder;-><init>()V

    .line 238
    :goto_6a
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 239
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/Light;

    new-instance v4, Landroid/hardware/lights/LightState$Builder;

    invoke-direct {v4}, Landroid/hardware/lights/LightState$Builder;-><init>()V

    .line 241
    invoke-virtual {v4, v0}, Landroid/hardware/lights/LightState$Builder;->setColor(I)Landroid/hardware/lights/LightState$Builder;

    move-result-object v4

    .line 242
    invoke-virtual {v4}, Landroid/hardware/lights/LightState$Builder;->build()Landroid/hardware/lights/LightState;

    move-result-object v4

    .line 239
    invoke-virtual {v1, v3, v4}, Landroid/hardware/lights/LightsRequest$Builder;->addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 245
    :cond_8d
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v0, :cond_9c

    .line 246
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/hardware/lights/LightsManager;->openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 249
    :cond_9c
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    invoke-virtual {v1}, Landroid/hardware/lights/LightsRequest$Builder;->build()Landroid/hardware/lights/LightsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/lights/LightsManager$LightsSession;->requestLights(Landroid/hardware/lights/LightsRequest;)V

    :goto_a5
    return-void
.end method

.method public final updateSensorListener(Z)V
    .registers 5

    if-eqz p1, :cond_e

    .line 254
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-eqz v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    :cond_e
    if-nez p1, :cond_29

    .line 258
    iget-boolean p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_29

    .line 259
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    :cond_29
    return-void
.end method
