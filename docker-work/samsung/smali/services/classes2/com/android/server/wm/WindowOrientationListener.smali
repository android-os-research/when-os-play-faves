.class public abstract Lcom/android/server/wm/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;,
        Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;,
        Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
    }
.end annotation


# static fields
.field public static final DEFAULT_BATCH_LATENCY:I = 0x186a0

.field public static final DEFAULT_ROTATION_MEMORIZATION_TIMEOUT_MILLIS:J = 0xbb8L

.field public static final DEFAULT_ROTATION_RESOLVER_TIMEOUT_MILLIS:J = 0x2bcL

.field public static final KEY_ROTATION_MEMORIZATION_TIMEOUT:Ljava/lang/String; = "rotation_memorization_timeout_millis"

.field public static final KEY_ROTATION_RESOLVER_TIMEOUT:Ljava/lang/String; = "rotation_resolver_timeout_millis"

.field public static final LOG:Z

.field public static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field public static final USE_GRAVITY_SENSOR:Z = false

.field public static final VERSION_BITMASK_SAMSUNGROTATION:I = 0x10


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public mEnabled:Z

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mRate:I

.field public mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public mSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorType:Ljava/lang/String;

.field public mSupportSamsungRotation:Z

.field public mSupportSemContext:Z

.field public mSupportTablet:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/WindowOrientationListener;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportSamsungRotation(Lcom/android/server/wm/WindowOrientationListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSamsungRotation:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportTablet(Lcom/android/server/wm/WindowOrientationListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportTablet:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x2

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportTablet:Z

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSamsungRotation:Z

    const/4 v1, -0x1

    .line 91
    iput v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 127
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 128
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    const-string/jumbo v1, "sensor"

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 131
    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    const/16 p3, 0x1b

    .line 154
    invoke-virtual {v1, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez p3, :cond_34

    return-void

    .line 159
    :cond_34
    invoke-virtual {p3}, Landroid/hardware/Sensor;->getHandle()I

    move-result p3

    const v1, 0x5f617273

    if-ne p3, v1, :cond_5d

    .line 160
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSamsungRotation:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->hasSemContext()Z

    move-result p3

    if-eqz p3, :cond_56

    const-string/jumbo p3, "scontext"

    .line 163
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->isSemContextAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    .line 166
    :cond_56
    iget-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    if-eqz p1, :cond_69

    .line 167
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    goto :goto_69

    .line 169
    :cond_5d
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVersion()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_69

    .line 170
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSamsungRotation:Z

    :cond_69
    :goto_69
    const-string/jumbo p1, "ro.build.characteristics"

    const-string/jumbo p2, "phone"

    .line 173
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tablet"

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportTablet:Z

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WindowOrientationListener tablet mode= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportTablet:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowOrientationListener"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    if-eqz p1, :cond_9f

    .line 178
    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 181
    :cond_9f
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_aa

    .line 182
    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    :cond_aa
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    .line 323
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    monitor-exit v0

    return v2

    .line 325
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    monitor-exit v0

    return v2

    :catchall_19
    move-exception p0

    .line 326
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public disable()V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    if-nez v1, :cond_14

    .line 243
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_21

    const-string p0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    .line 244
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v0

    return-void

    .line 248
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v1, :cond_21

    const-string p0, "WindowOrientationListener"

    const-string v1, "Cannot detect SemContext. Invalid disable"

    .line 249
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v0

    return-void

    .line 253
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    .line 255
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    if-eqz v1, :cond_3a

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    goto :goto_41

    .line 260
    :cond_3a
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_41
    const/4 v1, 0x0

    .line 262
    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 264
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    if-eqz v1, :cond_7c

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSemContextManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c7

    .line 377
    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSensorType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    :goto_c7
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz p0, :cond_ce

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 385
    :cond_ce
    monitor-exit v0

    return-void

    :catchall_d0
    move-exception p0

    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_3 .. :try_end_d2} :catchall_d0

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 360
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x10800000001L

    .line 362
    :try_start_c
    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10e00000002L

    .line 363
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 364
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 365
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_20
    move-exception p0

    .line 364
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public enable()V
    .registers 2

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener;->enable(Z)V

    return-void
.end method

.method public enable(Z)V
    .registers 10

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    if-nez v1, :cond_14

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_21

    const-string p0, "WindowOrientationListener"

    const-string p1, "Cannot detect sensors. Not enabled"

    .line 205
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v0

    return-void

    .line 209
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v1, :cond_21

    const-string p0, "WindowOrientationListener"

    const-string p1, "Cannot detect SemContext. Not enabled"

    .line 210
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v0

    return-void

    .line 214
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_27

    .line 215
    monitor-exit v0

    return-void

    :cond_27
    const-string v1, "WindowOrientationListener"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowOrientationListener enabled clearCurrentRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->resetLocked(Z)V

    .line 222
    iget-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSupportSemContext:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_5c

    .line 223
    new-instance p1, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    goto :goto_82

    .line 226
    :cond_5c
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    if-ne p1, v1, :cond_75

    .line 227
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    const v6, 0x186a0

    iget-object v7, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    goto :goto_82

    .line 230
    :cond_75
    iget-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 233
    :goto_82
    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 234
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getProposedRotation()I
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_f

    .line 311
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_f
    const/4 p0, -0x1

    .line 313
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final hasSemContext()Z
    .registers 3

    .line 1592
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string v0, "com.sec.feature.sensorhub"

    .line 1594
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 1598
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " is supporting SemContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrientationListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isRotationResolverEnabled()Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public final isSemContextAvailable()Z
    .registers 2

    .line 1604
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x6

    .line 1607
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p0

    return p0
.end method

.method public abstract onLandscapePreferredChanged(Z)V
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .registers 4

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 278
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz p0, :cond_e

    .line 280
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 282
    :cond_e
    monitor-exit v2

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onTouchStart()V
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz p0, :cond_a

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 272
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setCurrentRotation(I)V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 297
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public shouldStayEnabledWhileDreaming()Z
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    return v1

    .line 400
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-nez v0, :cond_17

    return v2

    .line 404
    :cond_17
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_28

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    return v1
.end method
